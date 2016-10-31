/**
 * 1、函数功能：验证图片格式。jpg、gif、png、jpeg
 */
function isImage(imageName) {
	var reg2 = /^(\s|\S)+(jpg|gif|png|jpeg)+$/;
	return reg2.test(imageName);
}

/**
 * 2、函数功能：验证字符串是否只有数字和英文
 */
function mustNumAndEnChar(checkedString) {
	var reg = /^[0-9a-zA-Z]{1,}$/;
	return reg.test(checkedString);
}

/**
 * 3、函数功能：验证字符串是否只有数字、英文和下划线
 */
function mustNumAndEnCharAndUnderscore(checkedString) {
	var reg = /^[0-9a-zA-Z_]{1,}$/;
	return reg.test(checkedString);
}

/**
 * 4、函数功能：验证字符串是否只有数字、英文和中划线
 */
function mustNumAndEnCharAndIsScored(checkedString) {
	var reg = /^[0-9a-zA-Z\-]{1,}$/;
	return reg.test(checkedString);
}

/**
 * 5、函数功能：验证字符串是否只有数字、英文、中划线和下划线
 */
function mustNumAndEnCharAndUnderscoreAndIsScored(checkedString) {
	var reg = /^[0-9a-zA-Z_\-]{1,}$/;
	return reg.test(checkedString);
}

/**
 * 6、函数功能：验证字符串是否一片URL
 * 
 * 验证的情况：IP、域名（domain）、ftp、二级域名、域名中的文件、这域名加上端口。
 */
function mustURL(checkedURL) {
	var strRegex = "^((https|http|ftp|rtsp|mms)?://)" + "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" // ftp的user@
			+ "(([0-9]{1,3}.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
			+ "|" // 允许IP和DOMAIN（域名）
			+ "([0-9a-z_!~*'()-]+.)*" // 域名- www.
			+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]." // 二级域名
			+ "[a-z]{2,6})" // first level domain- .com or .museum
			+ "(:[0-9]{1,4})?" // 端口- :80
			+ "((/?)|" // a slash isn't required if there is no file name
			+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
	var reg = new RegExp(strRegex);
	return reg.test(checkedURL);
}

/**
 * 7、函数功能：格式化网站路径
 * 
 * JS库：string.js
 */
function formarWebPath(webPath) {
	if (typeof (webPath) != "string") {
		return "";
	}
	var tempPathAndName = webPath;
	for (; tempPathAndName.indexOf("\\") > 0;) {
		tempPathAndName = tempPathAndName.replace("\\", "/");
	}
	for (; tempPathAndName.indexOf("//") > 0;) {
		tempPathAndName = tempPathAndName.replace("//", "/");
	}
	if (tempPathAndName.endWith("/")) {
		tempPathAndName = tempPathAndName.substring(0, tempPathAndName.length() - 1);
	}
	tempPathAndName = tempPathAndName.replace(":/", "://");
	return tempPathAndName;
}
/**
 * 8、函数功能：通过ID、NAME、TAGNAME获得元素对象。
 * 
 * @param obj
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 */
function getElementByIdOrNameOrTagname(obj) {
	var lastObject = null;
	if (obj && typeof obj == "object") {
		lastObject = obj;
	} else if (obj && typeof obj == "string") {
		var id_or_name_or_tag = obj;
		var tempObject = document.getElementById(id_or_name_or_tag);
		if (tempObject && typeof tempObject == "object") {
			lastObject = tempObject;
		} else if (!tempObject || typeof tempObject == "string") {
			var tempObjects = document.getElementsByName(id_or_name_or_tag);
			if (tempObjects && typeof tempObjects == "object" && tempObjects.length > 0) {
				tempObject = tempObjects[0];
				if (tempObject && typeof tempObject == "object") {
					lastObject = tempObject;
				} else if (!tempObject || typeof tempObject == "string") {
					tempObjects = document.getElementsByTagName(id_or_name_or_tag);
					if (tempObjects && typeof tempObjects == "object" && tempObjects.length > 0) {
						tempObject = tempObjects[0];
						if (tempObject && typeof tempObject == "object") {
							lastObject = tempObject;
						} else if (!tempObject || typeof tempObject == "string") {
							lastObject = null;
						}
					}
				}
			}
		}
	}
	return lastObject;
}

/**
 * 9、函数功能：清空元素的value属性。
 * 
 * @param obj
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 * @param message
 *            提示信息。
 * @param isForced
 *            是否强制赋值。
 */
