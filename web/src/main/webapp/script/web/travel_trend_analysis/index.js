/**
 * 加载视图数据
 *
 * @param config 配置参数对象
 */
function loadDataToViewPanel(config) {
    if (typeof (config) != "object") {
        throw new TypeError(config + " is not a object");
    }
    var data = null, selectedStartMonth = null, selectedEndMonth = null;
    if (typeof (config.submitData) == "object") {
        selectedStartMonth = config.submitData.startMonth;
        selectedEndMonth = config.submitData.endMonth;
        var startMonth = ___stringDate2intDate(selectedStartMonth, "yyyy-MM");
        var endMonth = ___stringDate2intDate(selectedEndMonth, "yyyy-MM");
        if (startMonth > endMonth) {
            art.dialog({
                title: "提示",
                content: "开始年月不能大于结束年月",
                okValue: '确定',
                ok: function () {
                    return true;
                }
            }).lock();
            return;
        }
        data = {
            startMonth: startMonth,
            endMonth: endMonth
        }
    }
    jlData.request(config.url, {
        async: true,
        type: "GET",
        data: data,
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.code == 200) {
                var data = response.result;
                var list = data["list"];
                var chartId = "chart-travel-trend-analysis";
                var minMonth = ___intDate2StringDate(data["min-month"], "yyyy-MM");
                var maxMonth = ___intDate2StringDate(data["max-month"], "yyyy-MM");

                var startMonthInput = $('[name="startMonth"].Wdate').val(minMonth).attr("min-date", minMonth).attr("max-date", maxMonth).click(___datePickerClick);
                if (selectedStartMonth !== null) {
                    startMonthInput.val(selectedStartMonth);
                }
                var endMonthInput = $('[name="endMonth"].Wdate').val(maxMonth).attr("min-date", minMonth).attr("max-date", maxMonth).click(___datePickerClick);
                if (selectedEndMonth !== null) {
                    endMonthInput.val(selectedEndMonth);
                }

                ___loadTable(list);
                ___loadChart(data[chartId], "#" + chartId);
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
 * 加载表格数据
 *
 * @param list 数据列表
 * @private
 */
function ___loadTable(list) {
    var tableBody = $(".data_table").find("tbody");
    var trElement = $(tableBody.children("tr").get(0)).clone(true);
    tableBody.html("");
    $(list).each(function () {
        var row = trElement.clone(true);
        row.find('[data-name="gpsId"]').text(this["gpsId"]);
        row.find('[data-name="vehicleId"]').text(this["vehicleId"]);
        row.find('[data-name="month"]').text(___intDate2StringDate(this["period"], "yyyy年MM月"));
        row.find('[data-name="mileage"]').text(this["mileage"]);
        row.find('[data-name="duration"]').text(this["duration"]);
        row.find('[data-name="avgSpeed"]').text(this["avgSpeed"]);
        row.find('[data-name="avgAcceleration"]').text(this["avgAcceleration"]);
        row.find('[data-name="avgDeceleration"]').text(this["avgDeceleration"]);
        tableBody.append(row);
    });
}

/**
 * 加载图表数据
 *
 * @param chartData 图表数据
 * @param container 图表容器
 * @private
 */
function ___loadChart(chartData, container) {
    // 计算
    var yAxisTitle = null, tooltipPointFormat = null;
    var dimensionKey = $("#select-dimension-id").val();
    $("#select-dimension-id").children().each(function () {
        if (this.value == dimensionKey) {
            yAxisTitle = this.innerHTML;
        }
    });
    switch (dimensionKey) {
        case "mileage":
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b> 公里<br/>';
            break;
        case "duration":
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b> 小时<br/>';
            break;
        case "avgSpeed":
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b> 公里/小时<br/>';
            break;
        case "avgAcceleration":
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b> 米/秒<sup>2</sup><br/>';
            break;
        case "avgDeceleration":
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b> 米/秒<sup>2</sup><br/>';
            break;
        default:
            tooltipPointFormat = '<span style="color:{series.color}">' + yAxisTitle + '</span>: <b>{point.y}</b><br/>';
    }

    // 图表
    jlCharts.line({
        title: "趋势分析",
        subtitle: "",
        xAxis: {
            categories: chartData.categories
        },
        yAxis: {title: yAxisTitle},
        tooltip: {
            pointFormat: tooltipPointFormat
        },
        data: chartData.data
    }, container);
}

/**
 * 时间框点击事件
 *
 * @param event 事件对象
 * @private
 */
function ___datePickerClick(event) {
    WdatePicker({
        skin: 'ext',
        dateFmt: 'yyyy-MM',
        isShowWeek: false,
        isShowClear: false,
        isShowToday: false,
        isShowOthers: false,
        isShowOK: false,
        readOnly: true,
        minDate: $(this).attr("min-date"),
        maxDate: $(this).attr("max-date")
    });
    // var WdatePickerDocument = $("#_my97DP").find("iframe").contents().get(0);
    // $(WdatePickerDocument).find(".MTitle:first").css("display", "none");
}

/**
 * 数字年月转成指定格式的字符串年月
 *
 * @param integer 数字年月
 * @param format  格式
 * @returns {String}
 * @private
 */
function ___intDate2StringDate(integer, format) {
    var dateString = integer.toString();
    // var year = parseInt(integer / 100);
    // var month = integer % 100;
    format = format.replace("yyyy", dateString.substr(0, 4));
    format = format.replace("MM", dateString.substr(4, 2));
    return format;
}

/**
 * 指定格式的字符串年月转成数字年月
 *
 * @param dateString 数字年月
 * @param format     格式
 * @returns {int}
 * @private
 */
function ___stringDate2intDate(dateString, format) {
    var yearIndex = format.indexOf("yyyy");
    var monthIndex = format.indexOf("MM");
    var tempDate = dateString.substr(yearIndex, 4) + dateString.substr(monthIndex, 2);
    var intDate = parseInt(tempDate);
    return intDate;
}

// /**
//  * 加载时间控件
//  */
// $(document).ready(function () {
//     $("input.Wdate").each(function () {
//         $(this).click(function (e) {
//             WdatePicker({
//                 skin: 'ext',
//                 dateFmt: 'yyyy-MM',
//                 isShowWeek: false,
//                 isShowClear: false,
//                 isShowToday: false,
//                 isShowOthers: false,
//                 isShowOK: false,
//                 readOnly: true
//             });
//             var WdatePickerDocument = $("#_my97DP").find("iframe").contents().get(0);
//             $(WdatePickerDocument).find(".MTitle:first").css("display", "none");
//         });
//     });
// });


// var aaa = new RegExp("(\\d+)(\\w{2}).*(\\d{3})");
// var bbb=aaa.test("aaaaaafwefwsdfsafewfwef123456sfeafsdfe4567823548754456sssss");
// alert(typeof (RegExp));
// // alert(RegExp.index);
