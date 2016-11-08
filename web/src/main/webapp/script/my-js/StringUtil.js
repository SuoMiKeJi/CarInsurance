/**
 * 1、函数功能：去除字符串两端的空格。
 *
 * @returns {String}
 */
String.prototype.trim = function () {
    return this.replace(/(^\s*)|(\s*$)/g, "");
};

/**
 * 2、函数功能：判断字符串是否为空。
 *
 * @returns {Boolean}
 */
String.prototype.isNull = function () {
    return this == null || this.trim() == "";
};

/**
 * 3、函数功能：判断字符串是以什么样的字符串结束的。
 *
 * @param str 结束标志。
 * @returns {Boolean}
 */
String.prototype.endWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length) {
        return false;
    }
    if (this.substring(this.length - str.length) == str) {
        return true;
    } else {
        return false;
    }
    return true;
};

/**
 * 4、函数功能：判断字符串是以什么样的字符串开头的。
 *
 * @param str 开始标志。
 * @returns {Boolean}
 */
String.prototype.startWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length) {
        return false;
    }
    if (this.substr(0, str.length) == str) {
        return true;
    } else {
        return false;
    }
    return true;
};

/**
 * 5、函数功能：替换字符串中全部匹配的字符串
 *
 * @param reg       正则表达式。
 * @param newString 新的子字符串。
 * @returns {String}
 */
String.prototype.replaceAll = function (reg, newString) {
    return this.replace(new RegExp(reg, "gm"), newString);
};

/**
 * 6、函数功能：将URL字符串转换这对象。
 *
 * @returns {URL}
 */
String.prototype.toURL = function () {
    var URL = {
        action: "",
        parameters: {}
    };
    var actionSplitIndex = this.indexOf("?", 0);
    var anchorSplitIndex = this.indexOf("#", 0);
    if (actionSplitIndex > 0) {
        URL.action = this.substring(0, actionSplitIndex);
    }
    if (anchorSplitIndex < 0) {
        anchorSplitIndex = this.length - 1;
    }
    var parametersString = this.substring(actionSplitIndex + 1, anchorSplitIndex);
    var parameterArray = parametersString.split("&");
    if (typeof (parameterArray) == "object" && parameterArray instanceof Array) {
        for (var index = 0; index < parameterArray.length; index++) {
            var parameterString = parameterArray[index];
            var parameterKeyValue = parameterString.split("=");
            if (typeof (parameterKeyValue) == "object" && parameterKeyValue instanceof Array) {
                URL.parameters[parameterKeyValue[0]] = parameterKeyValue[1];
            }
        }
    }
    URL.serialize = function () {
        var string = "";
        for (var key in this.parameters) {
            string = string + key + "=" + this.parameters[key] + "&";
        }
        if (string.endWith("&")) {
            string = string.substring(0, string.length - 2);
        }
        return string;
    };
    return URL;
};

/**
 * 7.函数功能：判断字符串是否为整型数字。
 *
 * @returns {Boolean}
 */
String.prototype.isInt = function () {
    var number = this.replace(/(^\s*)|(\s*$)/g, "");
    var regEx = /^\d+$/;
    return regEx.test(number);
};

/**
 * 8.函数功能：判断字符串是否为浮点型数字。
 *
 * @returns {Boolean}
 */
String.prototype.isFloat = function () {
    var number = this.replace(/(^\s*)|(\s*$)/g, "");
    var regEx = /^\d+\.\d+$/;
    return regEx.test(number);
};

/**
 * 9、函数功能：for循环检测字符串的字节长度。
 *
 * @returns {int}
 */
String.prototype.getBytesLengthByFor = function () {
    var byteLen = 0, len = this.length;
    if (this) {
        for (var index = 0; index < len; index++) {
            if (this.charCodeAt(index) > 255) {
                byteLen += 2;
            } else {
                byteLen++;
            }
        }
    } else {
        byteLen = 0;
    }
    return byteLen;
};

/**
 * 10、函数功能：正则表达式检测字符串的字节长度。
 *
 * @returns {int}
 */
String.prototype.getBytesLengthByReg = function () {
    return this.replace(/[^\x00-\xFF]/g, '**').length;
};

/**
 * 11、函数功能：验证字符串的长度(FOR循环)。
 *
 * @param maxByteslength 字符串的最大字节数。
 * @returns {Boolean}
 */
String.prototype.checkStringLengthByFor = function (maxByteslength) {
    if (this == null || maxByteslength == null || typeof (maxByteslength) != "number") {
        return false;
    }
    var stringBytesLength = this.getBytesLengthByFor();
    if (stringBytesLength > maxByteslength) {
        return false;
    } else {
        return true;
    }
};

/**
 * 12、函数功能：验证字符串的长度(正则表达式)。
 *
 * @param maxByteslength 字符串的最大字节数。
 * @returns {Boolean}
 */
String.prototype.checkStringLengthByReg = function (maxByteslength) {
    if (this == null || maxByteslength == null || typeof (maxByteslength) != "number") {
        return false;
    }
    var stringBytesLength = this.getBytesLengthByReg();
    if (stringBytesLength > maxByteslength) {
        return false;
    } else {
        return true;
    }
};

/**
 * 13、函数功能：将字符串转成 Int
 *
 * @returns {int}
 */
String.prototype.toInt = function () {
    return parseInt(this);
};

/**
 * 14、函数功能：将字符串转成 Float
 *
 * @returns {float}
 */
String.prototype.toFloat = function () {
    return parseFloat(this);
};

/**
 * 15、函数功能：格式化字符串。
 *
 * "20152130".format("(\\d{4})(\\d{2})(\\d{2})", "{1}-{2}-{3}") 返回 2015-21-30
 * "20152130".format("(\\d{4})(\\d{2})(\\d{2})", "{2}-{3}-{1}") 返回 21-30-2015
 *
 * @param regExp 正则表达式
 * @param format 返回的格式，{正则索引}
 * @returns {String}
 */
String.prototype.format = function (regExp, format) {
    var groups = this.match(regExp);
    for (var index = 1; index < groups.length; index++) {
        format = format.replace("{" + index + "}", groups[index]);
    }
    return format;
};
    