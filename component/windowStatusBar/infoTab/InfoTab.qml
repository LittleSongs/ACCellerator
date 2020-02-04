/*
软件信息
*/

import QtQuick 2.0

Item {
    id:root
    implicitHeight: parent.height
    implicitWidth: parent.width*0.61

    property string _infoText: ""
    Component.onCompleted: {
        console.log(_infoText)
    }

    Text {
        id: infoText

        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.verticalCenter: parent.verticalCenter

        text:"版本号: "+_infoText

    }

    Rectangle{//右边框线
        anchors.right: parent.right

        width: 1
        height: parent.height
        color: "#D9D9D9"
    }
}
