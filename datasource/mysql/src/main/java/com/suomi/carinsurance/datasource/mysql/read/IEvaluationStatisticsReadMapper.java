/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.datasource.mysql.read
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:46
 */
package com.suomi.carinsurance.datasource.mysql.read;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;

import java.util.List;
import java.util.Map;

/**
 * <h1>持久层[接口·读] - 评估统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public interface IEvaluationStatisticsReadMapper {

    /**
     * 通过查询条件获取评估统计数据。
     *
     * @param search 查询条件。
     * @return 评估统计数据。
     */
    EvaluationStatistics find(SearchEvaluationStatistics search);

    /**
     * 通过查询条件获取评估统计数据列表。
     *
     * @param search 查询条件。
     * @return 评估统计数据列表。
     */
    List<EvaluationStatistics> findAll(SearchEvaluationStatistics search);

    /**
     * 通过查询条件获取评估统计基础数据列表。
     *
     * @param search 查询条件。
     * @return 评估统计数据列表。
     */
    List<EvaluationStatistics> findAllBase(SearchEvaluationStatistics search);

    /**
     * 获取下拉列表数据。
     *
     * @return 下拉列表数据。
     */
    List<EvaluationStatistics> comboBoxAll();

    /**
     * 车辆风险统计
     *
     * @return 统计结果
     */
    List<Map<String, Integer>> vehicleRiskStatistics();

    /**
     * 建议保险折扣统计
     *
     * @return 统计结果
     */
    List<Map<String, Integer>> insuranceDiscountStatistics();

    /**
     * 欺骗风险统计
     *
     * @return 统计结果
     */
    List<Map<String, Integer>> fraudRiskStatistics();
}
