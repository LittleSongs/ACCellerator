/*
商标组件
*/

import QtQuick 2.0
import "./image"

Item {
    id:root
    implicitWidth: 200
    implicitHeight: 79
    Component.onCompleted: {
//        console.log("1222111")
    }

    Rectangle{
        anchors.fill: parent
        color: "#008BE3"
        Image {
            anchors.centerIn: parent
            source: "./image/logo@2x.png"
        }
    }


}
