//复选框判断与计数
	function checkbox(num) {
		var code_Values = document.getElementsByTagName("input");
		var j = 0;
		for (i = 0; i < code_Values.length; i++) {
			if (code_Values[i].type == "checkbox") {
				if (code_Values[i].checked == true) {
					j++;
				}
			}
		}
		if (j == 0) {
			alert("请至少选择一项");
			return false;
		}
		var id = "";
		for (i = 0; i < code_Values.length; i++) {
			if (code_Values[i].type == "checkbox") {
				if (code_Values[i].checked == true) {
					// alert(id);
					id = code_Values[i].value + "," + id;
				}
			}
		}
		// 安装Dstore
		if (num == 1) {
			$.ajax({
				type : "post",
				url : "<s:url action="installDStore" namespace="/savepoint"></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(list) {
					alert(list);
					var str = list[0].data;
					alert(str[0].sratus);
					if (str[0].sratus == 200) {

						alert("安装Dstore成功！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								// 获取当前选中的checkbox所在的行标签元素对象
								var $fuTr = $(this).parent().parent();
								// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的font标签对象并改变其class属性
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom");
							}
						});
					} else {
						alert("安装Dstore失败！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								var $fuTr = $(this).parent().parent();
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom no");
							}
						});
					}

				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
		// 配置Host
		else if (num == 2) {
			$.ajax({
				type : "post",
				url : "<s:url action="setHosts" namespace="/savepoint"></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(list) {
					alert(list);
					var str = list[0].data;
					alert(str[0].sratus);
					if (status == 200) {
						alert("成功配置Host");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								// 获取当前选中的checkbox所在的行标签元素对象
								var $fuTr = $(this).parent().parent();
								// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的font标签对象并改变其class属性
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom");
							}
						});
					} else {
						alert("连接失败");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								var $fuTr = $(this).parent().parent();
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom no");
							}
						});
					}
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
		// 关闭防火墙
		else if (num == 3) {
			$.ajax({
				type : "post",
				url : "<s:url action="iptablesOff" namespace="/savepoint"></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(list) {
					alert(list);
					var str = list[0].data;
					alert(str[0].sratus);
					if (str[0].sratus == 200) {

						alert("防火墙未关闭");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								// 获取当前选中的checkbox所在的行标签元素对象
								var $fuTr = $(this).parent().parent();
								// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的font标签对象并改变其class属性
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "。。/images/icon_lw.png");
							}
						});
					} else {
						alert("防火墙已关闭！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								var $fuTr = $(this).parent().parent();
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "。。/images/icon_nlw.png");
							}
						});
					}

				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
		// SELINUX
		else if (num == 4) {
			$.ajax({
				type : "post",
				url : "<s:url action="selinuxOff" namespace="/savepoint"></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(list) {
					alert(list);
					var str = list[0].data;
					alert(str[0].sratus);
					if (str[0].sratus == 200) {

						alert("SELINUX开启！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								// 获取当前选中的checkbox所在的行标签元素对象
								var $fuTr = $(this).parent().parent();
								// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的font标签对象并改变其class属性
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom");
							}
						});
					} else {
						alert("SELINUX关闭！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								var $fuTr = $(this).parent().parent();
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom no");
							}
						});
					}
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
		// 挂载磁盘
		else if (num == 5) {
			$.ajax({
				type : "post",
				url : "<s:url action="mountDisks" namespace="/savepoint"></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(list) {
					alert(list);
					var str = list[0].data;
					alert(str[0].sratus);
					if (str[0].sratus == 200) {

						alert("硬盘已挂载！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								// 获取当前选中的checkbox所在的行标签元素对象
								var $fuTr = $(this).parent().parent();
								// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的font标签对象并改变其class属性
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "tip-bottom");
							}
						});
					} else {
						alert("硬盘未挂载！");
						$("checkbox选择器").each(function() {
							if ($(this).attr("checked")) {
								var $fuTr = $(this).parent().parent();
								$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "tip-bottom no");
							}
						});
					}
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
		// 测试连接----------------------------------------------------------------------------
		else if (num == 6) {
			var arrName = new Array();
			var arrIp = new Array();
			var arrSavepointnumber = new Array();
			var arrSavepointpassword = new Array();
			$("input[name='saveChk']").each(function() {
				if ($(this).attr("checked")) {
					var $nowTr = $(this).parent().parent().parent().parent();
					var name = $nowTr.children("td:eq(1)").children("input").val();
					var ip = $nowTr.children("td:eq(2)").children("input").val();
					var savepointnumber = $nowTr.children("td:eq(3)").children("input").val();
					var savepointpassword = $nowTr.children("td:eq(4)").children("input").val();
					arrName.push(name);
					arrIp.push(ip);
					arrSavepointnumber.push(savepointnumber);
					arrSavepointpassword.push(savepointpassword);
				}
			});
			$.ajax({
				type : "post",
				url : "<s:url action="testConnect" namespace="/savepoint"></s:url>",
				async : true,
				// 获取选中的checkbox的值传递到后台测试是否连接通过
				data : {
					id : id,
					names : arrName.toString(),
					ips : arrIp.toString(),
					savepointnumbers : arrSavepointnumber.toString(),
					savepointpasswords : arrSavepointpassword.toString()
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(data) {
					var resultData = data.data;
					for (var i = 0; i < resultData.length; i++) {
						var status = resultData[i].status;
						if (status == 200) {
							alert("连接成功");
							$("input[name='saveChk']").each(function() {
								if ($(this).attr("checked")) {
									// 获取当前选中的checkbox所在的行标签元素对象
									var $fuTr = $(this).parent().parent().parent().parent();
									// 获取当前行的第六个td子元素标签对象，再获取td子元素标签对象的img标签对象并改变其src属性
									$fuTr.children("td:eq(5)").children("img").attr("src", "../images/icon_ieh.png");
								}
							});
						} else {
							alert("连接失败");
							$("input[name='saveChk']").each(function() {
								if ($(this).attr("checked")) {
									var $fuTr = $(this).parent().parent().parent().parent();
									$fuTr.children("td:eq(5)").children("img").attr("src", "../images/icon_IE.png");
								}
							});
						}
					}
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
	}
	$(function() {
		$(".st_tree").SimpleTree({
			/* left nav */
			click : function(a) {
				if (!$(a).attr("hasChild"))
					alert($(a).attr("ref"));
			}
		});
		/* 弹出框 */
		$('#myModal', '#Modaljdian').modal('hide');
	});
	function del(obj) {
		var tr = obj.parentNode.parentNode;// 得到按钮[obj]的父元素[td]的父元素[tr]
		tr.parentNode.removeChild(tr);// 从tr的父元素[tbody]移除tr
	}
	$(document).ready(function() {
		$(".bj_but").click(function() {
			var id = $(this).attr("name");
			$("#test3").val(id);
			alert(id);
			$.ajax({
				type : "post",
				url : "<s:url action='pointInfo' namespace='/savepoint'></s:url>",
				async : true,
				data : {
					id : id
				},
				dataType : "json",// 设置需要返回的数据类型
				success : function(Bean) {
					alert(Bean.name);
					$(".p1").val(Bean.ip);
					$(".p2").val(Bean.savepointnumber);
					$(".p3").val(Bean.savepointpassword);
					$(".p4").val(Bean.name);
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
		});
	});
	/* 当页面加载成功后，用ajax获取主机状态信息 */
	function getStatus() {
		$.ajax({
			type : "post",
			url : "<s:url action='getStatus' namespace='/savepoint'></s:url>",
			async : true,
			dataType : "json",// 设置需要返回的数据类型
			success : function(list) {
				var str = list[0].data;
				for (var i = 0; i < str.length; i++) {
					if (str[i].status == 200) {
						var $fuTr = $(this).parent().parent();
						$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom");
						$fuTr.children("td:eq(4)").children("font:eq(1)").attr("class", "tip-bottom");
						$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "。。/images/icon_nlw.png");
						$fuTr.children("td:eq(4)").children("font:eq(3)").attr("class", "tip-bottom");
						$fuTr.children("td:eq(4)").children("font:eq(1)").attr("src", "../images/icon_gz.png");
					} else {
						var $fuTr = $(this).parent().parent();
						$fuTr.children("td:eq(4)").children("font:eq(0)").attr("class", "tip-bottom no");
						$fuTr.children("td:eq(4)").children("font:eq(1)").attr("class", "tip-bottom no");
						$fuTr.children("td:eq(4)").children("font:eq(0)").attr("src", "。。/images/icon_lw.png");
						$fuTr.children("td:eq(4)").children("font:eq(3)").attr("class", "tip-bottom no");
						$fuTr.children("td:eq(4)").children("font:eq(1)").attr("src", "../images/icon_gz1.png");
					}
				}
			},
			error : function() {
				alert("系统异常，请稍后重试！");
			}
		});
	}
	// 批量添加时使用的方法
	function sel() {
		var arrName = new Array();
		var arrIp = new Array();
		var arrSavepointnumber = new Array();
		var arrSavepointpassword = new Array();
		$("input[name='saveChk']").each(function() {
			if ($(this).attr("checked")) {
				var $nowTr = $(this).parent().parent().parent().parent();
				var name = $nowTr.children("td:eq(1)").children("input").val();
				var ip = $nowTr.children("td:eq(2)").children("input").val();
				var savepointnumber = $nowTr.children("td:eq(3)").children("input").val();
				var savepointpassword = $nowTr.children("td:eq(4)").children("input").val();
				arrName.push(name);
				arrIp.push(ip);
				arrSavepointnumber.push(savepointnumber);
				arrSavepointpassword.push(savepointpassword);
			}
		});
		$.ajax({
			url : "${pageContext.request.contextPath}/savepoint/save.action",
			type : "post",
			data : {
				names : arrName.toString(),
				ips : arrIp.toString(),
				savepointnumbers : arrSavepointnumber.toString(),
				savepointpasswords : arrSavepointpassword.toString()
			},
			success : function(data) {
				window.location.href = "${pageContext.request.contextPath}/savepoint/savepointlist.action";
			},
			error : function() {
			}
		});
	}
	var i = 0;
	document.getElementById("but_add").onclick = function() {
		document.getElementById("tab_tr").innerHTML += '<div id="div_'+i+'"><table width="100%" style="padding:0;" ><tbody><tr><td width="4%" height="30"><div class="checker" id="uniform-undefined"><span><input name="saveChk" type="checkbox" style="opacity: 0;"></span></div></td><td width="20%"><input name="" type="text" value="计算机名称" placeholder="计算机名称"></td><td width="20%"><input name="IP" type="text" value="IP" placeholder="IP"></td><td width="20%"><input name="name" type="text" value="账号" placeholder="账号"></td><td width="20%"><input name="password" type="password" value="密码" placeholder="密码"></td><td width="8%" align="center"><img src="../images/icon_IE.png" data-original-title="链接" title=""  class="tip-bottom" /></td><td width="8%" align="center"><button class="bj_but"  onclick="del(this)"><img src="../images/icon_yc.png" title="移除" class="tip-bottom" /></button></td></tr></table></div>';
		i = i + 1;
	}