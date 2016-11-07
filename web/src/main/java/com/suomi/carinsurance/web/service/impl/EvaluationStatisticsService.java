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
import com.suomi.carinsurance.datasource.mysql.read.IAllAvgReadMapper;
import com.suomi.carinsurance.datasource.mysql.read.IEvaluationStatisticsReadMapper;
import com.suomi.carinsurance.model.Constant;
import com.suomi.carinsurance.model.statistics.AllAvg;
import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchAllAvg;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import net.lizhaoweb.common.util.base.HttpUtil;
import net.lizhaoweb.common.util.base.JsonUtil;
import net.lizhaoweb.common.util.base.ReflectUtil;
import net.lizhaoweb.common.util.base.StringUtil;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.service.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;

import java.lang.reflect.Field;
import java.math.BigDecimal;
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
public class EvaluationStatisticsService extends AbstractService implements IEvaluationStatisticsService {

    // 读持久操作对象。
    @Autowired
    private IEvaluationStatisticsReadMapper readMapper;

    // 读持久操作对象。
    @Autowired
    private IAllAvgReadMapper allAvgReadMapper;

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
            // 获取展示统计数据
            Map<String, Object> data = new HashMap<String, Object>();
            EvaluationStatistics bean = readMapper.find(search);
            Field[] allFields = ReflectUtil.getAllFields(bean.getClass());
            data.put("detail", bean);

            // 获取所有车辆的平均值
            List<AllAvg> allAvgList = allAvgReadMapper.findAll(new SearchAllAvg());
            Map<String, BigDecimal> allAvgMap = new HashMap<String, BigDecimal>();
            for (AllAvg allAvg : allAvgList) {
                if ("Dawn".equalsIgnoreCase(allAvg.getName())) {
                    allAvgMap.put(Constant.Chart.Key.EARLY_MORNING, allAvg.getValue());
                }
                if ("AMRush".equalsIgnoreCase(allAvg.getName())) {
                    allAvgMap.put(Constant.Chart.Key.MORNING_PEAK, allAvg.getValue());
                }
                if ("Day".equalsIgnoreCase(allAvg.getName())) {
                    allAvgMap.put(Constant.Chart.Key.DAY, allAvg.getValue());
                }
                if ("PMRush".equalsIgnoreCase(allAvg.getName())) {
                    allAvgMap.put(Constant.Chart.Key.EVENIGN_PEAK, allAvg.getValue());
                }
                if ("Night".equalsIgnoreCase(allAvg.getName())) {
                    allAvgMap.put(Constant.Chart.Key.NIGHT, allAvg.getValue());
                }
            }

            // 计算速度分布
            List<Object[]> speedDistributionChartData = this.columnChartData(bean, allFields, Constant.Chart.Id.SPEED_DISTRIBUTION);
            data.put(Constant.Chart.Id.SPEED_DISTRIBUTION, speedDistributionChartData);

            // 计算加速度分布
            List<Object[]> accelerationDistributionChartData = this.columnChartData(bean, allFields, Constant.Chart.Id.ACCELERATION_DISTRIBUTION);
            data.put(Constant.Chart.Id.ACCELERATION_DISTRIBUTION, accelerationDistributionChartData);

            // 计算减速度分布
            List<Object[]> decelerationDistributionChartData = this.columnChartData(bean, allFields, Constant.Chart.Id.DECELERATION_DISTRIBUTION);
            data.put(Constant.Chart.Id.DECELERATION_DISTRIBUTION, decelerationDistributionChartData);

            // 计算驾驶时间分布
            List<Map<String, Object>> drivingTimeDistributionChartData = this.stackedChartData(bean, allFields, allAvgMap, Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION);
            data.put(Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, drivingTimeDistributionChartData);