function clearValue(obj, message, isForced) {
	var tempObject = getElementByIdOrNameOrTagname(obj);
	var isClear = false;
	if (isForced == null || typeof isForced == "undefined") {
		isForced = true;
	}
	if (tempObject && typeof tempObject == "object") {
		if (isForced) {
			isClear = true;
		} else {
			if (tempObject.value && tempObject.value == message) {
				isClear = true;
			} else {
				isClear = false;
			}
		}
		if (isClear) {
			tempObject.value = "";
		}
	} else {
		alert("对象不存在！");
	}
}

/**
 * 10、函数功能：设置元素的value属性。
 * 
 * JS库：string.js
 * 
 * @param obj
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 * @param value
 *            要赋的值。
 * @param isForced
 *            是否强制赋值。
 * @param textColor
 *            不重新赋值时，字体的颜色。
 * @param defaultColor
 *            重新赋值时，字体的颜色。
 */
function setValue(obj, value, isForced, textColor, defaultColor) {
	var tempObject = getElementByIdOrNameOrTagname(obj);
	var isSet = false;
	if (tempObject && typeof tempObject == "object") {
		if (isForced) {
			isSet = true;
		} else {
			if (tempObject.value && !tempObject.value.isNull()) {
				isSet = false;
			} else {
				isSet = true;
			}
		}
		if (isSet) {
			tempObject.value = value;
			if (defaultColor && !defaultColor.isNull()) {
				tempObject.style.color = defaultColor;
			} else {
				tempObject.style.color = "";
			}
		} else {
			if (textColor) {
				tempObject.style.color = textColor;
			}
		}
	} else {
		alert("对象不存在！");
	}
}

/**
 * 11、函数功能：清空元素的InnerHtml属性。
 * 
 * @param obj
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 * @param message
 *            提示信息。
 * @param isForced
 *            是否强制赋值。
 */
function clearInnerHtml(obj, message, isForced) {
	var tempObject = getElementByIdOrNameOrTagname(obj);
	var isClear = false;
	if (isForced == null || typeof isForced == "undefined") {
		isForced = true;
	}
	if (tempObject && typeof tempObject == "object") {
		if (isForced) {
			isClear = true;
		} else {
			if (tempObject.innerHTML && tempObject.innerHTML == message) {
				isClear = true;
			} else {
				isClear = false;
			}
		}
		if (isClear) {
			tempObject.innerHTML = "";
		}
	} else {
		alert("对象不存在！");
	}
}

/**
 * 12、函数功能：设置元素的InnerHtml属性。
 * 
 * JS库：string.js
 * 
 * @param obj
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 * @param value
 *            要赋的值。
 * @param isForced
 *            是否强制赋值。
 * @param textColor
 *            不重新赋值时，字体的颜色。
 * @param defaultColor
 *            重新赋值时，字体的颜色。
 */
function setInnerHtml(obj, value, isForced, textColor, defaultColor) {
	var tempObject = getElementByIdOrNameOrTagname(obj);
	var isSet = false;
	if (tempObject && typeof tempObject == "object") {
		if (isForced) {
			isSet = true;
		} else {
			if (tempObject.innerHTML && !tempObject.innerHTML.isNull()) {
				isSet = false;
			} else {
				isSet = true;
			}
		}
		if (isSet) {
			tempObject.innerHTML = value;
			if (defaultColor && !defaultColor.isNull()) {
				tempObject.style.color = defaultColor;
			} else {
				tempObject.style.color = "";
			}
		} else {
			if (textColor) {
				tempObject.style.color = textColor;
			}
		}
	} else {
		alert("对象不存在！");
	}
}

/**
 * 13、函数功能：通过Label，去选择它里面的Checkbox。
 * 
 * @param lable
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 */
function checkCheckboxByLabel(label) {
	var labelObject = getElementByIdOrNameOrTagname(label);
	var checkboxObject = labelObject.firstChild;
	checkboxObject.checked = !checkboxObject.checked;
}

/**
 * 14、函数功能：通过Label，去选择它里面的Radio。
 * 
 * @param label
 *            可以是元素对象本身、元素对象的ID、元素对象的name或元素对象的tagname。
 */
function checkRadioByLabel(label) {
	var labelObject = getElementByIdOrNameOrTagname(label);
	var radioObject = labelObject.firstChild;
	radioObject.checked = true;
}

/**
 * 15、函数功能：打印指定区域
 * 
 * @param {Object}
 *            oper
 */
