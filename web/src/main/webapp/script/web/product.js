function subtotal(sliderId, countId, showFeeId, setting) {
	var max = 100, min = 0, value = 1, graduate = null;
	var slideCallbackFunction = null, inputChangeCallbackFunction = null;
	if (typeof (setting) == "object") {
		max = typeof (setting.max) == "number" ? setting.max : max;
		min = typeof (setting.min) == "number" ? setting.min : min;
		value = typeof (setting.value) == "number" ? setting.value : value;
		graduate = setting.graduate instanceof Array ? setting.graduate : graduate;
		slideCallbackFunction = typeof (setting.slideCallback) == "function" ? setting.slideCallback : slideCallbackFunction;
		inputChangeCallbackFunction = typeof (setting.inputChangeCallback) == "function" ? setting.inputChangeCallback : inputChangeCallbackFunction;
	}
	$("#" + sliderId).slider({
		range : "min",
		value : value,
		min : min,
		max : max,
		slide : function(event, ui) {
			$("#" + countId).val(ui.value);
			slideCallback("#" + showFeeId, slideCallbackFunction, event, ui);
		}
	});
	$("#" + countId).change(function(event) {
		var slider = $("#" + sliderId).slider("value");
		if (!integer_validate($(this).val())) {
			$(this).val(slider);
			return;
		}
		var amount = $(this).val();
		// var max = $("#" + sliderId).slider("value");
		if (parseInt(amount) > max) {
			$(this).val(max);
			amount = max;
		} else if (parseInt(amount) < min) {
			$(this).val(min);
			amount = min;
		}
		$("#" + sliderId).slider("option", "value", amount);
		inputChangeCallback("#" + showFeeId, slideCallbackFunction, event);
	});
	$("#" + countId).val($("#" + sliderId).slider("value"));
	// var ddd = $("#" + countId).val();
	if (graduate != null && typeof (graduate) == "object") {
		var graduateLen = graduate.length;
		var averageWidth = 1 / graduateLen;
		var _id, _name, _width, unit, innerHtml, showBorder, graduateHTMLObject = new Array();
		for (var index = 0; index < graduateLen; index++) {
			var graduateObject = graduate[index];
			_width = (typeof (graduateObject.width) == "string" || typeof (graduateObject.width) == "number") ? graduateObject.width : averageWidth;
			innerHtml = (graduateObject.innerHtml == null || typeof (graduateObject.innerHtml) == "undefined") ? "" : graduateObject.innerHtml;
			_id = (graduateObject.id != null && typeof (graduateObject.id) != "undefined") ? graduateObject.id : null;
			_name = (graduateObject.name != null && typeof (graduateObject.name) != "undefined") ? graduateObject.name : null;
			showBorder = (graduateObject.showBorder != null && typeof (graduateObject.showBorder) == "boolean") ? graduateObject.showBorder : true;
			var jqeryObject = _id == null ? (_name == null ? $("<span />") : $("[name='" + _name + "']")) : $("#" + _id);
			if (!showBorder) {
				jqeryObject.css("border", "none");
			}
			var maxStartIndex = innerHtml.indexOf("{", 0), maxEndIndex;
			if (maxStartIndex > -1) {
				maxEndIndex = innerHtml.indexOf("}", maxStartIndex);
				var expressionString = innerHtml.substring(maxStartIndex + 1, maxEndIndex);
				var expressionResult = eval(expressionString);
				innerHtml = innerHtml.replace("{" + expressionString + "}", expressionResult);
			}
			graduateHTMLObject.push(jqeryObject.width(typeof (graduateObject.width) == "number" ? (_width * 100) + "%" : _width).append(innerHtml));
		}
		$("#" + sliderId).prepend(graduateHTMLObject);
	}
}
function slideCallback(lbl, callBack, event, ui) {
	if (typeof (callBack) == "function") {
		callBack(lbl, event, ui);
	}
}
function inputChangeCallback(lbl, callBack, event) {
	if (typeof (callBack) == "function") {
		callBack(lbl, event);
	}
}
function integer_validate(src) {
	var regex = /^[\-]{0,1}[0-9]{1,8}$/;
	return regex.test(src);
}