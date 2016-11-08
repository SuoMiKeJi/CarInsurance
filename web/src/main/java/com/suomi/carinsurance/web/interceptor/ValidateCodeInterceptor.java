/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.interceptor
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 4:05
 */
package com.suomi.carinsurance.web.interceptor;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.web.Constant;
import net.lizhaoweb.common.util.base.HttpUtil;
import net.lizhaoweb.common.util.base.StringUtil;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.interceptor.AbstractInterceptor;
import net.lizhaoweb.spring.mvc.core.servlet.ValidateCodeServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * <h1>拦截器 - 验证码</h1>
 * <p>
 * 检查用户登陆时的验证码是否输入正确
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月07日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class ValidateCodeInterceptor extends AbstractInterceptor {

    private String validateCodeURL;

    public ValidateCodeInterceptor(String validateCodeURL) {
        if (StringUtil.isBlank(validateCodeURL)) {
            throw new IllegalArgumentException("loginURL is null or empty string");
        }
        this.validateCodeURL = validateCodeURL;
    }

    /**
     * 拦截
     *
     * @param request  请求对象
     * @param response 响应对象。
     * @param handler  处理器。
     * @return {Boolean}
     * @throws Exception 异常
     */
    @Override
    protected boolean preMethdExecute(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(true);
        String serverValidateCode = (String) session.getAttribute(ValidateCodeServlet.VALIDATE_CODE_KEY);
        String[] localValidateCode = request.getParameterValues("validateCode");

        if (!serverValidateCode.equals(localValidateCode[0])) {
            DataDeliveryWrapper<String> result = new DataDeliveryWrapper<String>(203, "验证码输入错误", null);
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("code",203);
            map.put("msg","验证码输入错误");
            HttpUtil.printJson(response,map);
            return false;
        }
        return true;
    }
}
