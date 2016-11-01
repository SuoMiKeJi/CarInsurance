/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 16:01
 */
package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.service.impl.EvaluationStatisticsService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <h1>控制层 - 评估统计</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 *
 */
@RequestMapping("/es")
public class EvaluationStatisticsController extends AbstractController {

    private final static String MODEL = "evaluation_statistics";

    @Setter
    private EvaluationStatisticsService service;


    /**
     * 跳转指定页面
     */
    @RequestMapping(value = "/{forward}", method = {RequestMethod.GET})
    public String forward(
            @PathVariable("forward") String forward
    ) {
        return String.format("/%s/%s", MODEL, forward);
    }


    /**
     * 驾驶行为分析。
     */
    @RequestMapping(value = "/dba/{vehicleId}", method = {RequestMethod.GET})
    public String drivingBehaviorAnalysis(
            ModelMap model,
            @PathVariable("vehicleId") String vehicleId
    ) {
        SearchEvaluationStatistics search = new SearchEvaluationStatistics();
        search.setVehicleId(vehicleId);
//        if (search.getPage() == null) {
//            search.setPage(new Page(1));
//        }
        EvaluationStatistics bean = service.find(search);
        model.addAttribute("bean", bean);
        return String.format("/%s/jsxwfx", MODEL);
    }
}
