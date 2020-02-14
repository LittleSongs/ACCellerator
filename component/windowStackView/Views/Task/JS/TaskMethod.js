.pragma library

//新建任务
function newTask(taskName,bagId,parameterSelect,
                 personName,personJurisdiction){

    getInfo(taskName,bagId,parameterSelect,
            personName,personJurisdiction)

}

//获取界面数据
function getInfo(taskName,bagId,parameterSelect,
                 personName,personJurisdiction){
    console.log("taskName.value = "+taskName.value)
    console.log("培养箱ID = " + bagId.value)
    console.log("参数选择 = " + parameterSelect.comboBoxModel[parameterSelect._currentIndex])
    console.log("操作人员 = " + personName.value)
    console.log("人员权限 = " + personJurisdiction.value)
}

//发送界面数据到后台
function sendInfo(){

}

//把这次的操作方法保存到单例中
function saveMethod(){

}

