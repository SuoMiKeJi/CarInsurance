package com.suomi.carinsurance.web.service.impl;

import com.suomi.carinsurance.datasource.mysql.read.IUserReadMapper;
import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;
import com.suomi.carinsurance.web.service.IUserService;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <h1>业务层[实现] - 用户相关</h1>
 * Created by Administrator on 2016/11/4.
 */
public class UserService implements IUserService{
    protected Logger logger = LoggerFactory.getLogger(this.getClass());
    // 读持久操作对象。
    @Autowired
    private IUserReadMapper readMapper;

    @Override
    public DataDeliveryWrapper<User> find(SearchUser searchUser) {
        DataDeliveryWrapper<User> result = null;
        try{
            User user = readMapper.find(searchUser);
            if (user==null){
                result = new DataDeliveryWrapper<User>(201, "用户不存在", null);
            }else if(!user.getPassword().equals(searchUser.getPassword())){
                result = new DataDeliveryWrapper<User>(202, "密码不正确", null);
            }else if(user.getUsername().equals(searchUser.getUsername())&&user.getPassword().equals(searchUser.getPassword())){
                result = new DataDeliveryWrapper<User>(200, "成功", user);
            }
        }catch(Exception e){
            logger.error(e.getMessage(), e);
            result = new DataDeliveryWrapper<User>(500, "出错啦", null);
        }

        return result;
    }
}
