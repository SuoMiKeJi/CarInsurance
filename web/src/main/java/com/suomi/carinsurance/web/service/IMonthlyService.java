/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 12:04
 */
package com.suomi.carinsurance.web.service;

import com.suomi.carinsurance.model.statistics.Monthly;
import com.suomi.carinsurance.search.statistics.SearchMonthly;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;

import java.util.List;
import java.util.Map;

/**
 * <h1>业务层[接口] - 月度统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月05日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public interface IMonthlyService {

    /**
     * 查询数据。
     *
     * @param search 查询对象。
     * @return 返回数据列表。
     */
    List<Monthly> findAll(SearchMonthly search);

    /**
     * 获取统计明细。
     *
     * @param search    查询对象。
     * @param dimension 维度。
     * @return 返回统计明细。
     */
    DataDeliveryWrapper<Map<String, Object>> getStatisticalDetail(SearchMonthly search, String dimension);
}
