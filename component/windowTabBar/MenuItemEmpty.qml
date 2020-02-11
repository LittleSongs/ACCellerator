import QtQuick 2.5
import QtQuick.Controls 2.5
//如果菜单的子项为空，不知道为什么，默认会有一个框作为子项，
//现在迫不得已直接把没有子项的menu，子项样式改为一个宽高都为0的框
Rectangle {
    height: 0
    width: 0
}
