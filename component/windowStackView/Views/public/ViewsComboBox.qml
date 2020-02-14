/*
下拉框
*/

import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../../../singleton"
Item {
    id:root

    property alias name: comboBoxName.text
    property alias comboBoxModel: comboBox.model
    property int _currentIndex: 0

    Text {
        id: comboBoxName
        text: qsTr("")
        color: "#7D7D7D"
        font.pointSize: 14
        font.family: FontObj.reguler
    }

    BasicComboBox{
        id:comboBox

        model: []
        textColor: "#7C7C7C"
        radius: 2
        indicatorColor: "red"
        backgroundTheme: "transparent"
        itemNormalColor: "transparent"
        itemHighlightColor: "#D9D9D9"

        anchors.left: comboBoxName.right
        anchors.leftMargin: 30
        anchors.top: comboBoxName.top
    }

}
