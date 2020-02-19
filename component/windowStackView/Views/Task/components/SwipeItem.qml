import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.impl 2.0

Rectangle{
    id:root
    property string txt: "0"
    border.color: "#E5E5E5"
    property alias itemName: chartview.chartName//这个折线图对应的名字

    CusChartView{
        id:chartview
//        chartName:
    }
}
