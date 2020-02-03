/*
顶部标题栏组件
*/

import QtQuick 2.13
import "./trademark"
import "./sloganText"
import "./userInfo"
import "./windowButtons"


Item {
    id:root
    implicitWidth:parent.width
    implicitHeight: 80
    Rectangle{
        anchors.fill: parent
        color: "#8e7cc3"
    }
    //背景
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            orientation:Gradient.Horizontal  //横向展示
            GradientStop {
                color: "#3BBAFC"
                position: 0
            }
            GradientStop {
                color: "#008BE3"
                position: 1
            }
        }

        /**********************************************/
        //商标
        Trademark{
            id:trademark
            anchors.left: parent.left
        }

        /**********************************************/
        //标题文字
        SloganText{
            id:sloganText
            anchors.left: trademark.right
            anchors.leftMargin: 23
            height: parent.height

            _sloganText: "欢迎使用acCELLerator"
            _fontColor: "#B4E5FF"
            _fontSize: 30
        }

        /**********************************************/
        //用户信息
        UserInfo{
            id:userInfo
            anchors.left: parent.left
            anchors.leftMargin: 741
            anchors.top: parent.top
            anchors.topMargin: 13
        }

        /**********************************************/
        //关闭按钮
        WindowButtons{
            anchors.right: parent.right
            anchors.top: parent.top
            _buttonColor: "#24A8F2"
            _buttonColorActive: "#0072AD"
        }
    }

}
