.pragma library

//获得标签栏的图片
function getIcon(name){
    var src=""
    switch (name){
    case "新建任务":
        src="./image/new"
        break
    case "历史任务":
        src="./image/HistoricalTask"
        break
    case "参数设置":
        src="./image/Setting"
        break
    case "系统设置":
        src="./image/SystemSetting"
        break
    case "参数设定":
        src="./image/SettingSmall"
        break
    case "校准":
        src="./image/calibration"
        break
    default:
        src="./image/Setting"
        break
    }

    return src
}
