/**
 * 1、验证整型数字
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("int", function(value, element, params) {
	var reg = null;
	if (typeof (params) == "number") {
		reg = new RegExp("^\\d{" + params + "}$", [ "g" ]);
	} else if (params instanceof Array) {
		reg = new RegExp("^\\d{" + params[0] + "," + params[1] + "}$", [ "g" ]);
	} else {
		reg = /^\d+$/;
	}
	return reg.test(value);
}, function(params, element) {
	var message = null;
	if (typeof (params) == "number") {
		message = "必须是长度为{0}位的整型数字".replace("{0}", params);
	} else if (params instanceof Array) {
		message = "必须是长度从{0}到{1}位的整型数字".replace("{0}", params[0]).replace("{1}", params[1]);
	} else {
		message = "必须是整型数字";
	}
	return message;
});

/**
 * 2、验证浮点数字
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("float", function(value, element, params) {
	var reg = null;
	if (params instanceof Array) {
		reg = new RegExp("^\\d{1," + params[0] + "}(\\.\\d{1," + params[1] + "})?$", [ "g" ]);
	} else {
		reg = /^\d+(\.\d+)?$/;
	}
	return reg.test(value);
}, function(params, element) {
	var message = null;
	if (params instanceof Array) {
		message = "必须是浮点数字。且整数部分长度为{0},小数部分长度为{1}".replace("{0}", params[0]).replace("{1}", params[1]);
	} else {
		message = "必须是浮点数字";
	}
	return message;
});

/**
 * 3、验证电话号码
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("phone", function(value, element, params) {
	var reg = /^((([0\+]\d{2,3}-)?(0\d{2,3})-))?(\d{7,8})(-(\d{3,}))?$/;
	return reg.test(value);
}, "必须是正确的电话号码");

/**
 * 4、验证手机号
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("mobile", function(value, element, params) {
	var reg = /^(\+86 )?1\d{10}$/;
	return reg.test(value);
}, "必须是正确的手机号");

/**
 * 5、验证字符串必须为英文
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("en", function(value, element, params) {
	var reg = /^[a-zA-Z]+$/;
	return reg.test(value);
}, "必须是英文字母");

/**
 * 6、验证字符串必须为英文或数字
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("enAndNum", function(value, element, params) {
	var reg = /^[a-zA-Z\d]+$/;
	return reg.test(value);
}, "必须是英文字母或数字");

/**
 * 7、验证字符串必须为英文、数字或下划线
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("enAndNum_", function(value, element, params) {
	var reg = /^[a-zA-Z\d_]+$/;
	return reg.test(value);
}, "必须是英文字母、数字或下划线");

/**
 * 8、验证汉字
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("cn", function(value, element, params) {
	var reg = /^[\u4e00-\u9fa5]+$/;
	return reg.test(value);
}, "必须是汉字");

/**
 * 9、验证身份证号
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("IDCard", function(value, element, params) {
	return IDCard.check(value, 1, 3);
}, function(params, element) {
	var value = element.value;
	return IDCard.check(value, 2, 3);
});

/**
 * 10、指定默认值
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("requiredDefault", function(value, element, params) {
	var defaultValue = null;
	if (typeof (params) == "string") {
		defaultValue = params;
	}
	return value.length > 0 && value != defaultValue;
}, "此项为必填项");

/**
 * 11、大于
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("greaterTo", function(value, element, param) {
	var target = $(param);
	if (this.settings.onfocusout) {
		target.unbind(".validate-greaterTo").bind("blur.validate-greaterTo", function() {
			$(element).valid();
		});
	}
	return (typeof (target) == "object" && target.val().length > 0 && typeof (value) == "string" && value.length > 0) ? value > target.val() : true;
}, "Please enter the greater value again.");

/**
 * 12、大于等于
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("greaterEqualTo", function(value, element, param) {
	var target = $(param);
	if (this.settings.onfocusout) {
		target.unbind(".validate-greaterEqualTo").bind("blur.validate-greaterEqualTo", function() {
			$(element).valid();
		});
	}
	return (typeof (target) == "object" && target.val().length > 0 && typeof (value) == "string" && value.length > 0) ? value >= target.val() : true;
}, "Please enter the greater or equal value again.");

/**
 * 13、小于
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("lesserTo", function(value, element, param) {
	var target = $(param);
	if (this.settings.onfocusout) {
		target.unbind(".validate-lesserTo").bind("blur.validate-lesserTo", function() {
			$(element).valid();
		});
	}
	return (typeof (target) == "object" && target.val().length > 0 && typeof (value) == "string" && value.length > 0) ? value < target.val() : true;
}, "Please enter the lesser value again.");

/**
 * 14、小于等于
 * 
 * @author Jhon.Lee
 */
$.validator.addMethod("lesserEqualTo", function(value, element, param) {
	var target = $(param);
	if (this.settings.onfocusout) {
		target.unbind(".validate-lesserEqualTo").bind("blur.validate-lesserEqualTo", function() {
			$(element).valid();
		});
	}
	return (typeof (target) == "object" && target.val().length > 0 && typeof (value) == "string" && value.length > 0) ? value <= target.val() : true;
}, "Please enter the lesser or equal value again.");

// /**
// * 10、验证字符串必须为英文、数字或下划线
// *
// * @author Jhon.Lee
// */
// $.validator.addMethod("switch", function(value, element, params) {
// var result = null;
// if (typeof (params) == "object") {
// var selectorStr = params.selector;
// var chooseValue = params.chooseValue;
// var validate = params.validate;
// var selector = null;
// if (typeof (selectorStr) == "string") {
// selector = $("#" + selectorStr);
// if (typeof (selector) != "object") {
// selector = $("[name='" + selectorStr + "']");
// }
// }
// if (typeof (selector) == "object") {
// if (chooseValue == selector.val()) {
// if (typeof (validate) == "object") {
// }
// }
// }
// }
// return result;
// }, function(params, element) {
// var message = null;
// if (typeof (params) == "object") {
// var selectorStr = params.selector;
// var chooseValue = params.chooseValue;
// var validate = params.validate;
// var selector = null;
// if (typeof (selectorStr) == "string") {
// selector = $("#" + selectorStr);
// if (typeof (selector) != "object") {
// selector = $("[name='" + selectorStr + "']");
// }
// }
// if (typeof (selector) == "object") {
// if (chooseValue == selector.val()) {
// if (typeof (validate) == "object") {
// }
// }
// }
// }
// return message;
// });

//QQ号码验证
$.validator.addMethod("qq", function(value, element) {
	var tel = /^[1-9]\d{4,11}$/;
	return this.optional(element) || (tel.test(value));
}, "qq号码格式错误");

//IP地址验证
$.validator.addMethod("ip", function(value, element) {
	var ip = /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;
	return this.optional(element) || (ip.test(value) && (RegExp.$1 < 256 && RegExp.$2 < 256 && RegExp.$3 < 256 && RegExp.$4 < 256));
}, "Ip地址格式错误");

//
$.extend($.validator.messages, {
	specialCharValidate : "请不要输入特殊字符"
});
//特殊字符验证
$.validator.addMethod("specialCharValidate", function(value, element) {
	var pattern = new RegExp("[`~!@%#$^&*()=|{}':;',　\\[\\]<>/? \\.；：%……+￥（）【】‘”“'。，、？]");
	return this.optional(element) || !pattern.test(value);
}, jQuery.format(jQuery.validator.messages["specialCharValidate"]));
