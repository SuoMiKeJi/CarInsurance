
/**
 * 加载下拉框数据
 */
function loadDataToSelect(config) {
    if (typeof (config) != "object") {
        throw new TypeError(config + " is not a object");
    }
    jlData.request(config.url, {
        async: false,
        type: "GET",
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.code == 200) {
                var data = response.result;
                if (typeof (data) == "object" && data instanceof Array) {
                    var selectOptionHtml = "";
                    // var vehicleIdSelected = $("#vehicleIdSelectedValue").val();

                    $(data).each(function (index, element) {
                        var id = $(this).attr("gpsId");
                        var name = $(this).attr("vehicleId");
                        // var selected = (vehicleIdSelected == id) ? "selected" : "";
                        // selectOptionHtml += '<option value="' + id + '" ' + selected + '>' + name + '</option>';
                        selectOptionHtml += '<option value="' + id + '" > ' + name + '</option>';
                    });
                    $(config.select).html(selectOptionHtml);
                } else {
                    art.dialog({
                        title: "提示",
                        content: "数据格式错误",
                        okValue: '确定',
                        ok: function () {
                            $("body").showLoading();
                            window.location.reload();
                            return true;
                        }
                    }).lock();
                }
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