function preview(oper) {
	if (oper < 10) {
		bdhtml = window.document.body.innerHTML;// 获取当前页的html代码
		sprnstr = "<!--startprint" + oper + "-->";// 设置打印开始区域
		eprnstr = "<!--endprint" + oper + "-->";// 设置打印结束区域
		prnhtml = bdhtml.substring(bdhtml.indexOf(sprnstr) + 18); // 从开始代码向后取html
		prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));// 从结束代码向前取html
		window.document.body.innerHTML = prnhtml;
		window.print();
		window.document.body.innerHTML = bdhtml;
	} else {
		window.print();
	}
}

/**
 * 16、函数功能：获得单选框的值
 * 
 * JS库：jquery.js
 * 
 * @param radioName
 *            单选框的名称
 * @returns
 */
function getRadioValue(radioName) {
	var radios = $("[name='" + radioName + "']");
	var returnValue = null;
	if (radios && radios.length > 0) {
		for (var index = 0; index < radios.length; index++) {
			if (radios[index].checked) {
				returnValue = radios[index].value;
			}
		}
	}
	return returnValue;
}

/**
 * 17、函数功能：设置单选框
 * 
 * JS库：jquery.js
 * 
 * @param radioName
 *            单选框的名称
 * @param radioValue
 *            要设置的单选框的值
 */
function setRadioValue(radioName, radioValue) {
	var radios = $("[name='" + radioName + "']");
	if (radios && radios.length > 0) {
		for (var index = 0; index < radios.length; index++) {
			if (radios[index].value == radioValue) {
				radios[index].checked = true;
			} else {
				radios[index].checked = false;
			}
		}
	}
}

/**
 * 18、函数功能：显示文件域和移除文件域后面的提示文字
 * 
 * JS库：jquery.js
 * 
 * @param uploadFileId
 *            文件域ID
 * @param showId
 *            展示图片的ID(回显)
 * @param defaultPictureShow
 *            默认图片的路径(如果showId没有设置，此属性无效)
 * @param isResetSave
 *            上传图片成功后点击取消按钮时，是否重置图片路径要保存的ID(saveId存在时，有效)
 * @param saveId
 *            返回的图片路径要保存的ID
 */
function reUpload(uploadFileId, showId, defaultPictureShow, isResetSave, saveId) {
	if (typeof (uploadFileId) != "string" || uploadFileId.isNull()) {
		alert("没有上传的文件域ID！");
		return null;
	}
	if (typeof (isResetSave) != "boolean") {
		isResetSave = false;
	}
	$("#" + uploadFileId).show().next("span").remove("span");
	if (typeof (showId) == "string") {
		var showImgObject = $("#" + showId);
		if (typeof (showImgObject) == "object") {
			showImgObject.attr("src", defaultPictureShow);
		}
	}
	if (isResetSave && typeof (saveId) == "string") {
		var saveObject = $("#" + saveId);
		if (typeof (saveObject) == "object") {
			saveObject.val("");
		}
	}
}

/**
 * 19、函数功能：上传图片
 * 
 * JS库：string.js、jquery.js和ajaxfileupload.js
 * 
 * 服务端返回的数据类型：JSON
 * 
 * 服务端返回的数据格式：{"status":200,"message":"文件上传成功！","data":{"relativePath":"mobile/0/code/20120626/1340725807015.gif"}}
 * 
 * 最简调用方式：uploadFile(rootUrl, imageRootUrl, uploadUrl, uploadFileId, saveId)
 * 
 * @param rootUrl
 *            本项目的根路径
 * @param imageRootUrl
 *            访问图片的根路径(如果showId没有设置，此属性无效)
 * @param uploadUrl
 *            上传文件的接口路径
 * @param uploadFileId
 *            上传的文件域ID
 * @param saveId
 *            返回的图片路径要保存的ID
 * @param showId
 *            展示图片的ID(回显)
 * @param defaultPictureShow
 *            默认图片的路径(如果showId没有设置，此属性无效)
 * @param loadingImgId
 *            上传图片时，服务器没有响应之前展示的图片ID
 * @param successIsHiddenFileInput
 *            上传图片成功时，是否隐藏文件域
 * @param isShowUpladFileName
 *            上传图片成功时，是否显示上传的文件名称(successIsHiddenFileInput为true时，有效)，默认显示返回的文件名。
 * @param cancelImgUrl
 *            上传图片成功时，取消按钮的图片路径(successIsHiddenFileInput为true时，有效)
 * @param isResetSave
 *            上传图片成功后点击取消按钮时，是否重置图片路径要保存的ID(successIsHiddenFileInput为true和saveId存在时，有效)
 */
