/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Charts module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtCharts 2.0

Item {
    property string chartName: ""
    onChartNameChanged: {
        console.log("改变====================="+chartName)
    }
    anchors.fill: parent
    //![1]
    ChartView {
        id:chart
        anchors.fill: parent
        legend.visible: false
        antialiasing: true

        LineSeries {
            axisX: DateTimeAxis {
                format: "yyyy-MM-dd hh:mm"
                tickCount: 5
                max:Date.fromLocaleString(Qt.locale(), "1952-05-09 20:00", "yyyy-MM-dd hh:mm")
                min:Date.fromLocaleString(Qt.locale(), "1949-12-09 20:00", "yyyy-MM-dd hh:mm")
            }
            axisY: ValueAxis {
                min: 0
                max: 150
            }
        }

        Component.onCompleted: {
            var seriesLine = chart.series(0);
            console.log("11111111111111")
            var month=0;
            var day=0;
            var year = 1950;
            var y_value=0;
            for( var i=0;i<300;i++){
                seriesLine.append(toMsecsSinceEpoch(new Date(year, month, day)),y_value);//向线条加点
                y_value++
                day++
                if(day>30){
                    month++
                    day = 0
                    if(month>11){
                        month = 0
                        year++
                    }
                }
                if(y_value > 80){
                    console.log("y_value="+y_value)
                    y_value = 1
                }

            }
        }
    }

    // DateTimeAxis is based on QDateTimes so we must convert our JavaScript dates to
    // milliseconds since epoch to make them match the DateTimeAxis values
    function toMsecsSinceEpoch(date) {
        var msecs = date.getTime();
        return msecs;
    }
    //![1]
}
