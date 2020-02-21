/*
软件信息
*/

import QtQuick 2.0
import "../../singleton"
Item {
    id:root
    implicitHeight: parent.height
    implicitWidth: parent.width*0.55
    property alias _infoText: infoText.text

    //设备信息文本
    Text {
        id: infoText

        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.verticalCenter: parent.verticalCenter

        text:"版本号: "
        font.pointSize: 13
        
    }

    Rectangle{//右边框线
        anchors.right: parent.right

        width: 1
        height: parent.height
        color: "#D9D9D9"
    }
}
