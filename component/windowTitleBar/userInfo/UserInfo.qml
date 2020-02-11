/*
用户信息组件
*/
import QtQuick 2.0
import "./image"
import "../../singleton"
import "./userMethod.js" as Method
Item {
    id:root
    implicitHeight: 40

    Image {
        id:userImg

        anchors.verticalCenter: parent.verticalCenter

        source: "./image/user_icon@2x.png"
    }

    Text {
        id: username
        anchors.left: userImg.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter

        text: Method.getUserName()
        font.pointSize: 13
        font.family: FontObj.reguler
        color: "#ECECEC"
    }

    Text {
        id: userType
        anchors.left: username.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter

        text: Method.getUserLevel()
        font.pointSize: 13
        font.family: FontObj.reguler
        color:"#eec009"
    }
}
