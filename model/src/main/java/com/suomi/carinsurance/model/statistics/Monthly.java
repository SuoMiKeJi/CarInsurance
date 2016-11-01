/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.model.statistics
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 16:45
 */
package com.suomi.carinsurance.model.statistics;

import com.suomi.carinsurance.model.AbstractModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * <h1>数据模型 - 月度统计(数据库)</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月30日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 *
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Monthly extends AbstractModel {

    /**
     * 时期
     * 时间段
     */
    private int period;

    /**
     * 月份
     * 时间段
     */
    private Date month;

    /**
     * 行驶量程数。
     * 里程数
     */
    private double mileage;

    /**
     * 行驶时长。
     * 行驶时间
     */
    private double duration;

    /**
     * 平均速度。
     */
    private double avgSpeed;

    /**
     * 平均加速度。
     */
    private double avgAcceleration;

    /**
     * 平均减速度。
     */
    private double avgDeceleration;
}
