import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import "../../../singleton"
Item {
    id:root

    property alias name: inputName.text
    property alias value: inputValue.text
    property alias _placeholderText: inputValue.placeholderText
    property alias readonly: inputValue.readOnly

    Text {
        id: inputName
        text: qsTr("")
        color: "#7D7D7D"
        font.pointSize: 14
        
    }

    TextField {
        id:inputValue
        style: TextFieldStyle {
            textColor: "#7D7D7D"
            font.pointSize:13
            background: Rectangle {
                radius: 2
                implicitWidth: 280
                implicitHeight: 30
                border.color: "#C3C3C3"
                border.width: 1
            }
        }
        placeholderText: "请输入"
        readOnly: false
        anchors.left: inputName.right
        anchors.leftMargin: 30
        anchors.top: inputName.top
    }
}
