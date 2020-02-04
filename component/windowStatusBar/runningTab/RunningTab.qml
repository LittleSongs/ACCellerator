/*
设备运行状态
*/
import QtQuick 2.0

Item {
    id:root
    implicitHeight: parent.height
    implicitWidth: parent.width*0.14

    property string _statusText: "设备运行状态"

    //获得当前设备运行状态,返回true或false
    function getRunningStatus(){
        var running=false
        //获取设备运行状态

        return running
    }

    Image {
        id: runningStatusImg

        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter

        source:getRunningStatus() ?
                   "./image/run@2x.png" :"./image/stop@2x.png"
    }

    Text {
        id: name

        anchors.left: runningStatusImg.right
        anchors.leftMargin: 4
        anchors.verticalCenter: parent.verticalCenter

        text:_statusText

    }


    Rectangle{//右边框线
        anchors.right: parent.right

        width: 1
        height: parent.height
        color: "#D9D9D9"
    }
}
