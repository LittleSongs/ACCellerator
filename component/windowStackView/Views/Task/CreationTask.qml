/*
新建任务主界面
*/

import QtQuick 2.0
import QtQuick.Controls 2.2
import "../../../singleton"
import "../public"
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
            readonly:true

            anchors.left: parent.left
            anchors.leftMargin: 170
            anchors.top: parent.top
            anchors.topMargin: 110
        }

        ViewsInput{
            id:bagId
            name:"培养袋ID"
            _placeholderText:"请输入培养袋ID"
            readonly: false

            anchors.left: parent.left
            anchors.leftMargin: 170
            anchors.top: parent.top
            anchors.topMargin: 170
        }

        ViewsInput{
            id:personName
            name:"操作人员"
            _placeholderText:"Admin0106_001"
            readonly: true

            anchors.left: parent.left
            anchors.leftMargin: 170
            anchors.top: parent.top
            anchors.topMargin: 290
        }

        ViewsInput{
            id:personJurisdiction
            name:"人员权限"
            _placeholderText:"超级管理员"
            readonly: true

            anchors.left: parent.left
            anchors.leftMargin: 170
            anchors.top: parent.top
            anchors.topMargin: 350
        }

    }
}
