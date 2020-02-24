import QtQuick 2.0
import QtQuick.Controls 1.4
import "../public"
import "./JS/HistoryMethod.js" as Method
import "../../../singleton"

Item {
    property var pageId: "历史任务"
    Component.onCompleted: {
        Method.setTable(tableView,historyModel,
                        HistoryTaskInfo.historyTaskInfo.obj)
    }

    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            id:titleBar
            titleName:pageId
        }
        //历史任务列表的背景
        Rectangle{
            color: "#EDEDED"
            width: parent.width/2
            anchors.left: parent.left
            anchors.top: titleBar.bottom
            anchors.bottom:parent.bottom

            TableView{
                id:tableView
                width: parent.width
//                height: parent.height
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 53
                backgroundVisible: false //隐藏表格默认背景色（白色）
                frameVisible: false //隐藏表格最外面的矩形框线
                model: ListModel{ //使用ListModel，并加入测试数据
                    id:historyModel
                }
                headerDelegate: headDel  //表格头委托
                rowDelegate: rowDel    //表格行委托
                itemDelegate: Item{  //数据item委托
                    Rectangle{
                        color: "#F7F7F7"
                        //                anchors.fill: parent
                        height: 40
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
                    }
                }



                Component{ //表头委托，用于设置表头行高，内容显示，色彩等
                    id: headDel
                    Rectangle{
                        height: 40
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
                        height: 40
                    }
                }

                TableViewColumn{ //加入姓名列
                    title: "任务名称"
                    role: "name"
                    width: parent.width/6
                }

                TableViewColumn{ //加入年龄列
                    title: "开始时间"
                    role: "startTime"
                    width: parent.width/6
                }

                TableViewColumn{ //加入性别列
                    title: "结束时间"
                    role: "finishTime"
                    width: parent.width/6
                }
            }

            BasicButton{
                width: 100
                height: 42
                _text:"导出"
                _color:"#F9F9F9"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left
                anchors.leftMargin: 5

                onClickSignal: {
                    console.log("导出")
                }
            }

            BasicButton{
                id:previousPage
                width: 100
                height: 42
                _text:"上一页"
                _color:"#F9F9F9"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.right: nextPage.left
                anchors.rightMargin: 5

                onClickSignal: {
                    console.log("上一页")
                }
            }

            BasicButton{
                id:nextPage
                width: 100
                height: 42
                _text:"下一页"
                _color:"#F9F9F9"

                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.right: parent.right
                anchors.rightMargin: 5

                onClickSignal: {
                    console.log("下一页")
                }
            }
        }
    }
}
