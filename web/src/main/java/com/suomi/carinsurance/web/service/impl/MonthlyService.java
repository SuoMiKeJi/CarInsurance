/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service.impl
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 12:04
 */
package com.suomi.carinsurance.web.service.impl;

import com.suomi.carinsurance.datasource.mysql.read.IMonthlyReadMapper;
import com.suomi.carinsurance.model.Constant;
import com.suomi.carinsurance.model.statistics.Monthly;
import com.suomi.carinsurance.search.statistics.SearchMonthly;
import com.suomi.carinsurance.web.service.IMonthlyService;
import net.lizhaoweb.common.util.base.ReflectUtil;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.service.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <h1>业务层[实现] - 月度统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月05日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class MonthlyService extends AbstractService implements IMonthlyService {

    // 读持久操作对象。
    @Autowired
    private IMonthlyReadMapper readMapper;

    /**
     * {@inheritDoc}
     */
    @Override
    public List<Monthly> findAll(SearchMonthly search) {
        return readMapper.findAll(search);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public DataDeliveryWrapper<Map<String, Object>> getStatisticalDetail(SearchMonthly search, String dimension) {
        DataDeliveryWrapper<Map<String, Object>> result = null;
        try {
            Map<String, Object> data = new HashMap<String, Object>();

            // 计算最大最小年月
            int minMonth = -1, maxMonth = -1;// 最小、最大查询年月
            Map<String, Integer> minAndMaxPeriod = readMapper.getMinAndMaxPeriod(search);
            data.put("min-month", minAndMaxPeriod.get("minPeriod"));
            data.put("max-month", minAndMaxPeriod.get("maxPeriod"));

            // 获取展示统计数据
            List<Monthly> list = readMapper.findAll(search);
            data.put("list", list);

            // 计算行驶趋势分布信息
            List<String> chartCategoryList = new ArrayList<String>();// 横轴标签
            List<Object> chartDataList = new ArrayList<Object>();// 一条线的数据
            String name = null;
            for (Monthly monthly : list) {
                // 计算图表数据
                chartCategoryList.add(String.format("%d年%d月", monthly.getPeriod() / 100, monthly.getPeriod() % 100));
                Object value = ReflectUtil.getFieldValue(monthly, dimension);
                chartDataList.add(value);
                name = monthly.getName();
            }

            Map<String, Object> chartDataMap = new HashMap<String, Object>();
            chartDataMap.put("name", name);
            chartDataMap.put("data", chartDataList);

            List<Map<String, Object>> chartData = new ArrayList<Map<String, Object>>();// 数据
            chartData.add(chartDataMap);

            // 图表信息
            Map<String, List<?>> chart = new HashMap<String, List<?>>();
            chart.put("categories", chartCategoryList);
            chart.put("data", chartData);
            data.put(Constant.Chart.Id.TRAVEL_TREND_ANALYSIS, chart);

            result = new DataDeliveryWrapper<Map<String, Object>>(200, "成功", data);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result = new DataDeliveryWrapper<Map<String, Object>>(500, "出错啦", null);
        }
        return result;
    }
}
