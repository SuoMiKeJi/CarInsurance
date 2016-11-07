/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.datasource.mysql.read
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:08
 */
package com.suomi.carinsurance.datasource.mysql.read;

import com.suomi.carinsurance.model.statistics.AllAvg;
import com.suomi.carinsurance.search.statistics.SearchAllAvg;

import java.util.List;

/**
 * <h1>持久层[接口·读] - 各时间段出行平均</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月07日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public interface IAllAvgReadMapper {

    /**
     * 通过查询条件获取各时间段出行平均数据。
     *
     * @param search 查询条件。
     * @return 评估统计数据。
     */
    AllAvg find(SearchAllAvg search);

    /**
     * 通过查询条件获取各时间段出行平均数据列表。
     *
     * @param search 查询条件。
     * @return 评估统计数据列表。
     */
    List<AllAvg> findAll(SearchAllAvg search);
}
