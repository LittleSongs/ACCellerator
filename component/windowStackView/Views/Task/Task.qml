import QtQuick 2.0

Item {
    property var pageId: "新建任务-参数界面"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "CreationTask-Task";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }
    }
}
