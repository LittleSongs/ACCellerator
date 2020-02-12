import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import "./component/windowTitleBar"
import "./component/windowStatusBar"
import "./component/windowTabBar"
import "./component/singleton"
import "./component/windowTabBar"
import "./component/windowStackView"

import "./component/singleton/JS/pageManager.js" as Method
Window {
    visible: true
    width: 1024
    height: 768
    //    flags:Qt.Popup
    //    flags:Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint


    /**********************************************/
    //标题栏
    TitleBar{
        id:titleBar
        anchors.top: parent.top
    }

    /**********************************************/
    //标签栏
    TabBar{
        id:_tabBar
        anchors.top:titleBar.bottom
    }

    /**********************************************/
    //主界面
    StackViewLoader {
        anchors.top: _tabBar.bottom
        anchors.topMargin: 4
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.bottom: _statBar.top
        anchors.bottomMargin: 4
    }


    /**********************************************/
    //状态栏
    StatBar{
        id:_statBar
        anchors.bottom: parent.bottom
    }
}
