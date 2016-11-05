/**
 * 加载页面数据
 */
function loadDataToPage(url) {
    if (typeof (url) != "string") {
        throw new TypeError(url + " is not a string");
    }
    jlData.request(url, {
        async: true,
        type: "GET",
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.code == 200) {
                var data = response.result;
                var bean = data["detail"];
                var speedDistribution = data["chart-speed-distribution"];
                var accelerationDistribution = data["chart-acceleration-distribution"];
                var decelerationDistribution = data["chart-deceleration-distribution"];
                var drivingTimeDistribution = data["chart-driving-time-distribution"];
                ___loadGeneralSituation(bean);
                ___loadSpeedDistribution(bean, speedDistribution);
                ___loadAccelerationDistribution(bean, accelerationDistribution);
                ___loadDecelerationDistribution(bean, decelerationDistribution);
                ___loadDrivingTimeDistribution(bean, drivingTimeDistribution);
            } else {
                art.dialog({
                    title: "提示",
                    content: response.msg,
                    fixed: true,
                    okValue: '确定',
                    ok: function () {
                        return true;
                    }
                }).lock();
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("body").hideLoading();
            art.dialog({
                title: "提示",
                content: "系统异常，请稍后重试！",
                okValue: '确定',
                ok: function () {
                    return true;
                }
            }).lock();
        }
    });
}

/**
 * 概况
 */
function ___loadGeneralSituation(bean) {
    var generalSituationPanel = $("#panel-general-situation");
    var monthAvgTime = 0.0, monthAvgTimeProportion = 0.0, monthAvgMileage = 0.0,
        monthAvgMileageProportion = 0.0, fatigueDrivingProbability = 0.0, fatigueDrivingProbabilityProportion = 0.0;
    if (typeof (bean) == "object") {
        if (typeof (bean.monthAvgTime) == "number") {
            monthAvgTime = bean.monthAvgTime.toFixed(1);
        }
        if (typeof (bean.monthAvgTimeProportion) == "number") {
            monthAvgTimeProportion = (bean.monthAvgTimeProportion * 100).toFixed(2);
        }
        if (typeof (bean.monthAvgMileage) == "number") {
            monthAvgMileage = bean.monthAvgMileage.toFixed(3);
        }
        if (typeof (bean.monthAvgMileageProportion) == "number") {
            monthAvgMileageProportion = (bean.monthAvgMileageProportion * 100).toFixed(2);
        }
        if (typeof (bean.fatigueDrivingProbability) == "number") {
            fatigueDrivingProbability = (bean.fatigueDrivingProbability * 100).toFixed(2);
        }
        if (typeof (bean.fatigueDrivingProbabilityProportion) == "number") {
            fatigueDrivingProbabilityProportion = (bean.fatigueDrivingProbabilityProportion * 100).toFixed(2);
        }
    }
    generalSituationPanel.find('[data-name="monthAvgTime"]').text(monthAvgTime + "小时");
    generalSituationPanel.find('[data-name="monthAvgTimeProportion"]').text("超过" + monthAvgTimeProportion + "%的客户");
    generalSituationPanel.find('[data-name="monthAvgMileage"]').text(monthAvgMileage + "公里");
    generalSituationPanel.find('[data-name="monthAvgMileageProportion"]').text("超过" + monthAvgMileageProportion + "%的客户");
    generalSituationPanel.find('[data-name="fatigueDrivingProbability"]').text(fatigueDrivingProbability + "%");
    generalSituationPanel.find('[data-name="fatigueDrivingProbabilityProportion"]').text("超过" + fatigueDrivingProbabilityProportion + "%的客户");
}

/**
 * 速度分布
 */
function ___loadSpeedDistribution(bean, chart) {
    var speedDistributionPanel = $("#panel-speed-distribution");
    var maxSpeed = 0.0, avgSpeed = 0.0, avgSpeedProportion = 0.0;
    if (typeof (bean) == "object") {
        if (typeof (bean.baseSpeed999) == "number") {
            maxSpeed = bean.baseSpeed999.toFixed(2);
        }
        if (typeof (bean.avgSpeed) == "number") {
            avgSpeed = bean.avgSpeed.toFixed(2);
        }
        if (typeof (bean.avgSpeedProportion) == "number") {
            avgSpeedProportion = (bean.avgSpeedProportion * 100).toFixed(2);
        }
    }
    speedDistributionPanel.find('[data-name="maxSpeed"]').text(maxSpeed + "公里/小时");
    speedDistributionPanel.find('[data-name="avgSpeed"]').text(avgSpeed + "公里/小时");
    speedDistributionPanel.find('[data-name="avgSpeedProportion"]').text("均速超过" + avgSpeedProportion + "%的客户");

    jlCharts.column({
        title: "",
        subtitle: "",
        xAxis: {title: "速度（公里/小时）"},
        yAxis: {title: "概率 （%）"},
        tooltip: {
            headerFormat: '速度：<b>{point.key} 公里/小时</b><br/>',
            pointFormat: '概率：<b>{point.y:.2f} %</b>'
        },
        data: chart
    }, speedDistributionPanel.find('[class="chart_container"]'));
}

/**
 * 加速度分布
 */
