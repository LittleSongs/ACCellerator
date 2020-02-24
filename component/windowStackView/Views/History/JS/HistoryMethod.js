.pragma library

//填充表格
function setTable(tableView,model,obj) {
    //加载行
    for(var i=0;i<obj.length;++i){
        var item={
            "name":obj[i].name,
            "startTime":obj[i].startTime,
            "finishTime":obj[i].finishTime,
        }
        model.append(item)
    }
}
