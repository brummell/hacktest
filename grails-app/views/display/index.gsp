<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'timechart.css')}" type="text/css">
        <g:javascript src="amcharts.js"/>
        <g:javascript>
            var tvalues = ${tvalues};
            var cvalues = ${cvalues};
            var chart;
            var chartData = [];
            var chartCursor;

            AmCharts.ready(function () {
                // generate some data first
                generateChartData();
                
                // SERIAL CHART    
                chart = new AmCharts.AmSerialChart();
                chart.pathToImages = "../amcharts/images/";
                chart.zoomOutButton = {
                    backgroundColor: '#000000',
                    backgroundAlpha: 0.15
                //invalidateSize();
                };
                
                chart.dataProvider = chartData;
                chart.categoryField = "tval";
                // listen for "dataUpdated" event (fired when chart is rendered) and call zoomChart method when it happens
                chart.addListener("dataUpdated", zoomChart);

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
                categoryAxis.minPeriod = "ss"; // our data is daily, so we set minPeriod to DD
                categoryAxis.dashLength = 1;
                categoryAxis.autoGridCount = true;
                categoryAxis.gridAlpha = 0.15;
                categoryAxis.axisColor = "#DADADA";
                categoryAxis.equalSpacing = true;

                
                // value                
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.axisAlpha = 0.2;
                valueAxis.dashLength = 1;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.fillAlphas = 0.1;
                graph.title = "red line";
                graph.valueField = "cval";
                graph.bullet = "round";
                graph.bulletBorderColor = "#FFFFFF";
                graph.bulletBorderThickness = 2;
                graph.lineThickness = 2;
                graph.lineColor = "#b5030d";
                graph.negativeLineColor = "#0352b5";
                graph.hideBulletsCount = 50; // this makes the chart to hide bullets when there are more than 50 series in selection
                chart.addGraph(graph);
                   
                // CURSOR
                chartCursor = new AmCharts.ChartCursor();
                chartCursor.cursorPosition = "mouse";
                chart.addChartCursor(chartCursor);

               // SCROLLBAR
                var chartScrollbar = new AmCharts.ChartScrollbar();
                chartScrollbar.graph = graph;
                chartScrollbar.scrollbarHeight = 40;
                chartScrollbar.color = "#FFFFFF";
                chartScrollbar.autoGridCount = true;
                chart.addChartScrollbar(chartScrollbar);
                
                // WRITE
                chart.write("chartdiv");
            });

            // generate some random data, quite different range
            function generateChartData() {
                for (var i = 0; i < tvalues.length - 1; i++) { //>
                    tval = new Date(tvalues[i]);
                    cval = cvalues[i];
                    chartData.push({
                        tval: tval,
                        cval: cval
                    });
                }
            }
            // this method is called when chart is first inited as we listen for "dataUpdated" event
            function zoomChart() {
                // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                chart.zoomToIndexes(0, chartData.length);
            }
            
            // changes cursor mode from pan to select
            function setPanSelect() {
                if (document.getElementById("rb1").checked) {
                    chartCursor.pan = false;
                    chartCursor.zoomable = true;
                    
                } else {
                    chartCursor.pan = true;
                }
                chart.validateNow();
            }            
        </g:javascript>
        <r:layoutResources/>
    </head>
    
    <body>
        <div id="chartdiv" style="width: 100%; height: 600px;"></div>
        <div style="margin-left:35px;">
            <input type="radio" checked="true" name="group" id="rb1" onclick="setPanSelect()">Select
            <input type="radio" name="group" id="rb2" onclick="setPanSelect()">Pan
        </div>        
        <r:layoutResources/>
    </body>

</html>

