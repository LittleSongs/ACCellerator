import QtQuick 2.0

Item {
    property var pageId: "参数设定"
    Rectangle{
        anchors.fill: parent
        Text {
            text: "ParameterSetting";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }
    }
}
