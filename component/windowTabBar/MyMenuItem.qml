import QtQuick 2.5
import QtQuick.Controls 2.5
import "../singleton"
import "./TabBarMethod.js" as Method
MenuItem {
    id: menuItem
    implicitWidth: 30
    implicitHeight: 40
    font: Qt.font({
                      pointSize: 13,
                  })

    onTriggered: {
        TabBarSelect.selectItem = menuItem.text
    }
    Image {
        id:icon
        anchors.right: text.left
        anchors.rightMargin: 5
        //当标签被选中时，改变图片
        source: Method.getIcon(menuItem.text)
                +(menuItem.highlighted ? "" : "")
                +".png"
        height: 20
        width: 20
        anchors.verticalCenter: parent.verticalCenter
    }

    contentItem: Text {
        id:text
        //leftPadding: menuItem.indicator.width
        //rightPadding: menuItem.arrow.width
        text: menuItem.text
        font: menuItem.font
        opacity: enabled ? 1.0 : 0.3
        color: "#656565"
        anchors.left: parent.left
        anchors.leftMargin: 45
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 30
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        color: menuItem.highlighted ? "#C6D5D9" : "transparent"

        //上边的横线
        Rectangle {
            color: "#808080"
            height: 1
            width: parent.width
            anchors.top: parent.top
            opacity: 0.5
        }
    }
}
