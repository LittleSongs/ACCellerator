/*
tabar具体选择了哪个需要靠一个变量去保存
然后再在tabar界面通过访问变量去区分
*/

pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0

Item {
    //0，新建任务
    //1，历史任务
    //2，参数设置
    //3，系统设置
    property string selectItem: "新建任务"
}
