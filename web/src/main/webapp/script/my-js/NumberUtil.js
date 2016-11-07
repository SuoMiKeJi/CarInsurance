/**
 * 1、函数功能：给Number类型增加一个add方法，调用起来更加方便。
 *
 * @param arg
 *            加数
 * @return {Number}
 */
Number.prototype.add = function (arg) {
    return (this * 10 + arg * 10) / 10;
};

/**
 * 2、函数功能：给Number类型增加一个sub方法，调用起来更加方便。
 *
 * @param arg
 *            减数
 * @return {Number}
 */
Number.prototype.sub = function (arg) {
    return (this * 10 - arg * 10) / 10;
};

/**
 * 3、函数功能：给Number类型增加一个mul方法，调用起来更加方便。
 *
 * @param arg
 *            乘数
 * @return {Number}
 */
Number.prototype.mul = function (arg) {
    return ((this * 10) * (arg * 10)) / 100;
};

/**
 * 4、函数功能：给Number类型增加一个div方法，调用起来更加方便。
 *
 * @param arg
 *            除数
 * @return {Number}
 */
Number.prototype.div = function (arg) {
    return (this * 10) / (arg * 10);
};

/**
 * 5、函数功能：格式化数据。
 *
 * @param intCount
 *            整数部分位数
 * @param floatCount
 *            小数部分位数
 * @param f
 *            整数三位分割
 * @return {String}
 */
Number.prototype.format = function (intCount, floatCount, f) {
    var returnString = null;
    var numberString = this.toString();
    var numberSplit = numberString.split("\.");
    var intString = null;
    if (typeof (f) == "boolean" && f) {
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(numberSplit[0])) {
            numberSplit[0] = numberSplit[0].replace(rgx, '$1' + ',' + '$2');
        }
    }
    if (typeof (intCount) == "number" && intCount % 1 == 0 && intCount > 0) {
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
    if (typeof (floatCount) == "number" && floatCount % 1 == 0 && floatCount > 0) {
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
};

