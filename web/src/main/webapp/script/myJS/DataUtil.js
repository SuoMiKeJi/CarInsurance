var DataUtil = {
	sendToServer : function(url, parameters) {
		$.ajax({
			type : 'POST',
			async : false,
			url : url,
			data : parameters,
			dataType : 'json',
			success : function(data, textStatus) {
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
			}
		});
	},
	sendNavigatorData : function(url) {
		var parameters = {
			'navigator.appCodeName' : navigator.appCodeName,
			'navigator.appName' : navigator.appName,
			'navigator.appVersion' : navigator.appVersion,
			'navigator.cookieEnabled' : navigator.cookieEnabled,
			'navigator.onLine' : navigator.onLine,
			'navigator.platform' : navigator.platform,
			'navigator.userAgent' : navigator.userAgent,
			'navigator.doNotTrack' : navigator.doNotTrack,
			'navigator.language' : navigator.language,
			'navigator.maxTouchPoints' : navigator.maxTouchPoints,
			'navigator.product' : navigator.product,
			'navigator.productSub' : navigator.productSub,
			'navigator.vendor' : navigator.vendor,
			'navigator.vendorSub' : navigator.vendorSub,
			'navigator.browserLanguage' : navigator.browserLanguage,
			'navigator.systemLanguage' : navigator.systemLanguage,
			'navigator.userLanguage' : navigator.userLanguage,
			'navigator.appMinorVersion' : navigator.appMinorVersion,
			/* 'navigator.connectionSpeed' : navigator.connectionSpeed, */
			'navigator.cpuClass' : navigator.cpuClass,
			'navigator.msDoNotTrack' : navigator.msDoNotTrack,
			'navigator.buildID' : navigator.buildID,
			'navigator.oscpu' : navigator.oscpu
		};
		this.sendToServer(url, parameters);
	},
	___________________send : function(url) {
		this.sendNavigatorData(url);
	}
};