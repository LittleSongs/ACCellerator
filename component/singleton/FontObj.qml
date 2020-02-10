/*
字体单例模式
*/

pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0

Item {
    //普通字体
    property alias reguler: notoSansFontRegular.name
    //加粗字体
    property alias bold: notoSansFontBold.name
    /**********************************************/
    //加载文字
    //加载本地的思源黑体字体文件
    FontLoader {
        id: notoSansFontRegular;
        source: "file:\D:\\code\\qt_projects\\ACCellerator\\resource"+
                "\\fonts\\NotoSansCJKsc-hinted\\NotoSansCJKsc-Regular.otf"
    }    FontLoader {
        id: notoSansFontBold;
        source: "file:\D:\\code\\qt_projects\\ACCellerator\\resource"+
                "\\fonts\\NotoSansCJKsc-hinted\\NotoSansCJKsc-Bold.otf"
    }
}
