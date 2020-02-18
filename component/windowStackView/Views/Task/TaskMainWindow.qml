/*
任务界面主窗口
*/
import QtQuick 2.0
import "./components"
import "../../../singleton"
Item {
    id:root
    //每个数组代表唯一按钮
    //0 汇总  1 趋势 2 报警 3 级联
    property int selectTab: 0
    onSelectTabChanged: {
        console.log("selectTab 改变="+selectTab)
        switch(selectTab){
        case 0:
            tabLoader.source = "./SummaryTable.qml"
            break
        case 1:
            tabLoader.source = "./TrendTable.qml"
            break
//        case 2:
//            tabLoader.source = "./SummaryTable.qml"
//            break
//        case 3:
//            tabLoader.source = "./SummaryTable.qml"
//            break
         default:
             console.log("目前没有这个选项")
             break
        }
    }

    Text {
        id: taskName
        text: qsTr("任务名称:  "+NowTaskInfo.taskName)
        font.pixelSize: 15
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
    }

    Text {
        id: taskNumber
        text: qsTr("任务编号:  "+NowTaskInfo.taskNumber)
        font.pixelSize: 15
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: taskName.right
        anchors.leftMargin: 20
    }

    Text {
        id: bagId
        text: qsTr("培养袋ID:  "+NowTaskInfo.bagId)
        font.pixelSize: 15
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: taskNumber.right
        anchors.leftMargin: 20
    }

    //主界面Loader
    //点击汇总，趋势，报警，级联等按钮时，这个Loader就会改变
    Loader{
        id:tabLoader
        source: "./SummaryTable.qml"

        anchors.top: parent.top
        anchors.topMargin: 45
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: summary.top
        anchors.bottomMargin: 1
    }





    MainWindowTab{
        id:summary
        btnName:"汇总"
        _id:0

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 10
        onClickBtn: {
            selectTab = _id
        }
    }

    MainWindowTab{
        id:trend
        btnName:"趋势"
        _id:1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        anchors.left: summary.right
        anchors.leftMargin: 2
        onClickBtn: {
            selectTab = _id
        }
    }

    MainWindowTab{
        id:alarm
        btnName:"报警"
        _id:2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        anchors.left: trend.right
        anchors.leftMargin: 2
        onClickBtn: {
            selectTab = _id
        }
    }

    MainWindowTab{
        id:cascade
        btnName:"级联"
        _id:3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        anchors.left: alarm.right
        anchors.leftMargin: 2
        onClickBtn: {
            selectTab = _id
        }
    }

    Text{
        id:taskStartTime
        text:"任务开始时间: 2020-03-22 22:22"
        color: "#7D7D7D"
        font.pixelSize: 16

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 17
        anchors.right: parent.right
        anchors.rightMargin: 50
    }
}