function uploadFile(rootUrl, imageRootUrl, uploadUrl, uploadFileId, saveId, showId, defaultPictureShow, loadingImgId, successIsHiddenFileInput, isShowUpladFileName, cancelImgUrl, isResetSave) {
	if (typeof (uploadUrl) != "string" || uploadUrl.isNull()) {
		alert("没有上传接口的URL！");
		return null;
	} else if (typeof (uploadFileId) != "string" || uploadFileId.isNull()) {
		alert("没有上传的文件域ID！");
		return null;
	}
	if (typeof (rootUrl) == "string" && !rootUrl.isNull() && !rootUrl.endWith("/")) {
		rootUrl += "/";
	}
	if (typeof (imageRootUrl) == "string" && !imageRootUrl.isNull() && !imageRootUrl.endWith("/")) {
		imageRootUrl += "/";
	}
	var realUploadUrl = null;
	if (typeof (uploadUrl) == "string" && !uploadUrl.isNull()) {
		if (uploadUrl.toUpperCase().startWith("HTTP")) {
			realUploadUrl = uploadUrl;
		} else if (uploadUrl.startWith("/")) {
			realUploadUrl = rootUrl + uploadUrl.substring(1);
		} else {
			realUploadUrl = rootUrl + uploadUrl;
		}
	}
	var imgObject = $("#" + uploadFileId).next("img");
	if (typeof (loadingImgId) == "string" && !loadingImgId.isNull()) {
		imgObject = $("#" + loadingImgId);
	}
	if (typeof (successIsHiddenFileInput) != "boolean") {
		successIsHiddenFileInput = false;
	}
	if (typeof (isResetSave) != "boolean") {
		isResetSave = false;
	}
	if (typeof (isShowUpladFileName) != "boolean") {
		isShowUpladFileName = false;
	}
	if (typeof (imgObject) == "object") {
		imgObject.ajaxStart(function() {
			if (imgObject.attr("id") && $(this).attr("id") && imgObject.attr("id") == $(this).attr("id")) {
				$(this).show();
			}
		})/* 开始上传文件时显示一个图片 */
		.ajaxComplete(function() {
			$(this).hide();
		});/* 文件上传完成将图片隐藏起来 */
	}
	var uploadFileName = $("#" + uploadFileId).val();
	jQuery.ajaxFileUpload({
		url : realUploadUrl, /* 你处理上传文件的服务端 */
		secureuri : false, /* 与页面处理代码中file相对应的ID值 */
		fileElementId : uploadFileId,
		dataType : 'json', /* 返回数据类型:text，xml，json，html,scritp,jsonp五种 */
		beforeSend : function(XMLHttpRequest) {
			this; /* 调用本次AJAX请求时传递的options参数 */
		},
		success : function(data) {
			/* 从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量 */
			if (data) {
				if (data.toString().trim().toUpperCase().indexOf("<HTML>") == 0) {
					alert(data);
				} else {
					if (saveId && typeof (saveId) == "string") {
						var saveObject = $("#" + saveId);
						if (saveObject) {
							saveObject.val(data.data.relativePath);
						}
					}
					if (showId && typeof (showId) == "string") {
						var showObject = $("#" + showId);
						if (showObject) {
							var srcString = "";
							if (data.status == 200) {
								srcString = imageRootUrl + data.data.relativePath;
							} else {
								srcString = defaultPictureShow;
							}
							showObject.attr("src", srcString);
						}
					}
					if (successIsHiddenFileInput) {
						var formarWebPathString = "";
						if (isShowUpladFileName) {
							formarWebPathString = formarWebPath(uploadFileName);
						} else {
							formarWebPathString = formarWebPath(data.data.relativePath);
						}
						var strings = formarWebPathString.split("/");
						var fileName = strings[strings.length - 1];

						var uploadFileObject = $("#" + uploadFileId);

						var cancelImgObject = "<img src='" + rootUrl + "bees/images/uploadify-cancel.png'/>";
						if (cancelImgUrl && typeof (cancelImgUrl) == "string") {
							cancelImgObject = "<img src='" + cancelImgUrl + "'/>";
						}

						var cancelString = "<a href='javascript:reUpload(\"" + uploadFileId + "\", \"" + showId + "\", \"" + defaultPictureShow + "\", " + isResetSave + ", \"" + saveId + "\");'>" + cancelImgObject + "</a>";

						var spanString = "<span class='_fileUpload_return'><span class='_fileUpload_return_info'>" + fileName + "</span><span class='_fileUpload_return_cancel'>" + cancelString + "</span></span>";

						uploadFileObject.hide().after(spanString);
					}
				}
			} else {
				alert("无数据返回！");
			}
		},
		error : function(data, status, e) {/* 服务器响应失败处理函数 */
			this;
		}
	});
}

