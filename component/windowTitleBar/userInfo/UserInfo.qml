/*
用户信息组件
*/
import QtQuick 2.0
import "./image"
Item {
    id:root
    property string _userName: "Admin0106_001"
    property string _fontColor: "#ECECEC"
    property int _fontSize: 14

    property string _userType: "(超级管理员)"
    Image {
        id:userImg
        source: "./image/user_icon@2x.png"
    }

    Text {
        id: username
        anchors.left: userImg.right
        anchors.leftMargin: 10

        text: _userName
        font.pixelSize: _fontSize
        color: _fontColor
    }

    Text {
        id: userType
        anchors.left: username.right
        anchors.leftMargin: 10

        text: _userType
        font.pixelSize: _fontSize
        color:"#eec009"
    }
}
