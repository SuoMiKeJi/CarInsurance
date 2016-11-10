/**
 *
 * 这个可以验证15位和18位的身份证，并且包含生日和校验位的验证。 如果有兴趣，还可以加上身份证所在地的验证，就是前6位有些数字合法有些数字不合法。
 *
 * @param IdCardNo
 *            身份证号
 * @param returnType
 *            返回的类型。1、BOOLEAN型；2、String型。
 * @param checkType
 *            验证类型。1、简单验证；2、复杂验证；3、严谨验证
 * @author Jhon.Lee
 * @returns
 */
(function (win) {
    var IDCardObject = {
        constant: {
            cityNo: {
                11: "北京",
                12: "天津",
                13: "河北",
                14: "山西",
                15: "内蒙古",
                21: "辽宁",
                22: "吉林",
                23: "黑龙江 ",
                31: "上海",
                32: "江苏",
                33: "浙江",
                34: "安徽",
                35: "福建",
                36: "江西",
                37: "山东",
                41: "河南",
                42: "湖北 ",
                43: "湖南",
                44: "广东",
                45: "广西",
                46: "海南",
                50: "重庆",
                51: "四川",
                52: "贵州",
                53: "云南",
                54: "西藏 ",
                61: "陕西",
                62: "甘肃",
                63: "青海",
                64: "宁夏",
                65: "新疆",
                71: "台湾",
                81: "香港",
                82: "澳门",
                91: "国外 "
            },
            len: {
                15: 15,
                18: 18
            },
            checkType: {
                "simple": 1,
                "perplexed": 2,
                "strict": 3
            },
            returnType: {
                Boolean: 1,
                String: 2
            }
        },
        method: {
            "simple": {
                check: function (IdCardNo, returnType) {
                    var reg = /^(\d{6})(18|19|20)?(\d{2})([01]\d)([0123]\d)(\d{3})(\d|X)?$/;
                    var message = null;
                    var success = false;
                    if (reg.test(IdCardNo)) {
                        message = "身份证正确";
                        success = true;
                    } else {
                        message = "身份证错误";
                        success = false;
                    }
                    return returnType == IDCardObject.constant.returnType.Boolean ? success : (returnType == IDCardObject.constant.returnType.String ? message : null);
                }
            },
            "perplexed": {
                check_15: function (IdCardNo, returnType) {
                    var message;
                    var len = IdCardNo.length;
                    if (len == 15) {
                        var reg = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
                        var arrSplit = IdCardNo.match(reg);
                        // 检查生日日期是否正确
                        var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3] + '/' + arrSplit[4]);
                        var bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
                        if (!bGoodDay) {
                            message = "输入的身份证号里出生日期不对！";
                            return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                        } else {
                            // 将15位身份证转成18位
                            // 校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                            var nTemp = 0, i;
                            IdCardNo = IdCardNo.substr(0, 6) + '19' + IdCardNo.substr(6, len - 6);
                            for (i = 0; i < 17; i++) {
                                nTemp += IdCardNo.substr(i, 1) * arrInt[i];
                            }
                            IdCardNo += arrCh[nTemp % 11];
                            message = IdCardNo;
                            return returnType == IDCardObject.constant.returnType.Boolean ? true : (returnType == IDCardObject.constant.returnType.String ? message : null);
                        }
                    }
                },
                check_18: function (IdCardNo, returnType) {
                    var len = IdCardNo.length;
                    if (len == 18) {
                        var reg = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
                        var arrSplit = IdCardNo.match(reg);
                        // 检查生日日期是否正确
                        var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
                        var bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
                        if (!bGoodDay) {
                            message = "输入的身份证号里出生日期不对！";
                            return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                        } else {
                            // 检验18位身份证的校验码是否正确。
                            // 校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                            var nTemp = 0, i;
                            for (i = 0; i < 17; i++) {
                                nTemp += IdCardNo.substr(i, 1) * arrInt[i];
                            }
                            var valnum = arrCh[nTemp % 11];
                            if (valnum != IdCardNo.substr(17, 1)) {
                                message = "18位身份证的校验码不正确！应该为：" + valnum;
                                return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                            }
                            message = IdCardNo;
                            return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                        }
                    }
                },
                check: function (IdCardNo, returnType) {
                    IdCardNo = IdCardNo.toUpperCase();
                    // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。
                    if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(IdCardNo))) {
                        message = "输入的身份证号长度不对，或者号码不符合规定！";
                        return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                    }
                    // 校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                    // 下面分别分析出生日期和校验位
                    var len = IdCardNo.length;
                    if (len == 15) {
                        return this.check_15(IdCardNo, returnType);
                    } else if (len = 18) {
                        return this.check_18(IdCardNo, returnType);
                    }
                    message = "身份证不正确";
                    return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                }
            },
            "strict": {
                check: function (IdCardNo, returnType) {
                    var message;
                    var iSum = 0;
                    var info = "";
                    IDCardObject.constant.returnType.String
                    if (!/^\d{17}(\d|x)$/i.test(IdCardNo)) {
                        message = "Error:身份证不正确";
                        return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                    }
                    IdCardNo = IdCardNo.replace(/x$/i, "a");
                    if (IDCardObject.constant.cityNo[parseInt(IdCardNo.substr(0, 2))] == null) {
                        message = "Error:非法地区";
                        return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                    }
                    var sBirthday = IdCardNo.substr(6, 4) + "-" + Number(IdCardNo.substr(10, 2)) + "-" + Number(IdCardNo.substr(12, 2));
                    var birthday = new Date(sBirthday.replace(/-/g, "/"))
                    if (sBirthday != (birthday.getFullYear() + "-" + (birthday.getMonth() + 1) + "-" + birthday.getDate())) {
                        message = "Error:非法生日";
                        return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                    }
                    for (var i = 17; i >= 0; i--) {
                        iSum += (Math.pow(2, i) % 11) * parseInt(IdCardNo.charAt(17 - i), 11);
                    }
                    if (iSum % 11 != 1) {
                        message = "Error:非法证号";
                        return returnType == IDCardObject.constant.returnType.Boolean ? false : (returnType == IDCardObject.constant.returnType.String ? message : null);
                    }
                    message = IDCardObject.constant.cityNo[parseInt(IdCardNo.substr(0, 2))] + "," + sBirthday + "," + (IdCardNo.substr(16, 1) % 2 ? "男" : "女");
                    return returnType == IDCardObject.constant.returnType.Boolean ? true : (returnType == IDCardObject.constant.returnType.String ? message : null);
                }
            }
        }
    };

    win.jlIDCard = {
        check: function (IdCardNo, returnType, checkType) {
            var returnObject = null;
            if (!returnType) {
                returnType = IDCardObject.constant.returnType.String;
            }
            if (!checkType) {
                checkType = IDCardObject.constant.checkType.simple;
            }
            if (checkType == IDCardObject.constant.checkType.simple) {
                returnObject = IDCardObject.method.simple.check(IdCardNo, returnType);
            } else if (checkType == IDCardObject.constant.checkType.perplexed) {
                returnObject = IDCardObject.method.perplexed.check(IdCardNo, returnType);
            } else if (checkType == IDCardObject.constant.checkType.strict) {
                returnObject = IDCardObject.method.strict.check(IdCardNo, returnType);
            }
            return returnObject;
        }
    };
})(window);
