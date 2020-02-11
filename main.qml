import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import "./component/windowTitleBar"
import "./component/windowStatusBar"
import "./component/windowTabBar"
import "./component/singleton"
import "./component/windowTabBar"

import "./component/singleton/JS/pageManager.js" as Method
Window {
    visible: true
    width: 1024
    height: 768
    //    flags:Qt.Popup
    //    flags:Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint


    Button{
        width: 50
        height: width
        z:10000
        onClicked: {
            Method.set()
        }
    }

    /**********************************************/
    //标题栏
    TitleBar{
        id:titleBar
        anchors.top: parent.top
    }

    /**********************************************/
    //标签栏
    TabBar{
        anchors.top:titleBar.bottom
    }

    /**********************************************/
    //状态栏
    StatusBar{
        id:statusBar
        anchors.bottom: parent.bottom
    }




}
