/*
按钮组件
*/

import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../../../singleton"
Item {
    id:root
    property string _text:""
    property string _color: "#009CD0"

    signal clickSignal()
    Button{
        implicitHeight: 36
        implicitWidth: 120
        style:ButtonStyle{
            background: Rectangle{
                width: parent.width
                height: parent.height
                color: control.pressed
                       ? Qt.darker(_color,1.5) : _color
                border.color: "#BBBBBB"
                radius: 2
            }
            label: Text{
                text: _text

                font.pointSize: 15
                color: "#ffffff"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

            }
        }

        onClicked: {
            clickSignal()
        }

    }
}
