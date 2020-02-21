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
            Loader{
                id:loader0
                source: (swipeView.currentIndex === 0)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    //当组件加载出来之后，需要从后台获得数据
                    //在CusChartView
                    item.itemName = "转速"
                }
            }
            Loader{
                id:loader1
                source: (swipeView.currentIndex === 1) ? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    //当组件加载出来之后，需要从后台获得数据
                    //在CusChartView
                    item.itemName = "角度"
                }
            }
            Loader{
                id:loader2
                source:  (swipeView.currentIndex === 2)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "O₂"
                }
            }
            Loader{
                id:loader3
                source:  (swipeView.currentIndex === 3)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "CO₂"
                }
            }
            Loader{
                id:loader4
                source:  (swipeView.currentIndex === 4)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "总流速"
                }
            }
            Loader{
                id:loader5
                source:  (swipeView.currentIndex === 5)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "温度"
                }
            }
            Loader{
                id:loader6
                source:  (swipeView.currentIndex === 6)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "加液图"
                }
            }
            Loader{
                id:loader7
                source:  (swipeView.currentIndex === 7)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "细胞密度"
                }
            }
            Loader{
                id:loader8
                source:  (swipeView.currentIndex === 8)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "活率"
                }
            }
            Loader{
                id:loader9
                source:  (swipeView.currentIndex === 9)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "PH"
                }
            }
            Loader{
                id:loader10
                source:  (swipeView.currentIndex === 10)? "./components/SwipeItem.qml" : ""
                onLoaded: {
                    item.itemName = "DO"
                }
            }
        }
    }
}
