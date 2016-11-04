package com.suomi.carinsurance.model.statistics;

import com.suomi.carinsurance.model.AbstractModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by Administrator on 2016/11/4.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends AbstractModel{
    /**
     * 用户id
     */
    private int uid;
    /**
     * 用户名称
     */
    private String username;
    /**
     * 用户密码
     */
    private String password;
    /**
     * 角色id
     */
    private int role_id;

}
