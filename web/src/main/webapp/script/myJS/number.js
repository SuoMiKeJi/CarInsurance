/**
 * 1.给Number类型增加一个add方法，调用起来更加方便。
 * 
 * @param arg
 *            加数
 * @return
 */
Number.prototype.add = function(arg) {
	// var r1, r2, m;
	// try {
	// r1 = arg.toString().split(".")[1].length
	// } catch (e) {
	// r1 = 0
	// }
	// try {
	// r2 = this.toString().split(".")[1].length
	// } catch (e) {
	// r2 = 0
	// }
	// m = Math.pow(10, Math.max(r1, r2))
	// return (arg * m + this * m) / m;
	return (this * 10 + arg * 10) / 10;
}

/**
 * 2.给Number类型增加一个sub方法，调用起来更加方便。
 * 
 * @param arg
 *            减数
 * @return
 */
Number.prototype.sub = function(arg) {
	// var r1, r2, m, n;
	// try {
	// r1 = arg.toString().split(".")[1].length
	// } catch (e) {
	// r1 = 0
	// }
	// try {
	// r2 = this.toString().split(".")[1].length
	// } catch (e) {
	// r2 = 0
	// }
	// m = Math.pow(10, Math.max(r1, r2));
	// // last modify by deeka
	// // 动态控制精度长度
	// n = (r1 >= r2) ? r1 : r2;
	// return ((this * m - arg * m) / m).toFixed(n);
	return (this * 10 - arg * 10) / 10;
}

/**
 * 3.给Number类型增加一个mul方法，调用起来更加方便。
 * 
 * @param arg
 *            乘数
 * @return
 */
Number.prototype.mul = function(arg) {
	// var m = 0, s1 = arg.toString(), s2 = this.toString();
	// try {
	// m += s1.split(".")[1].length
	// } catch (e) {
	// }
	// try {
	// m += s2.split(".")[1].length
	// } catch (e) {
	// }
	// return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) /
	// Math.pow(10, m);
	return ((this * 10) * (arg * 10)) / 100;
}

/**
 * 4.给Number类型增加一个div方法，调用起来更加方便。
 * 
 * @param arg
 *            除数
 * @return
 */
Number.prototype.div = function(arg) {
	// var t1 = 0, t2 = 0, r1, r2;
	// try {
	// t1 = arg.toString().split(".")[1].length
	// } catch (e) {
	// }
	// try {
	// t2 = this.toString().split(".")[1].length
	// } catch (e) {
	// }
	// with (Math) {
	// r1 = Number(arg.toString().replace(".", ""))
	// r2 = Number(this.toString().replace(".", ""))
	// return (r1 / r2) * Math.pow(10, t2 - t1);
	// }
	return (this * 10) / (arg * 10);
}

/**
 * 5.格式化数据。
 * 
 * @param arg
 *            除数
 * @return
 */
Number.prototype.format = function(intCount, floatCount, f) {
	var returnString = null;
	var numberString = this.toString();
	var numberSplit = numberString.split("\.");
	if (typeof (f) == "boolean" && f) {
		var rgx = /(\d+)(\d{3})/;
		while (rgx.test(numberSplit[0])) {
			numberSplit[0] = numberSplit[0].replace(rgx, '$1' + ',' + '$2');
		}
	}
	if (typeof (intCount) == "number" && intCount % 1 == 0) {
		if (numberSplit[0].lenght == intCount) {
			returnString = numberSplit[0];
		} else if (numberSplit[0].lenght > intCount) {
			returnString = numberSplit[0];
		} else if (numberSplit[0].lenght < intCount) {
			var perfix = "00000000000000000000000000000000000000000000000000000000000000000000000";
			returnString = perfix.substring(0, intCount - numberSplit[0].lenght) + numberString;
		}
	} else {
		returnString = numberSplit[0];
	}
	if (typeof (floatCount) == "number" && floatCount % 1 == 0) {
		returnString += ".";
		if (numberSplit[1].lenght == floatCount) {
			returnString += numberSplit[1];
		} else if (numberSplit[1].lenght > floatCount) {
			returnString += numberSplit[1].substring(0, floatCount);
		} else if (numberSplit[1].lenght < floatCount) {
			var perfix = "00000000000000000000000000000000000000000000000000000000000000000000000";
			returnString += numberSplit[1] + perfix.substring(0, floatCount - numberSplit[1].lenght);
		}
	} else {
		if (numberSplit.length > 1) {
			returnString += ".";
			returnString += numberSplit[1];
		}
	}
	return returnString;
}

/**
 * 3.函数功能：控制键盘输入，只允许数字键录入整数，支持IE和FF。
 * 
 * @param keyEvent
 *            事件对象
 * @return
 */
function intOnly(keyEvent) {
	var iKeyCode = window.event ? keyEvent.keyCode : keyEvent.which;
	if (!(iKeyCode >= 48 && iKeyCode <= 57)) {
		if (navigator.userAgent.indexOf("MSIE") > 0 && parseInt(navigator.appVersion) >= 4) {
			keyEvent.returnValue = false;
		} else {
			if (navigator.userAgent.indexOf("Firefox") > 0) {
				keyEvent.preventDefault();
			}
		}
	}
}

/**
 * 4.函数功能：控制键盘输入，只允许数字键录入小数，支持IE和FF。
 * 
 * @param keyEvent
 *            事件对象
 * @return
 */
function floatOnly(keyEvent) {
	var iKeyCode = window.event ? keyEvent.keyCode : keyEvent.which;
	if (!(((iKeyCode >= 48) && (iKeyCode <= 57)) || (iKeyCode == 13) || (iKeyCode == 46))) {
		if (navigator.userAgent.indexOf("MSIE") > 0 && parseInt(navigator.appVersion) >= 4) {
			keyEvent.returnValue = false;
		} else {
			if (navigator.userAgent.indexOf("Firefox") > 0) {
				keyEvent.preventDefault();
			}
		}
	}
}
