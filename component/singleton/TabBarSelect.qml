/*
tabar具体选择了哪个需要靠一个变量去保存
然后再在tabar界面通过访问变量去区分
*/

pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0
import "../../"
Item {
    //0，新建任务
    //1，历史任务
    //2，参数设置
    //3，系统设置
    //4, 参数设定
    //5, 校准
    property string selectItem: "新建任务"
    signal selectTabChanged(var tabName)
    //选择了不同的tab，需要stackview页面跳转
    onSelectItemChanged: {
        console.log("selectItem发生改变="+selectItem)
        selectTabChanged(selectItem)
    }

    //由于上面的方法会导致父菜单中的参数设置按钮失去焦点
    //导致该按钮失去按下的状态，是由于点击了该按钮下的子菜单导致的
    //所以用一个新的变量来表示四个父菜单，子菜单不变
    property string selectItemFather: "新建任务"

}
