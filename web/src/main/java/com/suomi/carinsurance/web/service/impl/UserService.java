package com.suomi.carinsurance.web.service.impl;

import com.suomi.carinsurance.datasource.mysql.read.IUserReadMapper;
import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;
import com.suomi.carinsurance.web.service.IUserService;

/**
 * <h1>业务层[实现] - 用户相关</h1>
 * Created by Administrator on 2016/11/4.
 */
public class UserService implements IUserService{

    // 读持久操作对象。
    private IUserReadMapper readMapper;

    @Override
    public User find(SearchUser searchUser) {
        return readMapper.find(searchUser);
    }
}
