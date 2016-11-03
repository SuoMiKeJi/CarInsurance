(function (window, undefined) {
    if (typeof (JSON) == "undefined") {
        var jsUrl = getRootPath() + "/script/plugins/JSON-js-master/json2.js";
        document.write("<script type=\"text/javascript\" charset=\"UTF-8\" src=\"" + jsUrl + "\" ></script>");
    }
})(window);