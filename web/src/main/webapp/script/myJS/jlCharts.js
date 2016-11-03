/* charts util */
(function (win) {
    var jlCharts = {
        column: function (setting, container) {
            HChartsUtil._fn.chart.column.draw(setting, container);
        },
        _setting: {
            column: {
                chart: {
                    type: 'column'
                },
                title: {
                    text: ''
                },
                subtitle: {
                    text: ''
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    },
                    title: {
                        text: ''
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: ''
                },
                series: [{
                    name: 'Population',
                    data: null,
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        format: '{point.y:.1f}', // one decimal
                        y: 10, // 10 pixels down from the top
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }]
            }
        },
        _fn: {
            chart: {
                column: {
                    draw: function (setting, container) {
                        var defaultSetting = $(HChartsUtil._setting.column).clone();
                        defaultSetting.title.text = setting.title;
                        defaultSetting.subtitle.text = setting.subtitle;
                        defaultSetting.xAxis.title.text = setting.xAxis.title;
                        defaultSetting.yAxis.title.text = setting.yAxis.title;
                        defaultSetting.tooltip.pointFormat = setting.tooltipFormat;
                        defaultSetting.series[0].data = setting.data;
                        $(container).highcharts(
                            defaultSetting
                        );
                    }
                }
            }
        }
    };
    win.jlCharts=jlCharts;
})(window);