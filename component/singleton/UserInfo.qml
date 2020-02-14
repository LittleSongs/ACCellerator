pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0

Item {
    property var jurisdiction: {
        "1":"超级管理员"
    }

    property string username: "Admin0106_001"
    property string userJurisdiction: jurisdiction["1"]
}
