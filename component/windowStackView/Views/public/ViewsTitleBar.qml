/*
所有的界面的标题栏
*/

import QtQuick 2.0
import "../../../singleton"
import "./image"
Item {
    id:root
    implicitWidth: parent.width
    implicitHeight: 34

    property alias titleName: titleName.text
    property alias showBackIcon:backText.visible

    Rectangle{
        anchors.fill:parent
        color:"#F7F7F7"
        border.color:"#E7E7E7"

        //标题栏
        Text {
            id: titleName
            text: ""
            color: "#7D7D7D"
            font.pointSize: 13
            font.family:FontObj.reguler
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 15
        }

        //后退按钮
        Text {
            id: backText
            visible: false
            text: qsTr("返回")
            color: "#7D7D7D"
            font.pointSize: 13
            font.family:FontObj.reguler
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 35
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    stack.pop()
                    console.log("stack.depth="+stack.depth)
                }
            }
        }

        Image{
            id:backIcon
            visible: backText.visible
            source: "./image/backIcon.png"
            width: 20
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: backText.right
            anchors.leftMargin: 0

        }
    }


}
