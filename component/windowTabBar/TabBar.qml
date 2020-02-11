/*
    标签栏
*/
import QtQuick 2.0
import QtQuick.Controls 2.5
import "./"
Item {
    id:root
    implicitWidth: parent.width
    implicitHeight: 50
    property int _empty: 1
    MenuBar {
        width: parent.width
        Menu {
            title: qsTr("新建任务")
            //            background: _empty ? MenuItemEmpty{} :  MenuBarBg{}
            background: MenuItemEmpty{}
        }

        Menu {
            title: qsTr("历史任务")
            background: MenuItemEmpty{}
        }

        Menu {
            id:qwer
            title: qsTr("参数设置")
            Action {
                text: qsTr("参数设定")

//                onTriggered:{
//                    console.log("参数设定")
//                }

            }
            Action {
                text: qsTr("校准")
//                onTriggered:{
//                    console.log("校准")
//                }
            }

            delegate: MenuItem1{}  //注意这里的delegate不能为某个Component
            background: MenuBarBg{}
        }

        Menu {
            title: qsTr("系统设置")
            background: MenuItemEmpty{}
        }

        delegate: MenuBar1{}
        background: MenuBarBg {}
    }
}
