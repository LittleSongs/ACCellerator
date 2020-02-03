import QtQuick 2.12
import QtQuick.Window 2.12
import "./component/windowTitleBar"
Window {
    visible: true
    width: 1024
    height: 768
    //    flags:Qt.Popup
    //    flags:Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint
    TitleBar{
        anchors.top: parent.top
    }
}
