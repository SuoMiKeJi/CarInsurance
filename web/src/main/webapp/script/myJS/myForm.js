var myForm = {
	field : {
		setValue : function(object, value) {
			var jObject = $(object);
			if (jObject.is("textarea")) {
				jObject.html(value);
			} else if (jObject.is("input") && (jObject.attr("type") == "text" || jObject.attr("type") == "password")) {
				jObject.val(value);
			}
		},
		changeType : function(object, newType) {
			var jObject = $(object);
			if (jObject.is("input")) {
				jObject.attr("type", newType);
			}
		},
		setDefault : function(object, defaultValue, emptyType, otherType) {
			$(object).val(defaultValue);
			$(object).focus(function(e) {
				if (this.value == defaultValue) {
					this.value = "";
					if (otherType)
						this.type = otherType;
					$(this).css("color", "#333");
				}
			});
			$(object).blur(function(e) {
				if (this.value == "") {
					if (emptyType)
						this.type = emptyType;
					this.value = defaultValue;
					$(this).css("color", "");
				}
			});
		}
	},
	submit : function(elementOrIdOrName, ops) {
		if (typeof (CKEDITOR) == "object" && typeof (CKEDITOR.instances) == "object") {
			/* fix when using ajax and CKEditor */
			for (instance in CKEDITOR.instances) {
				var instanceObject = CKEDITOR.instances[instance];
				instanceObject.updateElement();
				var instanceValue = $("[name='" + instanceObject.name + "']").val();
				var elementValue = encodeURIComponent(instanceValue);
				$("[name='" + instanceObject.name + "']").val(elementValue);
			}
		}

		if (typeof (ops) != "object") {
			ops = {};
		}
		var form = null;
		form = $(elementOrIdOrName);
		if (typeof (form) == "object" && form.is("form")) {
			var action = form.attr("action");
			var queryString = form.serialize();
			var data = this.formToPOSTParameters(form);
			var method = form.attr("method");
			if (typeof (method) != "string" || (method.toUpperCase() != "POST" && method.toUpperCase() != "GET")) {
				method = "POST";
			}
			var dataType = "json";
			if (typeof (ops.dataType) == "string") {
				dataType = ops.dataType;
			}
			var async = false;
			if (typeof (ops.async) == "boolean") {
				async = ops.async;
			}
			$.ajax({
				type : method,
				async : async,
				url : action,
				data : data,
				// contentType : "application/json; charset=utf-8",
				dataType : dataType,
				traditional : true,
				success : function(data, textStatus) {
					if (typeof (ops.success) == "function") {
						ops.success(data, textStatus);
					} else {
						art.dialog({
							title : "提示",
							content : data.message,
							fixed : true,
							okValue : '确定',
							ok : function() {
								return true;
							}
						}).lock();
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if (typeof (ops.error) == "function") {
						ops.error(XMLHttpRequest, textStatus, errorThrown);
					} else {
						art.dialog({
							title : "错误",
							content : "出错啦！",
							fixed : true,
							okValue : '确定',
							ok : function() {
								return true;
							}
						}).lock();
					}
				}
			});
		} else {
			if (typeof (ops.noForm) == "function") {
				ops.noForm();
			} else {
				art.dialog({
					title : "提示",
					content : "没有可提交的表单！",
					fixed : true,
					okValue : '确定',
					ok : function() {
						return true;
					}
				}).lock();
			}
		}
	},
	formToPOSTParameters : function(form) {
		var resultData = {};
		var jqueryForm = $(form);
		var queryString = jqueryForm.serialize();
		var dataItems = queryString.split("&");
		if (dataItems instanceof Array && dataItems.length > 0) {
			for (var index = 0; index < dataItems.length; index++) {
				var dataItemString = dataItems[index];
				if (typeof (dataItemString) == "string" && dataItemString.indexOf("=") > -1) {
					var dataItem = dataItemString.split("=");
					if (dataItem instanceof Array && dataItem.length > 1 && dataItem[0].replace(/(^\s*)|(\s*$)/g, "") != "") {
						var value = decodeURIComponent(dataItem[1]);
						// while (value.indexOf("+") > -1) {
						value = value.replace(/\+/g, " ");
						// }
						if (typeof (resultData[dataItem[0]]) == "undefined") {
							resultData[dataItem[0]] = value;
						} else {
							// delete resultData[dataItem[0]];
							var valueArray = resultData[dataItem[0]];
							if (!(valueArray instanceof Array)) {
								valueArray = [];
								valueArray[valueArray.length] = resultData[dataItem[0]];
							}
							valueArray[valueArray.length] = value;
							resultData[dataItem[0]] = valueArray;
						}
					}
				}
			}
		}
		return resultData;
	},
	formToPOSTParameters_0 : function(form) {
		var resultData = {};
		var jqueryForm = $(form);
		var dataItems = jqueryForm.get(0);
		// dataItems instanceof Array
		if (typeof (dataItems) == "object" && dataItems.length > 0) {
			for (var index = 0; index < dataItems.length; index++) {
				var dataItem = dataItems[index];
				if (typeof (dataItem) == "object" && typeof (dataItem.name) == "string" && dataItem.name.replace(/(^\s*)|(\s*$)/g, "") != "") {
					if (dataItem.tagName.toLowerCase() == "input") {
						resultData[dataItem.name] = dataItem.value;
					} else if (dataItem.tagName.toLowerCase() == "textarea") {
						var value = dataItem.innerHTML;
						resultData[dataItem.name] = value;
					}
				}
			}
		}
		return resultData;
	},
	formToPOSTParameters_1 : function(form) {
		var resultData = null;
		var jqueryForm = $(form);
		var dataItems = jqueryForm.find("input,textarea");
		if (typeof (dataItems) == "object" && dataItems.size() > 0) {
			// if (dataItems instanceof Array) {
			var resultDataString = "{";
			for (var index = 0; index < dataItems.size(); index++) {
				var dataItem = dataItems.get(index);
				if (typeof (dataItem) == "object" && typeof (dataItem.name) == "string" && dataItem.name.replace(/(^\s*)|(\s*$)/g, "") != "") {
					if (index > 0) {
						resultDataString += ",";
					}
					if (dataItem.tagName.toLowerCase() == "input") {
						resultDataString = resultDataString + "\"" + dataItem.name + "\":\"" + dataItem.value + "\"";
					} else if (dataItem.tagName.toLowerCase() == "textarea") {
						var content = dataItem.innerHTML.replace("\\", "\\\\");
						content = content.replace(":", "\:");
						content = content.replace(",", "\,");
						resultDataString = resultDataString + "\"" + dataItem.name + "\":\"" + dataItem.innerHTML + "\"";
						// resultDataString = resultDataString + "\"" +
						// dataItem.name + "\":\"" +
						// encodeURI(dataItem.innerHTML, "UTF-8") + "\"";
					}
				}
			}
			resultDataString += "}";
			resultData = eval("(" + resultDataString + ")");
		}
		return resultData;
	},
	refreshValidateCode : function(codeId, url) {
		/*
		 * if (url.indexOf(":") < 0) { var winUrl = window.location + ""; var
		 * doubleIndex = winUrl.indexOf("://"); var index = winUrl.indexOf("/",
		 * doubleIndex + 3); url = winUrl.substring(0, index) + url; }
		 */
		$("#" + codeId).attr('src', url).fadeIn('slow');
	},
	deleteRecode : function(url, id, ops) {
		if (typeof (ops) != "object") {
			ops = {};
		}
		art.dialog({
			title : '提示',
			content : '确认删除吗？',
			fixed : true,
			button : [ {
				value : '确认',
				callback : function() {
					if (typeof (ops.beforeOK) == "function") {
						ops.beforeOK();
					}
					var dataParameters = null;
					if (typeof (id) == "string") {
						dataParameters = {
							id : id
						};
					} else if (typeof (id) == "object") {
						dataParameters = id;
					}
					$.ajax({
						type : "POST",
						async : false,
						url : url,
						data : dataParameters,
						dataType : "json",
						success : function(data, textStatus) {
							if (typeof (ops.success) == "function") {
								ops.success(data, textStatus);
							} else {
								if (data.status == 200) {
									art.dialog({
										title : "提示",
										content : data.message,
										fixed : true,
										okValue : '确定',
										ok : function() {
											window.location.reload();
										}
									}).lock();
								} else {
									art.dialog({
										title : "提示",
										content : data.message,
										fixed : true,
										okValue : '确定',
										ok : function() {
											return true;
										}
									}).lock();
								}
							}
						},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							if (typeof (ops.error) == "function") {
								ops.error(XMLHttpRequest, textStatus, errorThrown);
							} else {
								art.dialog({
									title : "错误",
									content : "出错啦！",
									fixed : true,
									okValue : '确定',
									ok : function() {
										return true;
									}
								}).lock();
							}
						}
					});
				},
				focus : true
			}, {
				value : '取消'
			} ]
		}).lock();
	},
	removeSelect : function(url, checkedName, ops) {
		if (typeof (ops) != "object") {
			ops = {};
		}
		var checkBoxes = $("[name='" + checkedName + "']:checked");
		// if (checkBoxes instanceof Array && checkBoxes.length > 0) {
		if (checkBoxes.size() > 0) {
			art.dialog({
				title : '提示',
				content : '确定删除选中记录吗？',
				fixed : true,
				button : [ {
					value : '确定',
					callback : function() {
						$.ajax({
							type : "POST",
							async : false,
							url : url + "?" + checkBoxes.serialize(),
							data : {
							// ids : checkBoxes
							},
							dataType : "json",
							success : function(data, textStatus) {
								if (typeof (ops.success) == "function") {
									ops.success(data, textStatus);
								} else {
									if (data.status == 200) {
										art.dialog({
											title : "提示",
											content : data.message,
											fixed : true,
											okValue : '确定',
											ok : function() {
												window.location.reload();
											}
										}).lock();
									} else {
										art.dialog({
											title : "提示",
											content : data.message,
											fixed : true,
											okValue : '确定',
											ok : function() {
												return true;
											}
										}).lock();
									}
								}
							},
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								if (typeof (ops.error) == "function") {
									ops.error(XMLHttpRequest, textStatus, errorThrown);
								} else {
									art.dialog({
										title : "错误",
										content : "出错啦！",
										fixed : true,
										okValue : '确定',
										ok : function() {
											return true;
										}
									}).lock();
								}
							}
						});
					},
					focus : true
				}, {
					value : '取消'
				} ]
			}).lock();
		} else {
			art.dialog({
				title : "提示",
				content : "请选择要删除的项目！",
				fixed : true,
				okValue : '确定',
				ok : function() {
					return true;
				}
			}).lock();
		}
	},
	simulateForm : {
		post : function() {
			var formHtmlString = '<form id="" action="' + url + '" method="POST" >';
			if (parameters instanceof Array) {
				for (var index = 0; index < parameters.length; index++) {
					formHtmlString += '<inpu type="hidden" name="' + parameters[index].name + '" value="' + parameters[index].value + '" />';
				}
			}
			formHtmlString += "</form>";
			var formHtmlElement = $(formHtmlString);
			formHtmlElement.submit();
		},
		get : function() {
			var formHtmlString = '<form id="" action="' + url + '" method="GET" >';
			if (parameters instanceof Array) {
				for (var index = 0; index < parameters.length; index++) {
					formHtmlString += '<inpu type="hidden" name="' + parameters[index].name + '" value="' + parameters[index].value + '" />';
				}
			}
			formHtmlString += "</form>";
			var formHtmlElement = $(formHtmlString);
			formHtmlElement.submit();
		}
	}
};