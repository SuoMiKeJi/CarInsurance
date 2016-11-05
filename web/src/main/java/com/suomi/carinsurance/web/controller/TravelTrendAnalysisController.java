/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:46
 */
package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.web.service.IMonthlyService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.Map;

/**
 * <h1>控制层 - 行驶趋势分析</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月05日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@RequestMapping("/ttac")
public class TravelTrendAnalysisController extends AbstractController {

    private final static String MODEL = "travel_trend_analysis";

    @Setter
    private IMonthlyService service;

    /**
     * 首页
     *
     * @return 跳转地址
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(ModelMap model) {
        Map<String, String> selectMap = new HashMap<String, String>();
        selectMap.put("mileage", "里程数");
        selectMap.put("duration", "行驶时间");
        selectMap.put("avgSpeed", "平均速度");
        selectMap.put("avgAcceleration", "平均加速度");
        selectMap.put("avgDeceleration", "平均减速度");
        model.addAttribute("selectMap", selectMap);
        return String.format("/%s/index", MODEL);
    }
}