function ___loadAccelerationDistribution(bean, chart) {
    var accelerationDistributionPanel = $("#panel-acceleration-distribution");
    var maxAcceleration = 0.0, avgAcceleration = 0.0, avgAccelerationProportion = 0.0;
    if (typeof (bean) == "object") {
        if (typeof (bean.acceleration999) == "number") {
            maxAcceleration = bean.acceleration999.toFixed(2);
        }
        if (typeof (bean.avgAcceleration) == "number") {
            avgAcceleration = bean.avgAcceleration.toFixed(2);
        }
        if (typeof (bean.avgAccelerationProportion) == "number") {
            avgAccelerationProportion = (bean.avgAccelerationProportion * 100).toFixed(2);
        }
    }
    accelerationDistributionPanel.find('[data-name="maxAcceleration"]').html(maxAcceleration + "米/秒<sup>2</sup>");
    accelerationDistributionPanel.find('[data-name="avgAcceleration"]').html(avgAcceleration + "米/秒<sup>2</sup>");
    accelerationDistributionPanel.find('[data-name="avgAccelerationProportion"]').text("加速超过" + avgAccelerationProportion + "%的客户");

    jlCharts.column({
        title: "",
        subtitle: "",
        xAxis: {title: "加速度（米/秒<sup>2</sup>）"},
        yAxis: {title: "概率 （%）"},
        tooltip: {
            headerFormat: '加速度：<b>{point.key} 米/秒<sup>2</sup></b><br/>',
            pointFormat: '概率  ：<b>{point.y:.2f} %</b>'
        },
        data: chart
    }, accelerationDistributionPanel.find('[class="chart_container"]'));
}

/**
 * 减速度分布
 */
function ___loadDecelerationDistribution(bean, chart) {
    var decelerationDistributionPanel = $("#panel-deceleration-distribution");
    var maxDeceleration = 0.0, avgDeceleration = 0.0, avgDecelerationProportion = 0.0;
    if (typeof (bean) == "object") {
        if (typeof (bean.deceleration999) == "number") {
            maxDeceleration = bean.deceleration999.toFixed(2);
        }
        if (typeof (bean.avgDeceleration) == "number") {
            avgDeceleration = bean.avgDeceleration.toFixed(2);
        }
        if (typeof (bean.avgDecelerationProportion) == "number") {
            avgDecelerationProportion = (bean.avgDecelerationProportion * 100).toFixed(2);
        }
    }
    decelerationDistributionPanel.find('[data-name="maxDeceleration"]').html(maxDeceleration + "米/秒<sup>2</sup>");
    decelerationDistributionPanel.find('[data-name="avgDeceleration"]').html(avgDeceleration + "米/秒<sup>2</sup>");
    decelerationDistributionPanel.find('[data-name="avgDecelerationProportion"]').text("减速超过" + avgDecelerationProportion + "%的客户");

    jlCharts.column({
        title: "",
        subtitle: "",
        xAxis: {title: "减速度（米/秒<sup>2</sup>）"},
        yAxis: {title: "概率 （%）"},
        tooltip: {
            headerFormat: '减速度：<b>{point.key} 米/秒<sup>2</sup></b><br/>',
            pointFormat: '概率  ：<b>{point.y:.2f} %</b>'
        },
        data: chart
    }, decelerationDistributionPanel.find('[class="chart_container"]'));
}

/**
 * 驾驶时间分布
 */
function ___loadDrivingTimeDistribution(bean, chart) {
    var drivingTimeDistributionPanel = $("#panel-driving-time-distribution");
    var earlyMorningProportion = 0.0, morningPeakProportion = 0.0, dayProportion = 0.0,
        evenignPeakProportion = 0.0, nightProportion = 0.0;
    if (typeof (bean) == "object") {
        if (typeof (bean.earlyMorningProportion) == "number") {
            earlyMorningProportion = (bean.earlyMorningProportion * 100).toFixed(2);
        }
        if (typeof (bean.morningPeakProportion) == "number") {
            morningPeakProportion = (bean.morningPeakProportion * 100).toFixed(2);
        }
        if (typeof (bean.dayProportion) == "number") {
            dayProportion = (bean.dayProportion * 100).toFixed(2);
        }
        if (typeof (bean.evenignPeakProportion) == "number") {
            evenignPeakProportion = (bean.evenignPeakProportion * 100).toFixed(2);
        }
        if (typeof (bean.nightProportion) == "number") {
            nightProportion = (bean.nightProportion * 100).toFixed(2);
        }
    }
    drivingTimeDistributionPanel.find('[data-name="vehicleId"]').text(bean.vehicleId);
    drivingTimeDistributionPanel.find('[data-name="earlyMorningProportion"]').text(earlyMorningProportion + "%");
    drivingTimeDistributionPanel.find('[data-name="morningPeakProportion"]').text(morningPeakProportion + "%");
    drivingTimeDistributionPanel.find('[data-name="dayProportion"]').text(dayProportion + "%");
    drivingTimeDistributionPanel.find('[data-name="evenignPeakProportion"]').text(evenignPeakProportion + "%");
    drivingTimeDistributionPanel.find('[data-name="nightProportion"]').text(nightProportion + "%");

    jlCharts.stacked({
        title: "",
        xAxis: {categories: [$("#select-vehicle-id").val()]},
        yAxis: {title: ""},
        tooltip: {
            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>'
        },
        data: chart
    }, drivingTimeDistributionPanel.find('[class="chart_container"]'));
}
