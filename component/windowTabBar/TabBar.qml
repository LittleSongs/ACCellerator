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
    MenuBar {
        width: parent.width
        Menu {
            title: qsTr("新建任务")
            background: MenuBarBg{
                width: 0
                height: 0
            }
        }

        Menu {
            title: qsTr("历史任务")
            background: MenuBarBg{
                width: 0
                height: 0
            }
        }

        Menu {
            title: qsTr("参数设置")
            Action {
                text: qsTr("参数设定")

            }
            Action {
                text: qsTr("校准")
            }
            delegate: MyMenuItem{}  //注意这里的delegate不能为某个Component
            background: MenuBarBg{}
        }

        Menu {
            title: qsTr("系统设置")
            background: MenuBarBg{
                width: 0
                height: 0
            }
        }

        delegate: MyMenuBar{}
        background: MenuBarBg {}
    }
}
