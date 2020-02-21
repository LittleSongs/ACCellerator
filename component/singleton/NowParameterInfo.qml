/*
包含了当前正在使用的配方参数的总体参数
*/


pragma Singleton  //设置为单例必须要加的一句话
import QtQuick 2.0

Item {
    //当前正在使用的配方参数的总体参数
    property var parameterInfo:{
        "parameterName": "20200218-001",
        "obj": [
            {
                "type": "rpm",
                "name":"转速",
                "mode": true,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 1
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "angle",
                "name":"角度",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 4
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 5
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "oxygenConcentration",
                "name":"氧气浓度",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 2
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "co2Concentration",
                "name":"二氧化碳浓度",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 4
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 5
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "flowRate_ALL",
                "name":"总流速",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 2
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 11
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "liquidTemperature",
                "name":"液体温度",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 66
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 3
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "initCultureVolume",
                "name":"起始培养体积",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "dosingVolume_A",
                "name":"A加液量",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "dosingVolume_B",
                "name":"B加液量",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "flowRate_A",
                "name":"A流速",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "flowRate_B",
                "name":"B流速",
                "mode": true,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "cellDensity",
                "name":"细胞密度",
                "mode": false,
                "cascade": true,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "activityRate",
                "name":"活率",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "_ph",
                "name":"PH",
                "mode": true,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": 3,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            },
            {
                "type": "_do",
                "name":"DO",
                "mode": false,
                "cascade": false,
                "currentSetValue": null,
                "currentValue": null,
                "alarmSwitch": false,
                "alarmUpperLimit": null,
                "alarmLowerLimit": null,
                "historySetValues": [
                    {
                        "time": "02/18 19:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 18:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 17:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 16:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 15:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 14:22",
                        "setValue": 0
                    },
                    {
                        "time": "02/18 13:22",
                        "setValue": 0
                    }
                ]
            }
        ]
    }
}
