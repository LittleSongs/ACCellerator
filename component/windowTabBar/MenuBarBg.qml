import QtQuick 2.5

Rectangle {
    implicitWidth: 150
    implicitHeight: 50
    color: "#EEEEEE" //底色灰色

    Rectangle {//左边颜色
        color: "#CDCDCD" //深灰色
        width: 1
        height: parent.height
        anchors.left: parent.left
    }
    Rectangle {//右边颜色
        color: "#CDCDCD" //深灰色
        width: 1
        height: parent.height
        anchors.right: parent.right
    }

    Rectangle {//底边颜色
        color: "#CDCDCD" //深灰色
        width: parent.width
        height: 1
        anchors.bottom: parent.bottom
    }
}
