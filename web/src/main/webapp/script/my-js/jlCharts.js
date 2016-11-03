/* charts util */
(function (win) {
    var jlCharts = {
        column: function (setting, container) {
            jlCharts._fn.chart.column.draw(setting, container);
        },
        stacked: function (setting, container) {
            jlCharts._fn.chart.stacked.draw(setting, container);
        },
        _setting: {
            stacked: {
                chart: {
                    type: 'column'
                },
                title: {
                    text: ''
                },
                xAxis: {
                    categories: null
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    }
                },
                tooltip: {
                    pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
                    shared: true
                },
                plotOptions: {
                    column: {
                        stacking: 'percent'
                    }
                },
                series: null,
                clone: function () {
                    return jlCharts._fn.clone(this);
                }
            },
            column: {
                chart: {
                    type: 'column'
                },
                title: {
                    text: ""
                },
                subtitle: {
                    text: ""
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
                        text: ""
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ""
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    headerFormat: '<span style="font-size: 0.85em">{point.key}</span><br/>',
                    pointFormat: "{point.y:.1f}"
                },
                series: [{
                    name: 'Population',
                    data: null,
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        format: " ",//'{point.y:.1f}', // one decimal
                        y: 10, // 10 pixels down from the top
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }],
                clone: function () {
                    return jlCharts._fn.clone(this);
                }
            }
        },
        _fn: {
            chart: {
                stacked: {
                    draw: function (setting, container) {
                        var defaultSetting = jlCharts._setting.stacked.clone();
                        if (typeof (setting.title) == "string") {
                            defaultSetting.title.text = setting.title;
                        }
                        if (typeof (setting.xAxis) == "object") {
                            if (typeof (setting.xAxis.categories) == "object" && setting.xAxis.categories instanceof Array) {
                                defaultSetting.xAxis.categories = setting.xAxis.categories;
                            }
                        }
                        if (typeof (setting.yAxis) == "object" && typeof (setting.yAxis.title) == "string") {
                            defaultSetting.yAxis.title.text = setting.yAxis.title;
                        }
                        if (typeof (setting.tooltip) == "object") {
                            if (typeof (setting.tooltip.headerFormat) == "string") {
                                defaultSetting.tooltip.headerFormat = setting.tooltip.headerFormat;
                            }
                            if (typeof (setting.tooltip.pointFormat) == "string") {
                                defaultSetting.tooltip.pointFormat = setting.tooltip.pointFormat;
                            }
                        }
                        if (typeof (setting.data) == "object") {
                            defaultSetting.series = setting.data;
                        }
                        $(container).highcharts(defaultSetting);
                    }
                },
                column: {
                    draw: function (setting, container) {
                        var defaultSetting = jlCharts._setting.column.clone();
                        if (typeof (setting.title) == "string") {
                            defaultSetting.title.text = setting.title;
                        }
                        if (typeof (setting.subtitle) == "string") {
                            defaultSetting.subtitle.text = setting.subtitle;
                        }
                        if (typeof (setting.xAxis) == "object" && typeof (setting.xAxis.title) == "string") {
                            defaultSetting.xAxis.title.text = setting.xAxis.title;
                        }
                        if (typeof (setting.yAxis) == "object" && typeof (setting.yAxis.title) == "string") {
                            defaultSetting.yAxis.title.text = setting.yAxis.title;
                        }
                        if (typeof (setting.tooltip) == "object") {
                            if (typeof (setting.tooltip.headerFormat) == "string") {
                                defaultSetting.tooltip.headerFormat = setting.tooltip.headerFormat;
                            }
                            if (typeof (setting.tooltip.pointFormat) == "string") {
                                defaultSetting.tooltip.pointFormat = setting.tooltip.pointFormat;
                            }
                        }
                        if (typeof (setting.data) == "object") {
                            defaultSetting.series[0].data = setting.data;
                        }
                        $(container).highcharts(defaultSetting);
                    }
                }
            },
            clone: function (obj) {
                if (typeof(obj) != 'object') return obj;
                if (obj == null) return obj;
                var newObject = null;
                if (obj instanceof Array) {
                    newObject = new Array();
                } else {
                    newObject = new Object();
                }
                for (var property in obj) {
                    newObject[property] = this.clone(obj[property]);
                }
                return newObject;
            }
        }
    };
    win.jlCharts = jlCharts;
})(window);