/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 3:39
 */
package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * <h1>控制层 - 车辆风险评级</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月04日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@RequestMapping("/vrrc")
public class VehicleRiskRatingController extends AbstractController {

    private final static String MODEL = "vehicle_risk_rating";

    @Setter
    private IEvaluationStatisticsService service;

    /**
     * 首页
     *
     * @return 跳转地址
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(ModelMap model) {
        SearchEvaluationStatistics search = new SearchEvaluationStatistics();
        List<EvaluationStatistics> list = service.findAll(search);
        model.addAttribute("list", list);
        return String.format("/%s/index", MODEL);
    }
}
