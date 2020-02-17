.pragma library
//新建任务
function newTask(taskName,bagId,parameterSelect,
                 personName,personJurisdiction){
    getInfo(taskName,bagId,parameterSelect,
            personName,personJurisdiction)
    sendInfo()
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

//发送数据到后台进行保存
function sendInfo(){

}

//把这次的任务保存到单例中
function saveTask(NowTaskInfo,taskName,bagId,parameterSelect,
                  personName,personJurisdiction){
    NowTaskInfo.taskName = taskName.value
    NowTaskInfo.taskNumber = getTaskNumber()
    NowTaskInfo.bagId = bagId.value
    NowTaskInfo.parameterName = parameterSelect.comboBoxModel[parameterSelect._currentIndex]
    NowTaskInfo.username = personName.value
    NowTaskInfo.userJurisdiction = personJurisdiction.value

}

//创建一个任务编号
function getTaskNumber(){
    return "20200217-001-001"
}


//界面左边工具栏运行按钮
function changeStatus(status,beginBtn,stopBtn){
    switch(status){
    case 1:
        //运行
        console.log("开 始")
        console.log("获得开始的信号")
        beginBtn._imageSrc = "../components/images/pause.png"
        beginBtn._text = "暂 停"
        beginBtn._textColor = "#e88900"
        /////////////////////////////////
        stopBtn._imageSrc = "../components/images/stop1.png"
        stopBtn._textColor = "#C60303"
        break
    case 2:
        //暂停
        console.log("暂 停")
        console.log("获得暂停的信号")
        beginBtn._imageSrc = "../components/images/begin1.png"
        beginBtn._text = "继 续"
        beginBtn._textColor = "#e88900"
        break
    case 0:
        //关闭
        beginBtn._text="开 始"
        beginBtn._imageSrc="../components/images/begin.png"
        beginBtn._textColor="#d81e06"
        /////////////////////////////
        stopBtn._imageSrc = "../components/images/stop.png"
        stopBtn._textColor = "#6f6f6f"
        break
    default:
        //其他状态
        console.log("其他状态status="+status)
        break
    }

    console.log("status=="+status)
}

