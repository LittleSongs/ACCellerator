import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12
import QtQuick.Controls.impl 2.12
import "../../../singleton"

//qtquickcontrols2\src\imports\controls\ComboBox.qml
//from Customizing ComboBox
T.ComboBox {
    id:control

    onActivated:{
        //给上层组件的_currentIndex赋当前index的值
        _currentIndex = index
    }

    //可以像源码一样，定义一个全局的样式，然后取全局样式中对应的颜色
    //checked选中状态，down按下状态，hovered悬停状态
    property color textColor: "#7C7C7C"          //文字颜色
    property color backgroundTheme: "darkCyan"
    property color backgroundColor: control.down
                                    ? Qt.darker(backgroundTheme)
                                    : control.hovered
                                      ? Qt.lighter(backgroundTheme)
                                      : backgroundTheme
    property color itemHighlightColor: Qt.darker(backgroundTheme)
    property color itemNormalColor: backgroundTheme
    property color indicatorColor: "white"     //勾选框颜色
    property int radius: 0
    property int showCount: 6             //最多显示的item个数
    //property int _globalY: mapToGlobal(control.x,control.y).y
    //property int _globalHeight: Screen.desktopAvailableHeight

    implicitWidth: 280
    implicitHeight: 30
    spacing: 5
    leftPadding: padding
    rightPadding: padding + indicator.width + spacing
    font{
        family: FontObj.reguler
        pixelSize: 16
    }

    //各item
    delegate: ItemDelegate {
        implicitWidth: control.implicitWidth
        implicitHeight: control.implicitHeight
        width: control.width
        contentItem: Text {
            text: control.textRole
                  ? (Array.isArray(control.model)
                     ? modelData[control.textRole]
                     : model[control.textRole])
                  : modelData
            color: control.textColor
            font: control.font
            elide: Text.ElideRight
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
        }
        hoverEnabled: control.hoverEnabled
        background: Rectangle{
            //radius: control.radius
            color: (control.highlightedIndex === index)
                   ? control.itemHighlightColor
                   : control.itemNormalColor
            Rectangle{
                height: 1
                width: parent.width
                anchors.bottom: parent.bottom
                color: Qt.lighter(itemNormalColor)
            }
        }
    }

    //图标自己画比较麻烦，还是贴图方便
    indicator:Image {
        width: 15
        height: 15
        source: "./image/dropDown.svg"
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.verticalCenter: parent.verticalCenter
    }

    //box显示item
    contentItem: T.TextField{
        leftPadding: 10
        rightPadding: 6
        text: control.editable ? control.editText : control.displayText
        font: control.font
        color: control.textColor
        verticalAlignment: Text.AlignVCenter
        //默认鼠标选取文本设置为false
        selectByMouse: true
        //选中文本的颜色
        selectedTextColor: "#7C7C7C"
        //选中文本背景色
        selectionColor: "black"
        clip: true
        renderType: Text.NativeRendering
        enabled: control.editable
        autoScroll: control.editable
        readOnly: control.down
        inputMethodHints: control.inputMethodHints
        validator: control.validator

        background: Rectangle {
            visible: control.enabled && control.editable
            border.color: "#C3C3C3"
            border.width: 1
            color: "transparent"
        }
    }

    //box框背景
    background: Rectangle {
        implicitWidth: control.implicitWidth
        implicitHeight: control.implicitHeight
        radius: control.radius
        color: control.backgroundColor
        border.color: "#C3C3C3"
        border.width: 1
    }

    //弹出框
    popup: T.Popup {
        //默认向下弹出，如果距离不够，y会自动调整（）
        y: control.height
        width: control.width
        //根据showCount来设置最多显示item个数
        implicitHeight: (control.delegateModel.count<showCount
                         ?contentItem.implicitHeight
                         :showCount*control.implicitHeight)+2
        padding: 1

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex
            snapMode: ListView.SnapToItem //按行滚动
            //ScrollBar.horizontal: ScrollBar { visible: false }
            ScrollBar.vertical: ScrollBar { //定制滚动条
                id: box_bar
                implicitWidth: 10
                visible: (control.delegateModel.count>showCount)
                //background: Rectangle{} //这是整体的背景
                contentItem: Rectangle{
                    implicitWidth:10
                    radius: width/2
                    color: box_bar.pressed
                           ? Qt.rgba(0.6,0.6,0.6)
                           : Qt.rgba(0.6,0.6,0.6,0.5)
                }
            }
        }

        //弹出框背景（只有border显示出来了，其余部分被delegate背景遮挡）
        background: Rectangle {
            border.width: 1
            border.color: "#C3C3C3"
            //color: Qt.lighter(themeColor)
            radius: control.radius
        }
    }
}
