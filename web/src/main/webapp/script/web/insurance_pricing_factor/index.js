/**
 * 加载视图数据
 *
 * @param config 配置参数对象
 */
function loadDataToViewPanel(config) {
    if (typeof (config) != "object") {
        throw new TypeError(config + " is not a object");
    }
    jlData.request(config.url, {
        async: true,
        type: "GET",
        data: {},
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.code == 200) {
                var list = response.result;
                ___loadTable(list);
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
        row.find('[data-name="tripCount"]').text(this["tripCount"]);
        row.find('[data-name="vehicleId"]').text(this["vehicleId"]);
        row.find('[data-name="riskRating"]').text(this["riskRating"]);
        row.find('[data-name="mileage"]').text(this["mileage"]);
        row.find('[data-name="duration"]').text(this["duration"]);
        row.find('[data-name="suggestedDiscount"]').text(this["suggestedDiscount"]);
        row.find('[data-name="fraudRisk"]').text(this["fraudRisk"]);
        row.find('[data-name="avgSpeed"]').text(this["avgSpeed"]);
        row.find('[data-name="avgAcceleration"]').text(this["avgAcceleration"]);
        row.find('[data-name="avgDeceleration"]').text(this["avgDeceleration"]);
        tableBody.append(row);
    });
}

