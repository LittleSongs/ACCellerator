import QtQuick 2.0
import "../public"
Item {
    property var pageId: "参数设置 -- 参数设定"
    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            titleName:pageId
        }
        Text {
            text: "ParameterSetting";
            font.pointSize: 14;
            font.bold: true;
            color: "blue";
            anchors.centerIn: parent;
        }
    }
}
