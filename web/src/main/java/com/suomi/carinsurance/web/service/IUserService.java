package com.suomi.carinsurance.web.service;

import com.suomi.carinsurance.model.statistics.User;
import com.suomi.carinsurance.search.statistics.SearchUser;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;

/**
 * <h1>业务层[接口] - 用户相关</h1>
 * Created by Administrator on 2016/11/4.
 */
public interface IUserService {

    DataDeliveryWrapper<User> find(SearchUser searchUser);

}
