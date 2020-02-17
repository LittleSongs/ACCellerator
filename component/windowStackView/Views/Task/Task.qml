/*
任务详细界面
*/

import QtQuick 2.0
import "../public"
import "./components"
import "./JS/TaskMethod.js" as Method

Item {
    property var pageId: "新建任务 -- 参数界面"
    property int status: 0//当前机器的状态
    onStatusChanged: {
        Method.changeStatus(status,begin,stop)
    }

    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            id:titleBar
            titleName:pageId
            showBackIcon: true//是否在标题栏展示返回按钮
        }

        //左边工具栏
        Rectangle{
            id:toolBar
            anchors.top: titleBar.bottom
            anchors.topMargin: 1
            anchors.left: parent.left
            anchors.leftMargin: 2
            anchors.bottom:parent.bottom
            anchors.bottomMargin: 2

            width: 88
            color: "#eeeeee"

            ToolButton{
                id:dataExport
                anchors.top: parent.top
                anchors.topMargin: 7
                anchors.horizontalCenter: parent.horizontalCenter
                _text:"数据导出"
                _imageSrc:"./components/images/ecport.png"
            }

            ToolButton{
                id:taskEdit
                anchors.top: parent.top
                anchors.topMargin: 94
                anchors.horizontalCenter: parent.horizontalCenter
                _text:"任务修改"
                _imageSrc:"./components/images/taskManager.png"
            }

            ToolButton{
                id:propertyEdit
                anchors.top: parent.top
                anchors.topMargin: 182
                anchors.horizontalCenter: parent.horizontalCenter
                _text:"参数修改"
                _imageSrc:"./components/images/edit.png"
            }

            ToolButton{
                id:begin
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 93
                anchors.horizontalCenter: parent.horizontalCenter
                _text:"开 始"
                _imageSrc:"./components/images/begin.png"
                _textColor:"#d81e06"
                onClickBtn: {
                    //改变运行状态
                    if(status === 0){
                        status = 1
                    }else if(status === 1){
                        status = 2
                    }else if(status === 2){
                        status = 1
                    }
                }
            }

            ToolButton{
                id:stop
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.horizontalCenter: parent.horizontalCenter
                _text:"结束任务"
                _imageSrc:"./components/images/stop.png"
                onClickBtn: {
                    console.log("结束任务")
                    if(status === 1 || status === 2){
                        status = 0
                    }
                }
            }

        }

        //右边主界面
        TaskMainWindow{
            anchors.top: titleBar.bottom
            anchors.left: toolBar.right
            anchors.bottom: parent.bottom
            anchors.right: parent.right

        }
    }
}
