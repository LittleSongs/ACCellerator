import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.impl 2.0
import "./components"
Item {
    id:root
    Rectangle{
        anchors.fill: parent
        border.color: "#E5E5E5"

        TabBar {
            id: headertabBar;
            height: 40
            anchors.top: parent.top
            anchors.topMargin: 1
            anchors.left: parent.left
            anchors.leftMargin: 1
            anchors.right: parent.right
            anchors.rightMargin: 1
            currentIndex:swipeView.currentIndex
            CustonTabButton{
                text:"转速"
            }
            CustonTabButton{
                text:"角度"
            }
            CustonTabButton{
                text:"O₂"
            }
            CustonTabButton{
                text:"CO₂"
            }
            CustonTabButton{
                text:"总流速"
            }
            CustonTabButton{
                text:"温度"
            }
            CustonTabButton{
                text:"加液图"
            }
            CustonTabButton{
                text:"细胞密度"
            }
            CustonTabButton{
                text:"活率"
            }
            CustonTabButton{
                text:"PH"
            }
            CustonTabButton{
                text:"DO"
            }
        }

        SwipeView {
            id: swipeView
            width: parent.width
            anchors.top: headertabBar.bottom
            anchors.bottom: parent.bottom
            currentIndex: headertabBar.currentIndex
            clip:true
            SwipeItem{
                txt:"0"
            }
            SwipeItem{
                txt:"1"
            }
            SwipeItem{
                txt:"2"
            }
            SwipeItem{
                txt:"3"
            }
            SwipeItem{
                txt:"4"
            }
            SwipeItem{
                txt:"5"
            }
            SwipeItem{
                txt:"6"
            }
            SwipeItem{
                txt:"7"
            }
            SwipeItem{
                txt:"8"
            }
            SwipeItem{
                txt:"9"
            }
            SwipeItem{
                txt:"10"
            }
        }
    }
}
