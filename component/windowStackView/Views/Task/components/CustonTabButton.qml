import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.impl 2.0

TabButton {
    id:root
    background: Rectangle{
        color: "#ffffff"
        Rectangle{
            visible: (parent.parent.checked||parent.parent.hovered) ? true : false
            width: 30
            height: 3
            color: "#0072AD"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
        }
    }
    contentItem: Text {
        text: root.text
        font.pixelSize: 16
        color: (parent.checked||parent.hovered) ? "#0072AD" : "#9F9F9F"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        renderType: Text.NativeRendering
        elide: Text.ElideRight
    }
}

