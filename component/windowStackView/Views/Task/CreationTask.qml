/*
新建任务主界面
*/

import QtQuick 2.0
import QtQuick.Controls 2.2
import "../../../singleton"
import "../public"
import "./JS/TaskMethod.js" as Method
Item {
    property var pageId: "新建任务"
    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            titleName:pageId
        }

        ViewsInput{
            id:taskName
            name:"任务名称"
            _placeholderText:"请输入任务名称"
            readonly:false

            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 110
        }

        ViewsInput{
            id:bagId
            name:"培养袋ID"
            _placeholderText:"请输入培养袋ID"
            readonly: false

            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 170
        }

        ViewsComboBox{
            id:parameterSelect
            name:"参数选择"
            comboBoxModel: ["新建","20200214 + 001",
                "20200214 + 002","20200214 + 003",
                "20200214 + 004","20200214 + 005",
                "20200214 + 006","20200214 + 007"]
            _currentIndex:0
            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 230
        }



        ViewsInput{
            id:personName
            name:"操作人员"
            _placeholderText:UserInfo.username
            value:UserInfo.username
            readonly: true

            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 290
        }

        ViewsInput{
            id:personJurisdiction
            name:"人员权限"
            _placeholderText:UserInfo.userJurisdiction
            value:UserInfo.userJurisdiction
            readonly: true

            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 350
        }

        CustonButton{
            _text:"完成"
            _color: "#009CD0"
            anchors.left:parent.left
            anchors.leftMargin: 567
            anchors.top: parent.top
            anchors.topMargin: 425
            onClickSignal:{
                Method.getInfo(taskName,bagId,parameterSelect,
                               personName,personJurisdiction)
                //保存任务信息到单例
                Method.saveTask(NowTaskInfo,taskName,bagId,parameterSelect,
                                personName,personJurisdiction)
                //跳转到任务详情界面
                TabBarSelect.selectItem = "新建任务 -- 参数界面"
            }
        }
    }
}
