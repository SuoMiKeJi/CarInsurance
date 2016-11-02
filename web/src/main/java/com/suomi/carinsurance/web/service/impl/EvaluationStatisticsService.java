/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service.impl
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 15:53
 */
package com.suomi.carinsurance.web.service.impl;

import com.suomi.carinsurance.datasource.mysql.read.IEvaluationStatisticsReadMapper;
import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.Constant;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <h1>业务层[实现] - 评估统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class EvaluationStatisticsService implements IEvaluationStatisticsService {

    // 读持久操作对象。
    @Autowired
    private IEvaluationStatisticsReadMapper readMapper;

    /**
     * {@inheritDoc}
     */
    @Override
    public EvaluationStatistics find(SearchEvaluationStatistics search) {
        return readMapper.find(search);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<EvaluationStatistics> findAll(SearchEvaluationStatistics search) {
        return readMapper.findAll(search);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Map<String, String> getComboBoxData() {
        Map<String, String> result = new HashMap<String, String>();
        List<EvaluationStatistics> list = readMapper.comboBoxAll();
        for (EvaluationStatistics item : list) {
            result.put(item.getVehicleId(), item.getVehicleId());
        }
        return result;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Map<String, Object> getStatisticalDetail(SearchEvaluationStatistics search) {
        Map<String, Object> result = new HashMap<String, Object>();
        EvaluationStatistics bean = readMapper.find(search);
        result.put("detail", bean);
//        result.put("speed-distribution", );
        return result;
    }

    // 计算速度分布
    private void speedDistributionChartData(EvaluationStatistics bean) {
        List<List<?>>data = new ArrayList<List<?>>();
        bean.getClass().getDeclaredFields();
//        Constant.System.Config.Chart.Id.SPEED_DISTRIBUTION;
    }
}
