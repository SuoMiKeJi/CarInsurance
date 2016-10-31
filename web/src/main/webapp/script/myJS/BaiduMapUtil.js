(function(window, undefined) {
	var jBaiDuMap = {
		config : {
			containerId : "BaiDuMapContainer",// 容器ID
			zoom : 12,// 地图层级
			dragging : true,// 是否启用地图拖拽事件
			continuousZoom : false,// 是否启用地图惯性拖拽
			scrollWheelZoom : false,// 是否启用地图滚轮放大缩小
			doubleClickZoom : true,// 是否启用鼠标双击放大
			keyboard : true,// 是否启用键盘上下左右键移动地图
			point : {// 坐标
				X : 116.31899,
				Y : 39.986382
			},
			pan : {// 平移坐标
				X : 0,
				Y : 0
			},
			markerDefault : {
				title : "标题",
				content : "内容",
				isOpen : false,
				dragging : true,// 是否启用地图拖拽事件
				point : {
					X : 116.31899,
					Y : 39.986382
				},
				icon : {
					width : 23,
					height : 25,
					left : 0,
					top : 0,
					X : 9,
					paddingLeft : 12
				},
				ops : {
					width : 290, // 宽度
					height : 105, // 高度
					panel : "panel", // 检索结果面板
					enableAutoPan : true, // 自动平移
					searchTypes : [ BMAPLIB_TAB_SEARCH, // 周边检索
					BMAPLIB_TAB_TO_HERE, // 到这里去
					BMAPLIB_TAB_FROM_HERE // 从这里出发
					]
				}
			},
			markerArr : []
		},
		init : {
			map : null,
			createMap : function() {// 创建地图函数
				var map = new BMap.Map(jBaiDuMap.config.containerId);// 在百度地图容器中创建一个地图
				var point = new BMap.Point(jBaiDuMap.config.point.X, jBaiDuMap.config.point.Y);// 定义一个中心点坐标
				map.centerAndZoom(point, jBaiDuMap.config.zoom);// 设定地图的中心点和坐标并将地图显示在地图容器中
				this.map = map;// 将map变量存储在全局
			},
			setMapEvent : function() {// 地图事件设置函数
				jBaiDuMap.config.dragging ? this.map.enableDragging() : this.map.disableDragging();// 启用地图拖拽事件，默认启用(可不写)
				jBaiDuMap.config.continuousZoom ? this.map.enableContinuousZoom() : this.map.disableContinuousZoom(); // 启用地图惯性拖拽，默认禁用(可不写)
				jBaiDuMap.config.scrollWheelZoom ? this.map.enableScrollWheelZoom() : this.map.disableScrollWheelZoom();// 禁用地图滚轮放大缩小，默认禁用(可不写)
				jBaiDuMap.config.doubleClickZoom ? this.map.enableDoubleClickZoom() : this.map.disableDoubleClickZoom();// 启用鼠标双击放大，默认启用(可不写)
				jBaiDuMap.config.keyboard ? this.map.enableKeyboard() : this.map.disableKeyboard();// 启用键盘上下左右键移动地图
				this.map.panBy(jBaiDuMap.config.pan.X, jBaiDuMap.config.pan.Y);//
			},
			addMapControl : function() {// 地图控件添加函数
				// 向地图中添加缩放平移控件
				var ctrl_nav = new BMap.NavigationControl({
					type : BMAP_NAVIGATION_CONTROL_LARGE,
					anchor : BMAP_ANCHOR_TOP_LEFT
				});
				this.map.addControl(ctrl_nav);
				// 向地图中添加比例尺控件
				var ctrl_sca = new BMap.ScaleControl({
					anchor : BMAP_ANCHOR_BOTTOM_LEFT
				});
				this.map.addControl(ctrl_sca);
				// 添加默认缩略地图控件
				var ctrl_ovm = new BMap.OverviewMapControl({
					isOpen : true,
					anchor : BMAP_ANCHOR_BOTTOM_RIGHT
				});
				this.map.addControl(ctrl_ovm);
			},
			addMarker : function() {// 创建marker
				for (var index = 0; index < jBaiDuMap.config.markerArr.length; index++) {
					var json = jBaiDuMap.config.markerArr[index];
					this.createInfoWindow(json);
					// this.createSearchInfoWindow(json);
				}
			},
			createSearchInfoWindow : function(json) {
				var point = new BMap.Point(json.point.X, json.point.Y);
				var iconImg = this.createIcon(json.icon);
				var marker = new BMap.Marker(point, {
					icon : iconImg
				});
				var label = new BMap.Label(json.title, {
					"offset" : new BMap.Size(json.icon.paddingLeft - json.icon.X + 10, -20)
				});
				label.setStyle({
					borderColor : "#808080",
					color : "#333",
					cursor : "pointer"
				});
				marker.setLabel(label);
				var searchInfoWindow = null;
				if (typeof (json.ops) == "object") {
					json.ops.title = json.title;
				}
				searchInfoWindow = new BMapLib.SearchInfoWindow(this.map, json.content, json.ops);
				json.dragging ? marker.enableDragging() : marker.disableDragging(); // marker可拖拽
				marker.addEventListener("click", function(e) {
					searchInfoWindow.open(marker);
				});
				searchInfoWindow.addEventListener("open", function() {
					marker.getLabel().hide();
				});
				searchInfoWindow.addEventListener("close", function() {
					marker.getLabel().show();
				});
				label.addEventListener("click", function() {
					searchInfoWindow.open(marker);
				});
				this.map.addOverlay(marker); // 在地图中添加marker
			},
			createInfoWindow : function(json) {// 创建InfoWindow
				var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
				var point = new BMap.Point(json.point.X, json.point.Y);
				var iconImg = this.createIcon(json.icon);
				var marker = new BMap.Marker(point, {
					icon : iconImg
				});
				var label = new BMap.Label(json.title, {
					"offset" : new BMap.Size(json.icon.paddingLeft - json.icon.X + 10, -20)
				});
				marker.setLabel(label);
				json.dragging ? marker.enableDragging() : marker.disableDragging(); // marker可拖拽

				marker.addEventListener("click", function() {
					this.openInfoWindow(iw);
				});
				iw.addEventListener("open", function() {
					marker.getLabel().hide();
				});
				iw.addEventListener("close", function() {
					marker.getLabel().show();
				});
				label.addEventListener("click", function() {
					marker.openInfoWindow(iw);
				});

				this.map.addOverlay(marker);
				label.setStyle({
					borderColor : "#808080",
					color : "#333",
					cursor : "pointer"
				});

				if (!!json.isOpen) {
					label.hide();
					marker.openInfoWindow(iw);
				}
				return iw;
			},
			createIcon : function(json) {// 创建一个Icon
				var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.width, json.height), {
					imageOffset : new BMap.Size(-json.left, -json.top),
					infoWindowOffset : new BMap.Size(json.paddingLeft + 5, 1),
					offset : new BMap.Size(json.X, json.height)
				})
				return icon;
			},
			initSetting : function(setting) {
				if (typeof (setting) == "object") {
					jBaiDuMap.config.containerId = typeof (setting.containerId) == "string" ? setting.containerId : jBaiDuMap.config.containerId;
					jBaiDuMap.config.zoom = typeof (setting.zoom) == "number" ? setting.zoom : jBaiDuMap.config.zoom;
					jBaiDuMap.config.dragging = typeof (setting.dragging) == "boolean" ? setting.dragging : jBaiDuMap.config.dragging;
					jBaiDuMap.config.continuousZoom = typeof (setting.continuousZoom) == "boolean" ? setting.continuousZoom : jBaiDuMap.config.continuousZoom;
					jBaiDuMap.config.scrollWheelZoom = typeof (setting.scrollWheelZoom) == "boolean" ? setting.scrollWheelZoom : jBaiDuMap.config.scrollWheelZoom;
					jBaiDuMap.config.doubleClickZoom = typeof (setting.doubleClickZoom) == "boolean" ? setting.doubleClickZoom : jBaiDuMap.config.doubleClickZoom;
					jBaiDuMap.config.keyboard = typeof (setting.keyboard) == "boolean" ? setting.keyboard : jBaiDuMap.config.keyboard;
					if (typeof (setting.point) == "object") {
						jBaiDuMap.config.point.X = typeof (setting.point.X) == "number" ? setting.point.X : jBaiDuMap.config.point.X;
						jBaiDuMap.config.point.Y = typeof (setting.point.Y) == "number" ? setting.point.Y : jBaiDuMap.config.point.Y;
					}
					if (typeof (setting.markers) == "object" && setting.markers instanceof Array) {
						var markerArray = new Array();
						for (var index = 0; index < setting.markers.length; index++) {
							var marker = setting.markers[index];
							var tempMarker = {
								point : {},
								icon : {},
								ops : {}
							};
							tempMarker.title = typeof (marker.title) == "string" ? marker.title : jBaiDuMap.config.markerDefault.title;
							tempMarker.content = typeof (marker.content) == "string" ? marker.content : jBaiDuMap.config.markerDefault.content;
							tempMarker.isOpen = typeof (marker.isOpen) == "boolean" ? marker.isOpen : jBaiDuMap.config.markerDefault.isOpen;
							tempMarker.dragging = typeof (marker.dragging) == "boolean" ? marker.dragging : jBaiDuMap.config.markerDefault.dragging;
							if (typeof (marker.point) == "object") {
								tempMarker.point.X = typeof (marker.point.X) == "number" ? marker.point.X : jBaiDuMap.config.markerDefault.point.X;
								tempMarker.point.Y = typeof (marker.point.Y) == "number" ? marker.point.Y : jBaiDuMap.config.markerDefault.point.Y;
							} else {
								tempMarker.point = jBaiDuMap.config.markerDefault.point;
							}
							if (typeof (marker.icon) == "object") {
								tempMarker.icon.width = typeof (marker.icon.width) == "number" ? marker.icon.width : jBaiDuMap.config.markerDefault.icon.width;
								tempMarker.icon.height = typeof (marker.icon.height) == "number" ? marker.icon.height : jBaiDuMap.config.markerDefault.icon.height;
								tempMarker.icon.left = typeof (marker.icon.left) == "number" ? marker.icon.left : jBaiDuMap.config.markerDefault.icon.left;
								tempMarker.icon.top = typeof (marker.icon.top) == "number" ? marker.icon.top : jBaiDuMap.config.markerDefault.icon.top;
								tempMarker.icon.X = typeof (marker.icon.X) == "number" ? marker.icon.X : jBaiDuMap.config.markerDefault.icon.X;
								tempMarker.icon.paddingLeft = typeof (marker.icon.paddingLeft) == "number" ? marker.icon.paddingLeft : jBaiDuMap.config.markerDefault.icon.paddingLeft;
							} else {
								tempMarker.icon = jBaiDuMap.config.markerDefault.icon;
							}
							if (typeof (marker.markerIcon) == "object") {
								if (typeof (marker.markerIcon.type) == "string") {
									if (marker.markerIcon.type == "pin") {
										tempMarker.icon.top = 0;
									} else if (marker.markerIcon.type == "dot") {
										tempMarker.icon.top = 21;
									} else if (marker.markerIcon.type == "flag") {
										tempMarker.icon.top = 42;
									} else {
										tempMarker.icon.top = jBaiDuMap.config.markerDefault.icon.top;
									}
								}
								if (typeof (marker.markerIcon.color) == "string") {
									if (marker.markerIcon.color == "green") {
										tempMarker.icon.left = 0;
									} else if (marker.markerIcon.color == "blue") {
										tempMarker.icon.left = 23;
									} else if (marker.markerIcon.color == "red") {
										tempMarker.icon.left = 46;
									} else if (marker.markerIcon.color == "orange") {
										tempMarker.icon.left = 69;
									} else if (marker.markerIcon.color == "purple") {
										tempMarker.icon.left = 92;
									} else if (marker.markerIcon.color == "pink") {
										tempMarker.icon.left = 115;
									} else {
										tempMarker.icon.left = jBaiDuMap.config.markerDefault.icon.left;
									}
								}
								if (typeof (marker.ops) == "object") {
									tempMarker.ops.width = typeof (marker.ops.width) == "number" ? marker.ops.width : jBaiDuMap.config.markerDefault.ops.width;
									tempMarker.ops.height = typeof (marker.ops.height) == "number" ? marker.ops.height : jBaiDuMap.config.markerDefault.ops.height;
									tempMarker.ops.panel = typeof (marker.ops.panel) == "number" ? marker.ops.panel : jBaiDuMap.config.markerDefault.ops.panel;
									tempMarker.ops.enableAutoPan = typeof (marker.ops.enableAutoPan) == "number" ? marker.ops.enableAutoPan : jBaiDuMap.config.markerDefault.ops.enableAutoPan;
									tempMarker.ops.searchTypes = typeof (marker.ops.searchTypes) == "object" && marker.ops.searchTypes instanceof Array ? marker.ops.searchTypes : jBaiDuMap.config.markerDefault.ops.searchTypes;
								} else {
									tempMarker.ops = jBaiDuMap.config.markerDefault.ops;
								}
							}
							markerArray.push(tempMarker);
						}
						jBaiDuMap.config.markerArr = markerArray;
					}
				}
			}
		},
		initMap : function(setting) {// 创建和初始化地图函数
			this.init.initSetting(setting);
			this.init.createMap();// 创建地图
			this.init.setMapEvent();// 设置地图事件
			this.init.addMapControl();// 向地图添加控件
			this.init.addMarker();// 向地图中添加marker
		}
	};
	window.jBaiDuMap = jBaiDuMap;
})(window);
