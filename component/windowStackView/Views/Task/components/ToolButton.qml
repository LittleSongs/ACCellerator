/*
任务详情界面的左边功能按键
*/
import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.13
Item {
    id:root
    property alias _text:txt.text
    property alias _textColor: txt.color
    property string _pressedColor: "#8EC6E3"
    property alias _imageSrc: img.source
    property int _pressed: 0

    signal clickBtn

    implicitHeight: 78
    implicitWidth: 78


    Rectangle{
        id:btn

        width: parent.width
        height: parent.height
        color: _pressed
               ? _pressedColor : "#ffffff"
        radius: 4

        MouseArea{
            anchors.fill: parent
            onPressed: {
                _pressed = 1
            }
            onReleased: {
                _pressed = 0
            }
            onClicked: {
                console.log("点击")
                clickBtn()
            }
        }

        Image {
            id:img
            source: ""
            width: 32
            height: 32
            anchors.top: parent.top
            anchors.topMargin: 14
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            id:txt
            text: _text
            font.pixelSize: 14
            color: "#6f6f6f"
            anchors.top: img.bottom
            anchors.horizontalCenter: parent.horizontalCenter

        }
    }

    DropShadow {
        anchors.fill: btn
        horizontalOffset: 0
        verticalOffset: 2
        radius: 4
        samples: 4
        color: "#80000000"
        source: btn
    }
}
