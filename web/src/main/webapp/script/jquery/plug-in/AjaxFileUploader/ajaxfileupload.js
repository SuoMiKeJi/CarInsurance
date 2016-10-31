// JavaScript Document
jQuery.extend({
	createUploadIframe : function(id, uri) {
		// create frame
		var frameId = 'jUploadFrame_' + id;
		var iframeHtml = '<iframe id="' + frameId + '" name="' + frameId + '" style="position:absolute; top:-9999px; left:-9999px"';
		if (window.ActiveXObject) {
			if (typeof uri == 'boolean') {
				iframeHtml += ' src="javascript:false;"';
			} else if (typeof uri == 'string') {
				iframeHtml += ' src="' + uri + '"';
			}
		}
		iframeHtml += ' />';
		jQuery(iframeHtml).appendTo(document.body);
		return jQuery('#' + frameId).get(0);
	},
	createUploadForm : function(id, fileElementId, data) {
		// create form
		var formId = 'jUploadForm_' + id;
		var fileId = 'jUploadFile' + id;
		var form = jQuery('<form  action="" method="POST" name="' + formId + '" id="' + formId + '" enctype="multipart/form-data"></form>');
		if (data) {
			for ( var name in data) {
				jQuery('<input type="hidden" name="' + name + '" value="' + data[name] + '" />').appendTo(form);
			}
		}
		var oldElement = jQuery('#' + fileElementId);
		var newElement = jQuery(oldElement).clone();
		jQuery(oldElement).attr('id', fileId);
		jQuery(oldElement).before(newElement);
		jQuery(oldElement).appendTo(form);
		// set attributes
		jQuery(form).css('position', 'absolute');
		jQuery(form).css('top', '-1200px');
		jQuery(form).css('left', '-1200px');
		jQuery(form).appendTo('body');
		return form;
	},
	ajaxFileUpload : function(setting) {
		// TODO introduce global settings, allowing the client to modify them
		// for all requests, not only timeout
		setting = jQuery.extend({}, jQuery.ajaxSettings, setting);
		var id = setting.fileElementId;
		if (typeof (id) == "undefined") {
			id = new Date().getTime();
		}
		var form = jQuery.createUploadForm(id, setting.fileElementId, (typeof (setting.data) == 'undefined' ? false : setting.data));
		var io = jQuery.createUploadIframe(id, setting.secureuri);
		var frameId = 'jUploadFrame_' + id;
		var formId = 'jUploadForm_' + id;
		// Watch for a new set of requests
		if (setting.global && !jQuery.active++) {
			// Watch for a new set of requests
			jQuery.event.trigger("ajaxStart");
		}
		var requestDone = false;
		// Create the request object
		var xml = {};
		if (setting.global) {
			jQuery.event.trigger("ajaxSend", [ xml, setting ]);
		}
		// Wait for a response to come back
		var uploadCallback = function(isTimeout) {
			// Wait for a response to come back
			var io = document.getElementById(frameId);
			try {
				if (io.contentWindow) {
					// xml.responseText = io.contentWindow.document.body ?
					// io.contentWindow.document.body.innerHTML : null;
					var bodyHTMLString = io.contentWindow.document.body ? io.contentWindow.document.body.innerHTML : null;
					bodyHTMLString = bodyHTMLString.replace(/(^\s*)|(\s*$)/g, "");
					if (!/^\{(.+:.+){1}(,.+:.+)*\}$/.test(bodyHTMLString)) { // 普通字符串处理
						var preOjbect = jQuery(bodyHTMLString).get(0);
						xml.responseText = preOjbect.innerHTML;
					} else { // 通过这种方法可将字符串转换为对象
						xml.responseText = bodyHTMLString;
					}
					// xml.responseText = io.contentWindow.document.body ?
					// io.contentWindow.document.body.innerText ?
					// io.contentWindow.document.body.innerText :
					// io.contentWindow.document.body.textContent : null;
					xml.responseXML = io.contentWindow.document.XMLDocument ? io.contentWindow.document.XMLDocument : io.contentWindow.document;
				} else if (io.contentDocument) {
					// xml.responseText = io.contentDocument.document.body ?
					// io.contentDocument.document.body.innerHTML : null;
					var bodyHTMLString = io.contentDocument.document.body ? io.contentDocument.document.body.innerHTML : null;
					var preOjbect = jQuery(bodyHTMLString).get(0);
					xml.responseText = preOjbect.innerHTML;
					xml.responseXML = io.contentDocument.document.XMLDocument ? io.contentDocument.document.XMLDocument : io.contentDocument.document;
				}
			} catch (e) {
				jQuery.handleError(setting, xml, null, e);
			}
			if (xml || isTimeout == "timeout") {
				requestDone = true;
				var status;
				try {
					status = isTimeout != "timeout" ? "success" : "error";
					// Make sure that the request was successful or notmodified
					if (status != "error") {
						// process the data (runs the xml through httpData
						// regardless of callback)
						var data = jQuery.uploadHttpData(xml, setting.dataType);
						// If a local callback was specified, fire it and pass
						// it the data
						if (setting.success) {
							setting.success(data, status);
						}
						// Fire the global callback
						if (setting.global) {
							jQuery.event.trigger("ajaxSuccess", [ xml, setting ]);
						}
					} else {
						jQuery.handleError(setting, xml, status);
					}
				} catch (e) {
					status = "error";
					jQuery.handleError(setting, xml, status, e);
				}
				// The request was completed
				if (setting.global) {
					jQuery.event.trigger("ajaxComplete", [ xml, setting ]);
				}
				// Handle the global AJAX counter
				if (setting.global && !--jQuery.active) {
					jQuery.event.trigger("ajaxStop");
				}
				// Process result
				if (setting.complete) {
					setting.complete(xml, status);
				}
				jQuery(io).unbind();
				setTimeout(function() {
					try {
						jQuery(io).remove();
						jQuery(form).remove();
					} catch (e) {
						jQuery.handleError(setting, xml, null, e);
					}
				}, 100);
				xml = null;
			}
		}
		// Timeout checker
		if (setting.timeout > 0) {
			setTimeout(function() {
				// Check to see if the request is still happening
				if (!requestDone) {
					uploadCallback("timeout");
				}
			}, setting.timeout);
		}
		try {
			var form = jQuery('#' + formId);
			jQuery(form).attr('action', setting.url);
			jQuery(form).attr('method', 'POST');
			jQuery(form).attr('target', frameId);
			if (form.encoding) {
				jQuery(form).attr('encoding', 'multipart/form-data');
			} else {
				jQuery(form).attr('enctype', 'multipart/form-data');
			}
			jQuery(form).submit();
		} catch (e) {
			jQuery.handleError(setting, xml, null, e);
		}
		jQuery('#' + frameId).load(uploadCallback);
		return {
			abort : function() {
			}
		};
	},
	uploadHttpData : function(response, type) {
		var data = !type;
		data = (type == "xml" || data) ? response.responseXML : response.responseText;
		// If the type is "script", eval it in global context
		if (type == "script") {
			jQuery.globalEval(data);
		}
		// Get the JavaScript object, if JSON is used.
		if (type == "json") {
			eval("data = " + data);
		}
		// evaluate scripts within html
		if (type == "html") {
			jQuery("<div>").html(data).evalScripts();
		}
		return data;
	}
});