/**
 * 20、函数功能：验证文本框长度。
 * 
 * @param idOrNameOrTagnameOrObject
 *            页面元素的ID或NAME或TAGNAME或元素本身。
 * @param maxBytesLength
 *            最长的字节数。
 */
function checkValueBytesLength(idOrNameOrTagnameOrObject, maxBytesLength) {
	var obj = getElementByIdOrNameOrTagname(idOrNameOrTagnameOrObject);
	if (!obj || typeof (obj) != "object") {
		return;
	}
	var jqueryObject = $(obj);
	if (!jqueryObject.val().checkStringLengthByReg(maxBytesLength)) {
		alert("输入的文字不能多于" + maxBytesLength + "个英文或" + (maxBytesLength / 2) + "个汉字！");
		var isTrue = true;
		var realValue = "";
		if (jqueryObject.val() && typeof (jqueryObject.val()) == "string") {
			var index = 0;
			while (isTrue) {
				var tempValue = realValue + jqueryObject.val().substring(index, index + 1);
				isTrue = tempValue.checkStringLengthByReg(maxBytesLength);
				index++;
				if (isTrue && index < jqueryObject.val().length) {
					realValue = tempValue;
				} else {
					break;
				}
			}
		}
		jqueryObject.val(realValue);
	}
}

/**
 * 21、函数功能：验证文本域的长度。
 * 
 * @param idOrNameOrTagnameOrObject
 *            页面元素的ID或NAME或TAGNAME或元素本身。
 * @param maxBytesLength
 *            最长的字节数。
 */
function checkHtmlBytesLength(idOrNameOrTagnameOrObject, maxBytesLength) {
	var obj = getElementByIdOrNameOrTagname(idOrNameOrTagnameOrObject);
	if (!obj || typeof (obj) != "object") {
		return;
	}
	var jqueryObject = $(obj);
	if (!jqueryObject.val().checkStringLengthByReg(maxBytesLength)) {
		alert("输入的文字不能多于" + maxBytesLength + "个英文或" + (maxBytesLength / 2) + "个汉字！");
		var isTrue = true;
		var realValue = "";
		if (jqueryObject.val() && typeof (jqueryObject.val()) == "string") {
			var index = 0;
			while (isTrue) {
				var tempValue = realValue + jqueryObject.val().substring(index, index + 1);
				isTrue = tempValue.checkStringLengthByReg(maxBytesLength);
				index++;
				if (isTrue && index < jqueryObject.val().length) {
					realValue = tempValue;
				} else {
					break;
				}
			}
		}
		jqueryObject.val(realValue);
	}
}

/**
 * 22、函数功能：图片压缩显示
 * 
 * @param ImgD
 *            image对象
 * @param preWidth
 *            显示宽度，默认400.
 * @param preHeight
 *            显示高度，默认300.
 * @param maxWidth
 *            最大宽度，默认1024.
 * @param maxHeight
 *            最大高度，默认768.
 */
function DrawImage(ImgD, preWidth, preHeight, maxWidth, maxHeight) {
	if (ImgD == null) {
		return;
	}
	var maxH, maxW, preW, preH;
	if (typeof (maxWidth) == "number") {
		maxW = maxWidth;
	} else {
		maxW = 1024;
	}
	if (typeof (maxHeight) == "number") {
		maxH = maxHeight;
	} else {
		maxH = 768;
	}
	if (typeof (preWidth) == "number") {
		preW = preWidth;
	} else {
		preW = 400;
	}
	if (typeof (preHeight) == "number") {
		preH = preHeight;
	} else {
		preH = 300;
	}
	var image = new Image();
	image.src = ImgD.src;
	if (image.width > maxW || image.height > maxH) {
		alert("图片尺寸过大，请选择" + maxW + "×" + maxH + "的图片！");
		return;
	}
	if (image.width > 0 && image.height > 0) {
		if (image.width / image.height >= preW / preH) {
			if (image.width > preW) {
				ImgD.width = preW;
				ImgD.height = (image.height * preW) / image.width;
			} else {
				ImgD.width = image.width;
				ImgD.height = image.height;
			}
			ImgD.alt = image.width + "×" + image.height;
		} else {
			if (image.height > preH) {
				ImgD.height = preH;
				ImgD.width = (image.width * preH) / image.height;
			} else {
				ImgD.width = image.width;
				ImgD.height = image.height;
			}
			ImgD.alt = image.width + "×" + image.height;
		}
	}
}

