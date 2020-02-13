import QtQuick 2.0

Item {
    property var pageId: "系统设置"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "SystemSetting";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }

    }
}
