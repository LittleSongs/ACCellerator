/*
任务详细界面
*/

import QtQuick 2.0
import "../public"

Item {
    property var pageId: "新建任务 -- 参数界面"
    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            titleName:pageId
            showBackIcon: true
        }

        Text {
            text: "CreationTask-Task";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }
    }
}
