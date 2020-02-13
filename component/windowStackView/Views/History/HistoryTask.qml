import QtQuick 2.0

Item {
    property var pageId: "历史任务"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "HistoryTask";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }

    }
}