/**
 * 23、函数功能：图片压缩显示
 * 
 * @param imageSrc
 *            image对象
 * @param minWidth
 *            最大宽度，默认3.
 * @param minHeight
 *            最大高度，默认4.
 * @param maxWidth
 *            最大宽度，默认1024.
 * @param maxHeight
 *            最大高度，默认768.
 */
function checkImageSize(imageSrc, minWidth, minHeight, maxWidth, maxHeight) {
	if (imageSrc == null) {
		return false;
	}
	if (!checkFormat(imageSrc, "JPG,GIF,PNG,JPEG")) {
		return false;
	}
	var maxH, maxW, minW, minH;
	if (typeof (maxWidth) == "number") {
		maxW = maxWidth;
	} else {
		maxW = 1024;
	}
	if (typeof (maxHeight) == "number") {
		maxH = maxHeight;
	} else {
		maxH = 768;
	}
	if (typeof (minWidth) == "number") {
		minW = minWidth;
	} else {
		minW = 4;
	}
	if (typeof (minHeight) == "number") {
		minH = minHeight;
	} else {
		minH = 3;
	}
	var image = new Image();
	image.src = imageSrc;
	if (image.width > maxW || image.height > maxH) {
		alert("图片尺寸过大，请选择" + maxW + "×" + maxH + "的图片！");
		return false;
	} else if (image.width < minW || image.height < minH) {
		alert("图片尺寸过小，请选择" + minW + "×" + minH + "的图片！");
		return false;
	}
	return true;
}

/**
 * 24、函数功能：验证文件类型，
 * 
 * @param filePath
 *            文件名，可以包含路径。
 * @param extNames
 *            文件格式列表。默认为"JPG,GIF,PNG,JPEG,BMP".
 * @returns {Boolean}
 */
function checkFormat(filePath, extNames) {
	if (typeof (filePath) != "string") {
		return false;
	}
	var extName;
	if (typeof (extNames) == "string") {
		extName = extNames.toUpperCase();
	} else {
		extName = "JPG,GIF,PNG,JPEG,BMP";
	}
	var i = filePath.lastIndexOf(".");
	var len = filePath.length;
	var str = filePath.substring(len, i + 1);
	if (extName.indexOf(str.toUpperCase()) < 0) {
		alert("请选择正确的文件类型!只支持" + extName + "！");
		return false;
	}
	return true;
}

/**
 * 25、函数功能：加载XML
 * 
 * @param xmlString
 *            XML字符串
 */
loadXML = function(xmlString) {
	var xmlDoc = null;
	// 判断浏览器的类型
	// 支持IE浏览器
	if (!window.DOMParser && window.ActiveXObject) { // window.DOMParser
		// 判断是否是非ie浏览器
		var xmlDomVersions = [ 'MSXML.2.DOMDocument.6.0', 'MSXML.2.DOMDocument.3.0', 'Microsoft.XMLDOM' ];
		for (var i = 0; i < xmlDomVersions.length; i++) {
			try {
				xmlDoc = new ActiveXObject(xmlDomVersions[i]);
				xmlDoc.async = false;
				xmlDoc.loadXML(xmlString); // loadXML方法载入xml字符串
				break;
			} catch (e) {
			}
		}
	}
	// 支持Mozilla浏览器
	else if (window.DOMParser && document.implementation && document.implementation.createDocument) {
		try {
			domParser = new DOMParser();
			xmlDoc = domParser.parseFromString(xmlString, 'text/xml');
		} catch (e) {
		}
	} else {
		return null;
	}
	return xmlDoc;
};

/**
 * 26、函数功能：对xml对象进行判断
 * 
 * @param xmlString
 *            XML字符串
 */
checkXMLDocObj = function(xmlString) {
	var xmlDoc = loadXML(xmlString);
	if (xmlDoc == null) {
		alert('您的浏览器不支持xml文件读取,于是本页面禁止您的操作,推荐使用IE5.0以上可以解决此问题!');
	}
	return xmlDoc;
};

/**
 * 27、函数功能：验证文件类型
 * 
 * @param filePath
 *            文件名，可以包含路径。
 * @param type
 *            传入IMAGE、AUDIO、VIDEO。
 * @param isPrompt
 *            是否提示。是：弹出提示框，并返回boolean值；否：不弹提示框，返回提示字符串。
 * @returns {Boolean}
 */
