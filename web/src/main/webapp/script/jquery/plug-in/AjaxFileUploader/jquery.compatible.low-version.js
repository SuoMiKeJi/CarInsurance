(function($) {
	jQuery.extend({
		handleError : function(setting, xmlhr, status, error) {
			if (setting.error) {
				setting.error.call(setting.context || setting, xmlhr, status, error);
			}
			if (setting.global) {
				(setting.context ? jQuery(setting.context) : jQuery.event).trigger("ajaxError", [ xmlhr, setting, error ]);
			}
		},
		httpData : function(xmlhr, type, setting) {
			var ct = xmlhr.getResponseHeader("content-type"), xml = type == "xml" || !type && ct && ct.indexOf("xml") >= 0, data = xml ? xmlhr.responseXML
					: xmlhr.responseText;
			if (xml && data.documentElement.tagName == "parsererror")
				throw "parsererror";
			if (setting && setting.dataFilter)
				data = setting.dataFilter(data, type);
			if (typeof data === "string") {
				if (type == "script")
					jQuery.globalEval(data);
				if (type == "json")
					data = window["eval"]("(" + data + ")");
			}
			return data;
		}
	});
})(jQuery);