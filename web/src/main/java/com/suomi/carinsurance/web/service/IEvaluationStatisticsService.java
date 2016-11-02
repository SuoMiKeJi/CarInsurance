/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 15:48
 */
package com.suomi.carinsurance.web.service;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;

import java.util.List;
import java.util.Map;

/**
 * <h1>业务层[接口] - 评估统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public interface IEvaluationStatisticsService {


    /**
     * 查询数据。
     *
     * @param search 查询对象。
     * @return 返回数据。
     */
    EvaluationStatistics find(SearchEvaluationStatistics search);


    /**
     * 查询数据。
     *
     * @param search 查询对象。
     * @return 返回数据列表。
     */
    List<EvaluationStatistics> findAll(SearchEvaluationStatistics search);

    /**
     * 获取下拉列表数据。
     *
     * @return 返回下拉列表数据。
     */
    Map<String, String> getComboBoxData();

    /**
     * 获取统计明细。
     *
     * @param search 查询对象。
     * @return 返回统计明细。
     */
    Map<String, Object> getStatisticalDetail(SearchEvaluationStatistics search);
}