function checkFileType(filePath, type, isPrompt) {
	var imageTypes = "JPG,JPEG,GIF,PNG";
	var audioTypes = "MP3";
	var videoTypes = "3GP,MP4";
	var index = filePath.lastIndexOf(".");
	var exeName = filePath.substring(index + 1);
	var promptString = null;
	if (type.toUpperCase() == "IMAGE") {
		if (imageTypes.indexOf(exeName.toUpperCase()) < 0) {
			promptString = "图片格式只支持：" + imageTypes;
		}
	} else if (type.toUpperCase() == "AUDIO") {
		if (audioTypes.indexOf(exeName.toUpperCase()) < 0) {
			promptString = "音频格式只支持：" + audioTypes;
		}
	} else if (type.toUpperCase() == "VIDEO") {
		if (videoTypes.indexOf(exeName.toUpperCase()) < 0) {
			promptString = "视频格式只支持：" + videoTypes;
		}
	}
	var result = null;
	if (typeof (isPrompt) == "boolean" && !isPrompt) {
		result = promptString;
	} else {
		if (promptString) {
			alert(promptString);
			result = false;
		} else {
			result = true;
		}
	}
	return result;
}

/**
 * 28、函数功能：获得文件类型
 * 
 * @param filePath
 *            文件名，可以包含路径。
 * @returns 图片返回IMAGE，音频返回AUDIO，视频返回VIDEO。
 */
function getFileType(filePath) {
	var fileType = null;
	var imageTypes = "JPG,JPEG,GIF,PNG,BMP,TIFF,PSD,SVG";
	var audioTypes = "MP3,MIDI,WMA,RA,RM,RMX,VQF,WAV,APE,CD";
	var videoTypes = "3GP,MP4,AVI,NAVI,DV-AVI,MPEG,DIVX,MOV,ASF,WMV,RMVB";
	var index = filePath.lastIndexOf(".");
	var exeName = filePath.substring(index + 1);
	if (imageTypes.indexOf(exeName.toUpperCase()) >= 0) {
		fileType = "IMAGE";
	} else if (audioTypes.indexOf(exeName.toUpperCase()) >= 0) {
		fileType = "AUDIO";
	} else if (videoTypes.indexOf(exeName.toUpperCase()) >= 0) {
		fileType = "VIDEO";
	}
	return fileType;
}

/**
 * 29、函数功能：获得文件大小
 * 
 * @param filePath
 *            文件名，可以包含路径。
 * @returns 文件大小数值。
 */
function getFileSize(filePath) {
	var image = new Image();
	image.dynsrc = filePath;
	return (image.fileSize);
}

/**
 * 30、函数功能：跳转到指定地址。
 * 
 * @param url
 *            访问地址。
 */
function forward(url, method) {
	if (method != null && typeof (method) == "string" && (method.toUpperCase() == "POST" || method.toUpperCase() == "GET")) {
		var action = url.substring(0, url.indexOf("?"));
		var queryString = url.substring(url.indexOf("?") + 1);
		var argsString = queryString.split("&");
		var parameters = new Array();
		for (var aIndex = 0; aIndex < argsString.length; aIndex++) {
			var args = argsString[aIndex].split("=");
			var parameter = {
				"name" : args[0],
				"value" : args[1]
			};
			parameters.push(parameter);
		}
		forwardByForm(action, method, parameters);
	} else {
		window.location = url;
	}
}

/**
 * 31、函数功能：模拟表单提交。
 * 
 * @param action
 *            提交地址，
 * @param method
 *            提交方法。POST或GET
 * @param parameters
 */
