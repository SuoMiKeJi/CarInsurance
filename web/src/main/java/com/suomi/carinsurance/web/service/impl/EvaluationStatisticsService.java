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

import com.suomi.carinsurance.annotation.ChartConfig;
import com.suomi.carinsurance.datasource.mysql.read.IEvaluationStatisticsReadMapper;
import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.Constant;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import net.lizhaoweb.common.util.base.ReflectUtil;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.lang.reflect.Field;
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

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

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
    public DataDeliveryWrapper<List<EvaluationStatistics>> getComboBoxData() {
        DataDeliveryWrapper<List<EvaluationStatistics>> result = null;
        try {
            List<EvaluationStatistics> list = readMapper.comboBoxAll();
            result = new DataDeliveryWrapper<List<EvaluationStatistics>>(200, "成功", list);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result = new DataDeliveryWrapper<List<EvaluationStatistics>>(500, "出错啦", null);
        }
        return result;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public DataDeliveryWrapper<Map<String, Object>> getStatisticalDetail(SearchEvaluationStatistics search) {
        DataDeliveryWrapper<Map<String, Object>> result = null;
        try {
            Map<String, Object> data = new HashMap<String, Object>();
            EvaluationStatistics bean = readMapper.find(search);
            Field[] allFields = ReflectUtil.getAllFields(bean.getClass());
            data.put("detail", bean);

            // 计算速度分布
            List<Object[]> speedDistributionChartData = this.speedDistributionChartData(bean, allFields);
            data.put(Constant.System.Config.Chart.Id.SPEED_DISTRIBUTION, speedDistributionChartData);

            result = new DataDeliveryWrapper<Map<String, Object>>(200, "成功", data);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result = new DataDeliveryWrapper<Map<String, Object>>(500, "出错啦", null);
        }
        return result;
    }

    // 计算速度分布
    private List<Object[]> speedDistributionChartData(EvaluationStatistics bean, Field[] fields) {
        List<Object[]> data = new ArrayList<Object[]>();
        for (Field field : fields) {
            ChartConfig chartConfig = field.getAnnotation(ChartConfig.class);
            if (chartConfig != null) {
                String chartId = chartConfig.chartId();
                if (Constant.System.Config.Chart.Id.SPEED_DISTRIBUTION.equals(chartId)) {
                    String label = chartConfig.yAxisLabel();
                    Object value = ReflectUtil.getFieldValue(bean, field);
                    Object[] array = {label, value};
                    data.add(array);
                }
            }
        }
        return data;
    }
}
