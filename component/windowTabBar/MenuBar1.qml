import QtQuick 2.5
import QtQuick.Controls 2.5
import "../singleton"
import "./TabBarMethod.js" as Method
MenuBarItem {
    id: menuBarItem
    height: 50
    width: 140

    font: Qt.font({
                      family:FontObj.reguler,
                      pointSize: 13,
                  })

    onTriggered: {
        console.log("menuBarItem.text="+menuBarItem.text)
        TabBarSelect.selectItem = menuBarItem.text
    }

    Image {
        id:icon
        anchors.right: text.left
        anchors.rightMargin: 5
        //当标签被选中时，改变图片
        source: Method.getIcon(menuBarItem.text)
                +((TabBarSelect.selectItem === menuBarItem.text)
                  ? "Active"
                  :(menuBarItem.highlighted ? "Active" : ""))
                +".png"
        height: 20
        width: 20
        anchors.verticalCenter: parent.verticalCenter
    }

    contentItem: Text {
        id:text
        text: menuBarItem.text
        font: menuBarItem.font
        opacity: enabled ? 1.0 : 0.3
        color:  (TabBarSelect.selectItem === menuBarItem.text)
                ? "#DCF4FF"
                : (menuBarItem.highlighted
                   ? "#DCF4FF" : "#656565")
        anchors.left: parent.left
        anchors.leftMargin: 45
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 40
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        color:(TabBarSelect.selectItem === menuBarItem.text)
              ? "#0072AD"
              : (menuBarItem.highlighted
                 ? "#0072AD" : "transparent")

        //右边竖线图片
        Image {
            id: split
            source: "./image/splite.png"
            anchors.right: parent.right
            height: parent.height
        }

    }
}


