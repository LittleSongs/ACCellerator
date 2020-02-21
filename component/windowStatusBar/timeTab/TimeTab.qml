/*
    时间
*/
import QtQuick 2.0
import "../../singleton"
import "./timeMethod.js" as TimeMethod
Item {
    id:root
    implicitHeight: parent.height
    implicitWidth: parent.width*0.25

    Timer { //获取时间的定时器
        interval: 10000; running: true; repeat: true;
        triggeredOnStart: true;
        onTriggered:{
            timeText.text = TimeMethod.getCurDate().toString()
        }
    }

    Text {
        id: timeText
        anchors.centerIn: parent
        font.pointSize: 13
        
    }

}
