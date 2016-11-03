$(document).ready(function () {
    // 加载下拉框
    jlData.request("<@com.tags.spring.url value='/dbac/comboBox.json' />", {
        async: true,
        type: "GET",
        success: function (response, textStatus) {
            $("body").hideLoading();
            if (response.status == 200) {
                var data = response.result;
                var vehicleIdSelected = $("#vehicleIdSelectedValue").val();
                $("#vehicleIdSelect").html("");
                art.dialog({
                    title: "提示",
                    content: data.msg,
                    okValue: '确定',
                    ok: function () {
                        $("body").showLoading();
                        window.location.reload();
                        return true;
                    }
                }).lock();
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

    $("#vehicleIdSelect").change(function (e) {
        window.location = "<@com.tags.spring.url value='/es/dba/' />" + this.value;
    });
    HChartsUtil.column(setting, "#speedDistributionContainer");
});
ui.window.layout.init({
    parent: "#content",
    offset: -875,
    brothers: ["#header", "#footerWapper", "#cat_gps_id"],
    main: ".tabbox"
});