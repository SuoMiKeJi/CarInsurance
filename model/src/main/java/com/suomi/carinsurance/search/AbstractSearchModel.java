/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.search
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 17:18
 */
package com.suomi.carinsurance.search;

import lombok.Data;

import java.io.Serializable;

/**
 * <h1>查询模型 - 甚而抽象类</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月30日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@Data
public abstract class AbstractSearchModel implements Serializable {

    /**
     * GPS标识。
     */
    private String gpsId;

    /**
     * 车辆标识。
     */
    private String vehicleId;
}
