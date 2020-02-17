/*
创建任务之后，这里保存这当前任务的信息
任务名称
任务编号
培养袋子ID
参数名称
操作人
操作人权限
任务开始时间
*/

pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0

Item {
    //当前任务信息
    property string taskName: "新型冠状病毒第一次实验"
    property string taskNumber: "20200217-001-001"
    property string bagId: "20200217-001-001"
    property string parameterName: "20200217-001-001"
    property string username: "Admin0106_001"
    property string userJurisdiction: "1"


    //当前任务的参数设置的详细信息
    property int rpm: 0 //转速
    property int angle: 0 //角度
    property int oxygenConcentration: 0 //氧气浓度
    property int cO2Concentration: 0 //二氧化碳浓度
    property int flowRate_ALL: 0 //总流速
    property int liquidTemperature: 0 //液体温度
    property int initCultureVolume: 0 //起始培养体积
    property int dosingVolume_A: 0 //A加液量
    property int dosingVolume_B: 0 //B加液量
    property int flowRate_A: 0 //A流速
    property int flowRate_B: 0 //B流速
    property int cellDensity: 0 //细胞密度
    property int activityRate: 0 //活率
    property int _ph: 0 //PH
    property int _do: 0 //DO


}
