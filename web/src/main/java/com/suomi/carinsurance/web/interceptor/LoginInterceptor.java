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

import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.web.Constant;
import net.lizhaoweb.spring.mvc.core.interceptor.AbstractInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月07日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class LoginInterceptor extends AbstractInterceptor {

    /**
     * 拦截登录
     *
     * @param request  请求对象
     * @param response 响应对象。
     * @param handler  处理器。
     * @return {Boolean}
     * @throws Exception
     */
    @Override
    public boolean preMethdExecute(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute(Constant.System.Config.USER_SESSION_KEY);
        if (user == null) {
            String thisURLString = String.format("%s/%s", request.getContextPath(), request.getRequestURL());
            String forwardURLString = "/user/tologin";
            request.setAttribute("jumpURL", thisURLString);
            request.getRequestDispatcher(forwardURLString).forward(request, response);
            return false;
        }
        return true;
    }
}
