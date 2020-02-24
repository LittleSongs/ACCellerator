.pragma library

//填充表格
function setTable(model,obj) {
    //加载行
    for(var i=0;i<obj.length;++i){
        var item={
            "name":obj[i].name
        }
        model.append(item)
    }
}

//根据参数配方的名字，获得参数的详细信息
function getParameterInfo(obj){
    console.log("name="+obj['name'])
    //从后台获得这个参数配方的详细信息，
    //保存到NowParameterInfo.parameterInfo.obj中
}
