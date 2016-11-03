/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 10:30
 */
package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * <h1>控制层 - 驾驶行为分析</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月02日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@RequestMapping("/dbac")
public class DrivingBehaviorAnalysisController extends AbstractController {

    private final static String MODEL = "driving_behavior_analysis";

    @Setter
    private IEvaluationStatisticsService service;

    /**
     * 首页
     *
     * @return 跳转地址
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index() {
        return String.format("/%s/index", MODEL);
    }

    /**
     * 获取下拉列表数据。
     *
     * @return 下拉列表数据。
     */
    @ResponseBody
    @RequestMapping(value = "/comboBox.json", method = {RequestMethod.GET})
    public DataDeliveryWrapper<List<EvaluationStatistics>> comboBoxDate() {
        DataDeliveryWrapper<List<EvaluationStatistics>> result = service.getComboBoxData();
        return result;
    }

    /**
     * 获取数据。
     *
     * @param vehicleId 车辆标识。
     * @return 统计明细。
     */
    @ResponseBody
    @RequestMapping(value = "/{vehicleId}.json", method = {RequestMethod.GET})
    public DataDeliveryWrapper<Map<String, Object>> getData(@PathVariable("vehicleId") String vehicleId) {
        SearchEvaluationStatistics search = new SearchEvaluationStatistics();
        search.setVehicleId(vehicleId);
        DataDeliveryWrapper<Map<String, Object>> result = service.getStatisticalDetail(search);
        return result;
    }
}
