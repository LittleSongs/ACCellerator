/*
设备运行状态
*/
import QtQuick 2.0
import "../../singleton"
import "./runningMethod.js" as Method
Item {
    id:root
    implicitHeight: parent.height
    implicitWidth: parent.width*0.20

    property alias _statusText: machineStatus.text

    //设备运行指示灯
    Image {
        id: runningStatusImg

        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter

        source:Method.getRunningStatus() ?
                   "./image/run@2x.png" :
                   "./image/stop@2x.png"
    }
    //设备运行文字
    Text {
        id: machineStatus

        anchors.left: runningStatusImg.right
        anchors.leftMargin: 4
        anchors.verticalCenter: parent.verticalCenter

        text:"设备运行状态"
        font.pointSize: 13
        

    }


    Rectangle{//右边框线
        anchors.right: parent.right

        width: 1
        height: parent.height
        color: "#D9D9D9"
    }
}