            result = new DataDeliveryWrapper<Map<String, Object>>(200, "成功", data);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result = new DataDeliveryWrapper<Map<String, Object>>(500, "出错啦", null);
        }
        return result;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean vehicleRiskRating(
//            HttpServletRequest request,
//            HttpServletResponse response,
            SearchEvaluationStatistics search
    ) {
        try {
            // 统计列表
            List<EvaluationStatistics> list = readMapper.findAll(search);
            this.getRequest().setAttribute("list", list);

            // 车辆风险统计
            List<Map<String, Integer>> vehicleRiskStatistics = readMapper.vehicleRiskStatistics();
            String vehicleRiskStatisticsChartJson = this.vehiclePopulationStatistics(vehicleRiskStatistics, 1, 0);
            this.getRequest().setAttribute(Constant.Chart.Id.VEHICLE_RISK_STATISTICS, vehicleRiskStatisticsChartJson);

            // 建议保险折扣统计
            List<Map<String, Integer>> insuranceDiscountStatistics = readMapper.insuranceDiscountStatistics();
            String insuranceDiscountStatisticsChartJson = this.vehiclePopulationStatistics(insuranceDiscountStatistics, 5, 1);
            this.getRequest().setAttribute(Constant.Chart.Id.INSURANCE_DISCOUNT_STATISTICS, insuranceDiscountStatisticsChartJson);

            // 欺骗风险统计
            List<Map<String, Integer>> fraudRiskStatistics = readMapper.fraudRiskStatistics();
            String fraudRiskStatisticsChartJson = this.vehiclePopulationStatistics(fraudRiskStatistics, 1, 1);
            this.getRequest().setAttribute(Constant.Chart.Id.FRAUD_RISK_STATISTICS, fraudRiskStatisticsChartJson);
            return true;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            HttpUtil.print(this.getResponse(), "系统出错啦，请稍后再试……");
        }
        return false;
    }

    // 计算平铺柱形
    private List<Object[]> columnChartData(EvaluationStatistics bean, Field[] fields, String namedChartId) {
        if (bean == null) {
            throw new IllegalArgumentException("The bean is null");
        }
        if (fields == null) {
            throw new IllegalArgumentException("The fields is null");
        }
        if (fields.length < 1) {
            throw new IllegalArgumentException("The size of the fields is 0");
        }
        if (StringUtil.isBlank(namedChartId)) {
            throw new IllegalArgumentException("The namedChartId is wrong");
        }
        List<Object[]> data = new ArrayList<Object[]>();
        for (Field field : fields) {
            ChartConfig chartConfig = field.getAnnotation(ChartConfig.class);
            if (chartConfig != null) {
                String chartId = chartConfig.chartId();
                if (namedChartId.equals(chartId)) {
                    String label = chartConfig.xAxisLabel();
                    Object value = ReflectUtil.getFieldValue(bean, field);
                    if (value instanceof Number) {
                        value = new BigDecimal(value.toString()).multiply(new BigDecimal(100));
                    }
                    Object[] array = {label, value};
                    data.add(array);
                }
            }
        }
        return data;
    }

    // 计算堆叠柱形
    private List<Map<String, Object>> stackedChartData(EvaluationStatistics bean, Field[] fields, Map<String, BigDecimal> allAvgMap, String namedChartId) {
        if (bean == null) {
            throw new IllegalArgumentException("The bean is null");
        }
        if (fields == null) {
            throw new IllegalArgumentException("The fields is null");
        }
        if (fields.length < 1) {
            throw new IllegalArgumentException("The size of the fields is 0");
        }
        if (StringUtil.isBlank(namedChartId)) {
            throw new IllegalArgumentException("The namedChartId is wrong");
        }

        List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();
        Map<String, Object> avgItemMap = new HashMap<String, Object>();
        for (Field field : fields) {
            ChartConfig chartConfig = field.getAnnotation(ChartConfig.class);
            if (chartConfig != null) {
                String chartId = chartConfig.chartId();
                if (namedChartId.equals(chartId)) {
                    String label = chartConfig.xAxisLabel();
                    String dataKey = chartConfig.key();
                    Object value = ReflectUtil.getFieldValue(bean, field);
                    if (value instanceof Number) {
                        value = new BigDecimal(value.toString()).multiply(new BigDecimal(100));
                    }
                    BigDecimal allAvgValue = allAvgMap.get(dataKey);
                    double avgValue = 0;
                    if (allAvgValue != null) {
                        avgValue = allAvgValue.multiply(new BigDecimal(100)).doubleValue();
                    }
                    Map<String, Object> itemMap = new HashMap<String, Object>();
                    itemMap.put("name", label);
                    Object[] array = {value, avgValue};
                    itemMap.put("data", array);
                    itemMap.put("data-key", dataKey);
                    data.add(itemMap);
                }
            }
        }
        return data;
    }

    // 车辆总体统计 JSON
    private String vehiclePopulationStatistics(List<Map<String, Integer>> list, int multiple, int offset) {
        List<Object[]> data = new ArrayList<Object[]>();
        for (int index = 0; index < 10; index++) {
            int key = (index + offset) * multiple;
            Integer count = null;
            for (Map<String, Integer> bean : list) {
                if (key == bean.get("entry")) {
                    count = bean.get("count");
                    list.remove(bean);
                    break;
                }
            }
            if (count == null) {
                count = 0;
            }
            Object[] array = {key + "", count};
            data.add(array);
        }
        return JsonUtil.toJson(data);
    }
}
