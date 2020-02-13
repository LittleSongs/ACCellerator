import QtQuick 2.0
import "../public"

Item {
    property var pageId: "历史任务"
    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            titleName:pageId
        }
        Text {
            text: "HistoryTask";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }

    }
}
