import QtQuick 2.0
import QtQuick.Controls 1.4
import "../singleton"
import "./Views/History"
import "./Views/ParameterSetting"
import "./Views/SystemSetting"
import "./Views/Task"
import "../singleton/JS/pageManager.js" as PageManagerMethod

Item {
    property alias stack: stack //StackView引用
    Connections{
        target: TabBarSelect
        onSelectTabChanged:{
            console.log("tab changed: "+tabName)
            //处理stackview的栈
            PageManagerMethod.controlStack(stack,tabName,components)
            console.log("stack.depth="+stack.depth)
        }
    }
    //界面代码
    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"
        //主窗口界面stackview
        StackView{
            id: stack
            anchors.fill: parent
            Component.onCompleted: {
                stack.push(creationTask)
            }
        }
    }

    /*******************************************/
    //界面列表

    //新建任务，主页
    Component{
        id:creationTask
        CreationTask{}
    }

    //历史任务，主页
    Component{
        id:historyTask
        HistoryTask{}
    }

    //参数设定
    Component{
        id:parameterSetting
        ParameterSetting{}
    }

    //校准
    Component{
        id:calibration
        Calibration{}
    }

    //系统设置，主页
    Component{
        id:systemSetting
        SystemSetting{}
    }

    //新建任务-参数界面
    Component{
        id:task
        Task {}
    }

    //界面列表
    property var components: {
        "新建任务":creationTask,
        "历史任务":historyTask,
        "参数设定":parameterSetting,
        "校准":calibration,
        "系统设置":systemSetting,
        "新建任务-参数界面":task
    }
}
