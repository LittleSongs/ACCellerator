import QtQuick 2.0
import "../../../singleton"
Item {
    property var pageId: "新建任务"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "CreationTask";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    TabBarSelect.selectItem = "新建任务-参数界面"
                }
            }
        }
    }
}
