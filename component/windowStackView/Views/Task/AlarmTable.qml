/*
报警页面表格控件
*/
import QtQuick 2.0
import QtQuick.Controls 1.4
import "./components/IOS-RadioButton" //开关按钮
import "./JS/AlarmTableMethod.js" as Method
import "../../../singleton"
Item {
    id:root

    Component.onCompleted: {
        //加载表格数据
        Method.setTable(tableView,parameterModel,NowParameterInfo.parameterInfo.obj)
    }

    TableView{
        id:tableView
        width: parent.width
        height: parent.height
        backgroundVisible: false //隐藏表格默认背景色（白色）
        frameVisible: false //隐藏表格最外面的矩形框线
        model: ListModel{ //使用ListModel，并加入测试数据
            id:parameterModel
        }
        headerDelegate: headDel  //表格头委托
        rowDelegate: rowDel    //表格行委托
        itemDelegate: Item{  //数据item委托
            Rectangle{
                color: "#F7F7F7"
                //                anchors.fill: parent
                height: 26
                width: parent.width
                Canvas{  //创建一个画布画矩形框的左边垂直线
                    width: 3 //宽度为1
                    height: parent.height    //高度为item的高度
                    anchors.left: parent.left //为item靠左对齐
                    //如果当前列是0列则显示，防止重叠
                    visible: styleData.column === 0 ? true : false
                    onPaint: {
                        var ctx = getContext("2d"); //获取画笔对象
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写

                        ctx.beginPath();  //开始画路径
                        ctx.moveTo(0,0);  //移动到0,0点
                        //移动到0,height点，此时为左边竖线
                        ctx.lineTo(0,height);
                        ctx.stroke();  //画出该图形
                    }
                }

                Canvas{ //画矩形框底线，每个item都要画
                    width: parent.width
                    height: 3
                    anchors.bottom: parent.bottom
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写
                        ctx.beginPath();
                        ctx.moveTo(0,height);
                        ctx.lineTo(width,height);
                        ctx.stroke();
                    }
                }

                Canvas{//画矩形框右边竖线，每个item都要画
                    width: 3
                    height: parent.height
                    anchors.right: parent.right
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写
                        ctx.beginPath();
                        ctx.moveTo(width,0);
                        ctx.lineTo(width,height);
                        ctx.stroke();
                    }
                }

                Text{ //数据显示
                    color: "black"
                    anchors.centerIn: parent
                    font.pixelSize: 16
                    text: styleData.value
                }
                //开关
                RadioButton {
                    id:radioButtonId
                    visible: (styleData.column === 6) ? true : false
                    width: 40
                    height: 20
                    anchors.centerIn: parent
                    checked: NowParameterInfo.parameterInfo.obj[styleData.row].alarmSwitch
                    position:styleData.row //选项标志
                    onClickedSwitch: {
                        //checked是开关状态
                        //positionName是开关的位置
                        console.log("当前按钮状态:"+checked)
                        //开关状态改变在这里改变nowParameter单例的值
                        //如果该参数的模式是关闭的，就不允许把警报开关打开
                        if(!Method.setSwitch
                                (NowParameterInfo.parameterInfo.obj,styleData.row,checked,parameterModel)){
                            checked = false
                        }

//                        NowParameterInfo.parameterInfo.obj[styleData.row].alarmSwitch=checked
//                        console.log("按钮位置:"+positionName)
//                        console.log("现在的值=="+NowParameterInfo.parameterInfo.obj[styleData.row].alarmSwitch)
                    }
                }
            }
        }



        Component{ //表头委托，用于设置表头行高，内容显示，色彩等
            id: headDel
            Rectangle{
                height: 56
                color: "#CBCBCB"
                Text{
                    anchors.centerIn: parent
                    text: styleData.value
                    font.pixelSize: 15
                    color: "black"
                }
                Canvas{  //创建一个画布画矩形框的左边垂直线
                    width: 3 //宽度为1
                    height: parent.height    //高度为item的高度
                    anchors.left: parent.left //为item靠左对齐
                    //如果当前列是0列则显示，防止重叠
                    visible: styleData.column === 0 ? true : false
                    onPaint: {
                        var ctx = getContext("2d"); //获取画笔对象
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写

                        ctx.beginPath();  //开始画路径
                        ctx.moveTo(0,0);  //移动到0,0点
                        //移动到0,height点，此时为左边竖线
                        ctx.lineTo(0,height);
                        ctx.stroke();  //画出该图形
                    }
                }

                Canvas{ //画矩形框底线，每个item都要画
                    width: parent.width
                    height: 3
                    anchors.bottom: parent.bottom
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写
                        ctx.beginPath();
                        ctx.moveTo(0,height);
                        ctx.lineTo(width,height);
                        ctx.stroke();
                    }
                }
                Canvas{//画矩形框右边竖线，每个item都要画
                    width: 3
                    height: parent.height
                    anchors.right: parent.right
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写
                        ctx.beginPath();
                        ctx.moveTo(width,0);
                        ctx.lineTo(width,height);
                        ctx.stroke();
                    }
                }
                Canvas{//画矩形框上边横线，每个item都要画
                    height: 3
                    width: parent.width
                    anchors.top: parent.top
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.strokeStyle = "#E5E5E5";  //设置颜色
                        ctx.lineWidth = 3;  //设置宽度，默认为1，可不写
                        ctx.beginPath();
                        ctx.moveTo(0,0);
                        ctx.lineTo(width,0);
                        ctx.stroke();
                    }
                }

            }
        }

        Component{ //行委托，用于设置行高和每行背景色等，此处为透明
            id: rowDel
            Item{
                height: 26
            }
        }
        TableViewColumn{ //加入姓名列
            title: "回路名称"
            role: "name"
            width: 260
        }

        TableViewColumn{ //加入年龄列
            title: "模式"
            role: "mode"
            width: 60
        }

        TableViewColumn{ //加入性别列
            title: "设定值"
            role: "setValue"
            width: 100
        }

        TableViewColumn{
            title: "当前值"
            role:"currentValue"
            width: 100
        }

        TableViewColumn{
            title: "报警上限\n点击修改"
            role:"upperlimit"
            width: 120
        }

        TableViewColumn{
            title: "报警下限\n点击修改"
            role:"lowerlimit"
            width: 120
        }
        TableViewColumn{
            title: "报警开关"
            role:"alarmSwitch"
            width: 145
        }
    }
}
