import QtQuick 2.0
import "../../singleton"
/*
标题文字组件
*/
Item {
    id:root
    property alias _fontColor: text.color
    property alias _fontSize: text.font.pointSize
    property alias _sloganText: text.text
    Text {
        id: text
        anchors.verticalCenter: parent.verticalCenter

        text: "欢迎使用acCELLerator"
        font.pointSize: 13
        font.family: FontObj.reguler
        color: "#000000"
    }
}
