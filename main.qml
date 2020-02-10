import QtQuick 2.12
import QtQuick.Window 2.12
import "./component/windowTitleBar"
import "./component/windowStatusBar"
import "./component/singleton"
Window {
    visible: true
    width: 1024
    height: 768
    //    flags:Qt.Popup
    //    flags:Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint

    /**********************************************/
    //标题栏
    TitleBar{
        anchors.top: parent.top
    }

    /**********************************************/
    //状态栏
    StatusBar{
        anchors.bottom: parent.bottom
    }

}
