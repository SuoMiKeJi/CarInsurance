package com.suomi.carinsurance.datasource.mysql.read;

import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;

/**
 * <h1>持久层[接口·读] - 用户操作</h1>
 * Created by Administrator on 2016/11/3.
 */
public interface IUserReadMapper {
    /**
     * 用户登陆接口
     * @param user
     * @return
     */
    User find(SearchUser user);
}