function forwardByForm(action, method, parameters) {
	var now = new Date();// 当前日期
	var newForm = document.createElement("form");
	newForm.setAttribute("id", "formId" + now.getMilliseconds());
	newForm.setAttribute("name", "formName" + now.getMilliseconds());
	newForm.setAttribute("method", method);
	newForm.setAttribute("action", action);
	newForm.innerHTML = "";
	for (var index = 0; index < parameters.length; index++) {
		var input = document.createElement("input");
		input.setAttribute("type", "hidden");
		input.setAttribute("name", parameters[index].name);
		input.setAttribute("value", parameters[index].value);
		newForm.appendChild(input);
	}
	newForm.submit();
}

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
var IDCard = (function() {
	var IDCardObject = {
		constant : {
			cityNo : {
				11 : "北京",
				12 : "天津",
				13 : "河北",
				14 : "山西",
				15 : "内蒙古",
				21 : "辽宁",
				22 : "吉林",
				23 : "黑龙江 ",
				31 : "上海",
				32 : "江苏",
				33 : "浙江",
				34 : "安徽",
				35 : "福建",
				36 : "江西",
				37 : "山东",
				41 : "河南",
				42 : "湖北 ",
				43 : "湖南",
				44 : "广东",
				45 : "广西",
				46 : "海南",
				50 : "重庆",
				51 : "四川",
				52 : "贵州",
				53 : "云南",
				54 : "西藏 ",
				61 : "陕西",
				62 : "甘肃",
				63 : "青海",
				64 : "宁夏",
				65 : "新疆",
				71 : "台湾",
				81 : "香港",
				82 : "澳门",
				91 : "国外 "
			},
			len : {
				15 : 15,
				18 : 18
			},
			checkType : {
				"simple" : 1,
				"perplexed" : 2,
				"strict" : 3
			},
			returnType : {
				"boolean" : 1,
				"string" : 2
			}
		},
		method : {
			"simple" : {
				check : function(IdCardNo, returnType) {
					var reg = /^(\d{6})(18|19|20)?(\d{2})([01]\d)([0123]\d)(\d{3})(\d|X)?$/;
					var message = null;
					var boolean = false;
					if (reg.test(IdCardNo)) {
						message = "身份证正确";
						boolean = true;
					} else {
						message = "身份证错误";
						boolean = false;
					}
					return returnType == IDCardObject.constant.returnType.boolean ? boolean : (returnType == IDCardObject.constant.returnType.string ? message : null);
				}
			},
			"perplexed" : {
				check_15 : function(IdCardNo, returnType) {
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
							return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
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
							return returnType == IDCardObject.constant.returnType.boolean ? true : (returnType == IDCardObject.constant.returnType.string ? message : null);
						}
					}
				},
				check_18 : function(IdCardNo, returnType) {
					var len = IdCardNo.length;
					if (len == 18) {
						var reg = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
						var arrSplit = IdCardNo.match(reg);
						// 检查生日日期是否正确
						var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
						var bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
						if (!bGoodDay) {
							message = "输入的身份证号里出生日期不对！";
							return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
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
								return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
							}
							message = IdCardNo;
							return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
						}
					}
				},
				check : function(IdCardNo, returnType) {
					IdCardNo = IdCardNo.toUpperCase();
					// 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。
					if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(IdCardNo))) {
						message = "输入的身份证号长度不对，或者号码不符合规定！";
						return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
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
					return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
				}
			},
			"strict" : {
				check : function(IdCardNo, returnType) {
					var message;
					var iSum = 0;
					var info = "";
					IDCardObject.constant.returnType.string
					if (!/^\d{17}(\d|x)$/i.test(IdCardNo)) {
						message = "Error:身份证不正确";
						return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
					}
					IdCardNo = IdCardNo.replace(/x$/i, "a");
					if (IDCardObject.constant.cityNo[parseInt(IdCardNo.substr(0, 2))] == null) {
						message = "Error:非法地区";
						return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
					}
					var sBirthday = IdCardNo.substr(6, 4) + "-" + Number(IdCardNo.substr(10, 2)) + "-" + Number(IdCardNo.substr(12, 2));
					var birthday = new Date(sBirthday.replace(/-/g, "/"))
					if (sBirthday != (birthday.getFullYear() + "-" + (birthday.getMonth() + 1) + "-" + birthday.getDate())) {
						message = "Error:非法生日";
						return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
					}
					for (var i = 17; i >= 0; i--) {
						iSum += (Math.pow(2, i) % 11) * parseInt(IdCardNo.charAt(17 - i), 11);
					}
					if (iSum % 11 != 1) {
						message = "Error:非法证号";
						return returnType == IDCardObject.constant.returnType.boolean ? false : (returnType == IDCardObject.constant.returnType.string ? message : null);
					}
					message = IDCardObject.constant.cityNo[parseInt(IdCardNo.substr(0, 2))] + "," + sBirthday + "," + (IdCardNo.substr(16, 1) % 2 ? "男" : "女");
					return returnType == IDCardObject.constant.returnType.boolean ? true : (returnType == IDCardObject.constant.returnType.string ? message : null);
				}
			}
		}
	};
	return {
		check : function(IdCardNo, returnType, checkType) {
			var returnObject = null;
			if (!returnType) {
				returnType = IDCardObject.constant.returnType.string;
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
})();
