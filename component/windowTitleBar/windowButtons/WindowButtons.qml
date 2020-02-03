/*
最小化最大化退出按钮
*/
import QtQuick 2.0
import "./image"

Item {
    id:root
    implicitHeight: 30
    implicitWidth: 30
    property string _buttonColor: "#24A8F2"
    property string _buttonColorActive: "#0072AD"
    property bool _pressed: false //按钮是否被按下的状态表示
//    signal clicked()
    Rectangle{
        anchors.fill: parent
        color:_pressed ? _buttonColorActive :_buttonColor
        MouseArea{
            anchors.fill: parent
            onPressed: {
                _pressed = true
            }
            onReleased: {
                _pressed = false
            }
            onClicked: {
//                root.clicked() //发送关闭信号
                Qt.quit()
            }
        }

        Image {
            id: name
            anchors.centerIn: parent
            source: "./image/close@2x.png"
        }

    }
}
