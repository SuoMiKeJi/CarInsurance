/* data util */
(function (win) {
    var jlData = {
        request: function (url, ops) {
            if (typeof (ops) != "object") {
                ops = {
                    data: {}
                };
            }
            var datas = null;
            if (typeof (ops.async) != "boolean") {
                ops.async = false;
            }
            if (typeof (ops.dataType) != "string" || !ops.dataType.match(ui.regularExpression.ajax_dataType)) {
                ops.dataType = "json";
            }
            if (typeof (ops.type) != "string") {
                ops.type = "POST";
            }
            $.ajax({
                type: ops.type,
                async: ops.async,
                url: url,
                data: ops.data,
                dataType: ops.dataType,
                success: function (response, textStatus) {
                    if (typeof (ops.success) == "function") {
                        ops.success(response, textStatus);
                    } else {
                        art.dialog({
                            title: "提示",
                            content: data.msg,
                            fixed: true,
                            okValue: '确定',
                            ok: function () {
                                return true;
                            }
                        }).lock();
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (typeof (ops.error) == "function") {
                        ops.error(XMLHttpRequest, textStatus, errorThrown);
                    } else {
                        art.dialog({
                            title: "错误",
                            content: "出错啦！",
                            fixed: true,
                            okValue: '确定',
                            ok: function () {
                                return true;
                            }
                        }).lock();
                    }
                }
            });
            return datas;
        },
        sendToServer: function (url, parameters) {
            $.ajax({
                type: 'POST',
                async: false,
                url: url,
                data: parameters,
                dataType: 'json',
                success: function (response, textStatus) {
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
            });
        },
        sendNavigatorData: function (url) {
            var parameters = {
                'navigator.appCodeName': navigator.appCodeName,
                'navigator.appName': navigator.appName,
                'navigator.appVersion': navigator.appVersion,
                'navigator.cookieEnabled': navigator.cookieEnabled,
                'navigator.onLine': navigator.onLine,
                'navigator.platform': navigator.platform,
                'navigator.userAgent': navigator.userAgent,
                'navigator.doNotTrack': navigator.doNotTrack,
                'navigator.language': navigator.language,
                'navigator.maxTouchPoints': navigator.maxTouchPoints,
                'navigator.product': navigator.product,
                'navigator.productSub': navigator.productSub,
                'navigator.vendor': navigator.vendor,
                'navigator.vendorSub': navigator.vendorSub,
                'navigator.browserLanguage': navigator.browserLanguage,
                'navigator.systemLanguage': navigator.systemLanguage,
                'navigator.userLanguage': navigator.userLanguage,
                'navigator.appMinorVersion': navigator.appMinorVersion,
                /* 'navigator.connectionSpeed' : navigator.connectionSpeed, */
                'navigator.cpuClass': navigator.cpuClass,
                'navigator.msDoNotTrack': navigator.msDoNotTrack,
                'navigator.buildID': navigator.buildID,
                'navigator.oscpu': navigator.oscpu
            };
            this.sendToServer(url, parameters);
        }
    };
    win.jlData = jlData;
})(window);