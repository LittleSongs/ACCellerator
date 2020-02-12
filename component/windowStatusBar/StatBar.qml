/*
窗口底部状态栏
*/
import QtQuick 2.0
import "./runningTab"
import "./infoTab"
import "./timeTab"
Item {
    id:root
    implicitWidth: parent.width
    implicitHeight: 40

    Component.onCompleted: {
        console.log(root.width)
    }

    Rectangle{ //背景

        anchors.fill: parent
        color: "#F2F2F2"

        Rectangle{ //上边框
            anchors.top: parent.top
            height: 1
            width: parent.width
            color: "#C0C0C0"
        }

        RunningTab{
            id:runningTab
            anchors.left: parent.left
            _statusText:"设备运行状态"
        }

        InfoTab{
            id:infoTab
            anchors.left: runningTab.right
            _infoText:"版本号: 20200106 - 1 V1.0"
        }

        TimeTab{
            id:timeTab
            anchors.left: infoTab.right
        }
    }
}
