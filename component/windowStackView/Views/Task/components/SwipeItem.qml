import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.impl 2.0
Rectangle{
    id:root
    property string txt: "0"
    border.color: "#E5E5E5"
    Label {
        text: txt
        anchors.centerIn: parent
        font.pixelSize: 30
        font.italic: true
        color:"red"
    }
}
