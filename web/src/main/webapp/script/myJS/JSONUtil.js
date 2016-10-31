(function(window, undefined) {
	if (typeof (JSON) == "undefined") {
		var jsUrl = getRootPath() + "/script/plugins/JSON-js-master/json2.js";
		document.write("<script type=\"text/javascript\" charset=\"UTF-8\" src=\"" + jsUrl + "\" ></script>");
	}
})(window);
// js获取项目根路径，如： http://localhost:8083/uimcardprj
function getRootPath() {
	// 获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
	var url = window.document.location.href;
	// 获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
	var uri = window.document.location.pathname;
	var pos = url.indexOf(uri);
	// 获取主机地址，如： http://localhost:8083
	var localhostPaht = url.substring(0, pos);
	// 获取带"/"的项目名，如：/uimcardprj
	var projectName = uri.substring(0, uri.substr(1).indexOf('/') + 1);
	return (localhostPaht + projectName);
}