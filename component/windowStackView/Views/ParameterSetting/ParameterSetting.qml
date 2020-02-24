import QtQuick 2.0
import QtQml.Models 2.2
import "../public"
import "./JS/ParameterSettingMethod.js" as Method
import "../../../singleton"
Item {
    property var pageId: "参数设置 -- 参数设定"
    Component.onCompleted: {
        Method.setTable(listModel,NowParameterInfo.parameters.obj)
    }

    Rectangle{
        anchors.fill: parent
        border.color: "#E1E1E1"

        //标题栏
        ViewsTitleBar{
            id:titleBar
            titleName:pageId
        }
        //参数配方的列表
        Rectangle{
            color: "#EDEDED"
            width: 160
            anchors.left: parent.left
            anchors.top: titleBar.bottom
            anchors.bottom:parent.bottom
            //新建按钮
            BasicButton{
                id:newParameter
                width: 154
                height: 30
                _text:"新建"
                _color:"#F9F9F9"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 5
                onClickSignal: {
                    console.log("新建")
                }
            }

            //搜索框


            //参数列表
            Rectangle {
                width: 154
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: newParameter.bottom
                anchors.topMargin: 5
                anchors.bottom:parent.bottom
                anchors.bottomMargin: 5
                border.color: "#BBBBBB"
                radius: 1
                DelegateModel {
                    id: visualModel
                    model: ListModel {
                        id:listModel;
                    }

                    delegate: Rectangle {
                        id: item
                        height: 40
                        anchors.left: parent.left
                        anchors.leftMargin: 1
                        anchors.right: parent.right
                        anchors.rightMargin: 1

                        Canvas{//画矩形框上边横线，每个item都要画
                            height: 3
                            width: parent.width
                            anchors.top: parent.top
                            onPaint: {
                                var ctx = getContext("2d");
                                ctx.strokeStyle = "#BBBBBB";  //设置颜色
                                ctx.lineWidth = 2;  //设置宽度，默认为1，可不写
                                ctx.beginPath();
                                ctx.moveTo(0,0);
                                ctx.lineTo(width,0);
                                ctx.stroke();
                            }
                        }

                        Text {
                            text: name
                            anchors.centerIn: parent
                            font.pixelSize: 14
                            color: "#A3A3A3"
                        }

                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                console.log("点击了==="+index)
                                //点击参数列表，获得参数详细信息
                                Method.getParameterInfo(
                                            NowParameterInfo.parameters.obj[index])
                            }
                        }
                    }
                }

                ListView {
                    id:listView;
                    anchors.fill: parent
                    model: visualModel
                }
            }
        }
    }
}
