import QtQuick 2.0
/*
标题文字组件
*/
Item {
    id:root
    property string _fontColor: "#ffffff"
    property int _fontSize: 30
    property string _sloganText: "欢迎使用acCELLerator"
    Text {
        id: name
        anchors.verticalCenter: parent.verticalCenter

        text: _sloganText
        font.pixelSize: _fontSize
        color: _fontColor
    }
}
