import QtQuick 2.0

Item {
    property var pageId: "校准"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "Calibration";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }
    }
}
