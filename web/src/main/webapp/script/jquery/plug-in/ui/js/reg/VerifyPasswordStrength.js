var VerifyPasswordStrength = {
	setting : {
		P_id : "password",
		L_id : "grade1",
		M_id : "grade2",
		H_id : "grade3",
		I_id : "gradeFont"
	},
	constant : {
		block : {
			color : {
				O : "#EEEEEE",
				L : "#FF0000",
				M : "#FF9900",
				H : "#33CC00"
			},
			className : {
				O : null,
				L : null,
				M : null,
				H : null
			}
		},
		info : {
			color : {
				N : "#FF0000",
				O : "#FF0000",
				L : "#FF0000",
				M : "#FF9900",
				H : "#33CC00"
			},
			text : {
				N : "非常弱",
				O : "很弱",
				L : "弱",
				M : "中",
				H : "强"
			}
		}
	},
	charMode : function(iN) {// 判断输入密码的类型
		if (iN >= 48 && iN <= 57) // 数字
			return 1;
		if (iN >= 65 && iN <= 90) // 大写
			return 2;
		if (iN >= 97 && iN <= 122) // 小写
			return 4;
		else
			return 8;
	},
	bitTotal : function(num) {// 计算密码模式
		modes = 0;
		for (i = 0; i < 4; i++) {
			if (num & 1)
				modes++;
			num >>>= 1;
		}
		return modes;
	},
	checkStrong : function(sPW) {// 返回强度级别
		if (sPW.length <= 4)
			return 0; // 密码太短
		Modes = 0;
		for (i = 0; i < sPW.length; i++) {
			// 密码模式
			Modes |= this.charMode(sPW.charCodeAt(i));
		}
		return this.bitTotal(Modes);
	},
	pwStrength : function(pwd) {// 显示颜色
		var infoObject = null;
		var Lclass, Mclass, Hclass;
		var Lcolor, Mcolor, Hcolor;
		var Icolor, Itext;
		if (pwd == null || pwd == '') {
			Lclass = Mclass = Hclass = this.constant.block.className.O;
			Lcolor = Mcolor = Hcolor = this.constant.block.color.O;
			Icolor = this.constant.info.color.N;
			Itext = this.constant.info.text.N;
		} else {
			S_level = this.checkStrong(pwd);
			switch (S_level) {
			case 0:
				Lclass = Mclass = Hclass = this.constant.block.className.O;
				Lcolor = Mcolor = Hcolor = this.constant.block.color.O;
				Icolor = this.constant.info.color.O;
				Itext = this.constant.info.text.O;
			case 1:
				Lclass = this.constant.block.className.L;
				Mclass = Hclass = this.constant.block.className.O;
				Lcolor = this.constant.block.color.L;
				Mcolor = Hcolor = this.constant.block.color.O;
				Icolor = this.constant.info.color.L;
				Itext = this.constant.info.text.L;
				break;
			case 2:
				Lclass = Mclass = this.constant.block.className.M;
				Hclass = this.constant.block.className.O;
				Lcolor = Mcolor = this.constant.block.color.M;
				Hcolor = this.constant.block.color.O;
				Icolor = this.constant.info.color.M;
				Itext = this.constant.info.text.M;
				break;
			default:
				Lclass = Mclass = Hclass = this.constant.block.className.H;
				Lcolor = Mcolor = Hcolor = this.constant.block.color.H;
				Icolor = this.constant.info.color.H;
				Itext = this.constant.info.text.H;
			}
		}
		if (Lclass) {
			$("#" + this.setting.L_id).removeClass();
			$("#" + this.setting.L_id).addClass(Lclass);
		} else {
			$("#" + this.setting.L_id).css("background", Lcolor);
		}
		if (Mclass) {
			$("#" + this.setting.M_id).removeClass();
			$("#" + this.setting.M_id).addClass(Mclass);
		} else {
			$("#" + this.setting.M_id).css("background", Mcolor);
		}
		if (Hclass) {
			$("#" + this.setting.H_id).removeClass();
			$("#" + this.setting.H_id).addClass(Hclass);
		} else {
			$("#" + this.setting.H_id).css("background", Hcolor);
		}
		var infoObject = $("#" + this.setting.I_id);
		if (infoObject) {
			infoObject.css("color", Icolor);
			infoObject.html(Itext);
		}
		return;
	},
	init : function(setting) {
		if (setting) {
			this.setting.P_id = (setting.P_id) ? setting.P_id : this.setting.P_id;
			this.setting.L_id = (setting.L_id) ? setting.L_id : this.setting.L_id;
			this.setting.M_id = (setting.M_id) ? setting.M_id : this.setting.M_id;
			this.setting.H_id = (setting.H_id) ? setting.H_id : this.setting.H_id;
			this.setting.I_id = (setting.I_id) ? setting.I_id : this.setting.I_id;
			this.constant.block.className.O = (setting.className_O) ? setting.className_O : this.constant.block.className.O;
			this.constant.block.className.L = (setting.className_L) ? setting.className_L : this.constant.block.className.L;
			this.constant.block.className.M = (setting.className_M) ? setting.className_M : this.constant.block.className.M;
			this.constant.block.className.H = (setting.className_H) ? setting.className_H : this.constant.block.className.H;
		}
		var passwordObject = $("#" + this.setting.P_id);
		passwordObject.attr("onKeyUp", "VerifyPasswordStrength.pwStrength(this.value);");
		passwordObject.attr("onBlur", "VerifyPasswordStrength.pwStrength(this.value);");
	}
};