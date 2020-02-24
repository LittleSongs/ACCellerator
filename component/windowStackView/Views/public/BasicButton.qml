import QtQuick 2.0
import QtQuick.Controls 1.4
Item {
    id:root
    implicitHeight: 36
    implicitWidth: 120
    property int _pressed: 0

    property string _text:""
    property string _color: "#F9F9F9"

    signal clickSignal()

    Rectangle{
        id:btn
        anchors.fill: parent
        color: _pressed ? Qt.darker(_color,1.5) : _color
        border.color: "#BBBBBB"
        radius: 1

        Text {
            id: name
            text: _text
            font.pixelSize: 18
            color: "#323232"
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onPressed:{
                _pressed = 1
            }
            onReleased: {
                _pressed = 0
            }
            onClicked: {
                clickSignal()
            }
        }
    }
}
