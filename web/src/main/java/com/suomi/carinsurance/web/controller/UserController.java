package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;
import com.suomi.carinsurance.web.service.impl.UserService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 登陆
 * Created by Administrator on 2016/11/3.
 */
@RequestMapping("/user")
public class UserController extends AbstractController{
    private final static String MODEL = "user";
    @Setter
    private UserService service;
    /**
     * 跳转到登陆页面
     * @return
     */
    @RequestMapping(value = "/tologin", method = {RequestMethod.GET})
    public String tologin(){
        return String.format("/%s/login",MODEL);
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = "/login.action")
    public String login(
            ModelMap model,
            @ModelAttribute("form") User form
    ){
        SearchUser searchUser = new SearchUser();
        searchUser.setUsername(form.getUsername());
        searchUser.setPassword(form.getPassword());
        User userAll = service.find(searchUser);
        return String.format("/%s/login",MODEL);
//        return "aaa";
    }
}
