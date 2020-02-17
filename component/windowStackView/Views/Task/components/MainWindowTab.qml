/*
    任务界面的四个tab按钮
    汇总，趋势，报警，级联
*/
import QtQuick 2.0

Item {
    id:root
    property alias btnName: name.text
    property alias nameColor: name.color
    property alias btnColor: btn.color
    property int _id: -1
    signal clickBtn

    implicitHeight: 38
    implicitWidth: 90
    Rectangle{
        id:btn
        anchors.fill: parent
        border.color: "#D8D8D8"
        color: (_id === selectTab)
               ? "#9C9C9C" : "#ffffff"
        Text {
            id: name
            text: qsTr("")
            //selectTab表示被选中的id
            color:(_id === selectTab) ? "#ffffff" :"#7D7D7D"
            font.pixelSize: 18

            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                clickBtn()
            }
        }
    }
}
