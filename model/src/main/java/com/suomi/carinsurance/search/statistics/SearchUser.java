package com.suomi.carinsurance.search.statistics;

import com.suomi.carinsurance.model.AbstractModel;
import com.suomi.carinsurance.search.AbstractSearchModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by Administrator on 2016/11/4.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SearchUser extends AbstractSearchModel{

    /**
     * 用户名称
     */
    private String username;
    /**
     * 用户密码
     */
    private String password;

}
