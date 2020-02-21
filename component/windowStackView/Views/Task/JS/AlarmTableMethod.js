.pragma library

//填充表格
function setTable(tableView,parameterModel,obj) {
    //加载行
    for(var i=0;i<obj.length;++i){
        var item={
            "name":obj[i].name,
            "mode":obj[i].mode ? "开启" : "-",
            "setValue":obj[i].currentSetValue ? String(obj[i].currentSetValue) : "-",
            "currentValue":obj[i].currentValue ? String(obj[i].currentValue) : "-",
            "upperlimit":obj[i].alarmUpperLimit ? String(obj[i].alarmUpperLimit) : "-",
            "lowerlimit":obj[i].alarmLowerLimit ? String(obj[i].alarmLowerLimit) : "-"
        }
        parameterModel.append(item)
    }
}

//设置报警开关
//obj,参数单例
//index,设置的哪一行的开关
function setSwitch(obj,index,state,model){
    console.log("setSwitch")
    if(obj[index].mode === false){
        //模式是关闭的，所有操作都不能执行
        console.log("模式是关闭的，所有操作都不能执行")
        return false
    }else if(obj[index].mode === true){
        obj[index].alarmSwitch = state
        if(state === true){
            obj[index].alarmUpperLimit = 1
            obj[index].alarmLowerLimit = 10
        }else{
            obj[index].alarmUpperLimit = null
            obj[index].alarmLowerLimit = null
        }
        //更新改变警报开关那行的数据
        model.set(index,
                  {
                      "upperlimit":obj[index].alarmUpperLimit ? String(obj[index].alarmUpperLimit) : "-",
                      "lowerlimit":obj[index].alarmLowerLimit ? String(obj[index].alarmLowerLimit) : "-"
                  })
        return true
    }
}

