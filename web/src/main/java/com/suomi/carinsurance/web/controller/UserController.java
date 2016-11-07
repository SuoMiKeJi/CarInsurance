package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;
import com.suomi.carinsurance.web.Constant;
import com.suomi.carinsurance.web.service.impl.UserService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 登陆
 * Created by Administrator on 2016/11/3.
 */
@RequestMapping("/user")
public class UserController extends AbstractController {
    private final static String MODEL = "user";
    @Setter
    private UserService service;

    /**
     * 跳转到登陆页面
     *
     * @return
     */
    @RequestMapping(value = "/tologin", method = {RequestMethod.GET})
    public String tologin() {
        return String.format("/%s/login", MODEL);
    }

    /**
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/login.json")
    public DataDeliveryWrapper<User> login(HttpServletRequest request, @ModelAttribute("form") User form) {
            SearchUser searchUser = new SearchUser();
        searchUser.setUsername(form.getUsername());
        searchUser.setPassword(form.getPassword());
        DataDeliveryWrapper<User> result = service.find(searchUser);

        return result;
    }
}
