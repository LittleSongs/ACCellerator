.pragma library

function setTable(tableView,parameterModel,obj) {
    //加载列
    var columns = [
                {"role":"name","title":"回路名称","width":185},
                {"role":"mode","title":"模式","width":65},
                {"role":"cascade","title":"级联","width":65},
                {"role":"currentValue","title":"当前值","width":80}
            ]
    for(var i=0;i<columns.length;++i){
        //创建列
        var columnString = 'import QtQuick 2.0;import QtQuick.Controls 1.4;TableViewColumn{role: "'+ columns[i].role +'"; title: "' + columns[i].title +'"; width:' +columns[i].width+'}';
        var column = Qt.createQmlObject(
                    columnString
                    , tableView
                    , "dynamicSnippet1")
        tableView.addColumn(column);
    }

    for(i=0;i<obj[0].historySetValues.length;++i){
        //创建设定值的列
        columnString = 'import QtQuick 2.0;import QtQuick.Controls 1.4;TableViewColumn{role: "'+ "hisSetVal"+i +'"; title: "' + obj[0].historySetValues[i].time + "\n     设定值" +'"; width: 85}';
        column = Qt.createQmlObject(
                    columnString
                    , tableView
                    , "dynamicSnippet1")
        tableView.addColumn(column);
    }

    //加载行
    for(i=0;i<obj.length;++i){
        var item={
            "name":obj[i].name,
            "mode":obj[i].mode ? "开启" : "-",
            "cascade":obj[i].cascade ? "开启" : "-",
            "currentValue":obj[i].currentValue ? String(obj[i].currentValue) : "-"
        }
        for(var j=0;j<obj[i].historySetValues.length;++j){
            item['hisSetVal'+j] =obj[i].mode ? String(obj[i].historySetValues[j].setValue) : "-"
        }
        parameterModel.append(item)
    }
}
