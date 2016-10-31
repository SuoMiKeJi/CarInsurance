(function(win, doc) {
	function Permission() {
		this.data = {};// 数据
		this.Controller = {};

		// 控制
		this.control = function(selector, flag) {
			var selectObject = $(selector);
			var mark = null;
			if (typeof (flag) == "string") {
				mark = flag;
			} else if (typeof (selectObject.attr("purview")) != "undefined") {
				mark = selectObject.attr("purview");
			}
			if (selectObject != null && typeof (selectObject) != "undefined" && mark != null && typeof (mark) != "undefined") {
				var isShow = this.data[mark];
				if (typeof (isShow) == "boolean" && isShow) {
					selectObject.show();
				} else {
					selectObject.hide();
				}
			}
		};

		// 初始化数据
		this.init = function(data) {
			if (typeof (data) == "object") {
				if (data instanceof Array) {
					for ( var index in data) {
						this.data[data[index]] = true;
					}
				} else {
					this.data = data;
				}
			}
		};
	}
	if (typeof (win.$$) == "undefined" && typeof (win.dstore) == "undefined") {
		win.$$ = win.dstore = new Object();
	}
	if (typeof (win.$$.permission) == "undefined" && typeof (win.dstore.permission) == "undefined") {
		var permission = new Permission();
		win.$$.permission = win.dstore.permission = permission;
	}
})(window, document);