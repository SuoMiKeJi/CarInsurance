/* 公用的 */

/**
 * 加载下拉框数据
 */
function loadDataToSelect(config) {
    if (typeof (config) != "object") {
        throw new TypeError(config + " is not a object");
    }
    if (typeof(config.select) != "object" && typeof(config.select) != "string") {
        throw new TypeError("Select is not found");
    }
    var async = config.async;
    if (typeof (async) != "boolean") {
        async = false;
    }
    jlData.request(config.url, {
        async: async,
        type: "GET",
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.code == 200) {
                var data = response.result;
                if (typeof (data) == "object" && data instanceof Array) {
                    var selectOptionHtml = "";
                    if (typeof(config.header) == "object") {
                        selectOptionHtml += '<option value="' + config.header.value + '" > ' + config.header.text + '</option>';
                    }
                    $(data).each(function (index, element) {
                        if (typeof (config.each) == "function") {
                            selectOptionHtml += config.each(index, element);
                        } else {
                            var id = $(this).attr("id");
                            var name = $(this).attr("name");
                            selectOptionHtml += '<option value="' + id + '" > ' + name + '</option>';
                        }
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
