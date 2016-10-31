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
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * <h1>业务层[实现] - 评估统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 * <p/>
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
        EvaluationStatistics bean = null;
        List<EvaluationStatistics> list = readMapper.findAll(search);
        if (list != null && list.size() > 0) {
            bean = list.get(0);
        }
        return bean;
    }
}
