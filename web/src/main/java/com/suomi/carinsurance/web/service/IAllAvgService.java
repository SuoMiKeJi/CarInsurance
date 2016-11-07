/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:21
 */
package com.suomi.carinsurance.web.service;

import com.suomi.carinsurance.model.statistics.AllAvg;
import com.suomi.carinsurance.search.statistics.SearchAllAvg;

import java.util.List;

/**
 * <h1>业务层[接口] - 各时间段出行平均</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月07日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public interface IAllAvgService {


    /**
     * 查询数据。
     *
     * @param search 查询对象。
     * @return 返回数据。
     */
    AllAvg find(SearchAllAvg search);


    /**
     * 查询数据。
     *
     * @param search 查询对象。
     * @return 返回数据列表。
     */
    List<AllAvg> findAll(SearchAllAvg search);
}
