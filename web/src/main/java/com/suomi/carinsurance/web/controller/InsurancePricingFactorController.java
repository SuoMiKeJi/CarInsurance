/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 15:33
 */
package com.suomi.carinsurance.web.controller;

import com.suomi.carinsurance.export.excel.ExcelService;
import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.service.IEvaluationStatisticsService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.bean.DataDeliveryWrapper;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * <h1>控制层 - 保险定价因子</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月01日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@RequestMapping("/ipfc")
public class InsurancePricingFactorController extends AbstractController {

    private final static String MODEL = "insurance_pricing_factor";

    private static final String CONFIG_EXPORT_EXCEL_WORKBOOKMAP_KEY = InsurancePricingFactorController.class.getSimpleName();

    @Setter
    private IEvaluationStatisticsService service;

    @Setter
    private ExcelService excelService;

    /**
     * 首页
     *
     * @return 跳转地址
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(ModelMap model) {
        return String.format("/%s/index", MODEL);
    }

    /**
     * 获取数据。
     *
     * @return 统计明细。
     */
    @ResponseBody
    @RequestMapping(value = "/all.json", method = {RequestMethod.GET})
    public DataDeliveryWrapper<List<EvaluationStatistics>> getData() {
        DataDeliveryWrapper<List<EvaluationStatistics>> result = null;
        try {
            SearchEvaluationStatistics search = new SearchEvaluationStatistics();
            List<EvaluationStatistics> data = service.findAllBase(search);
            result = new DataDeliveryWrapper<List<EvaluationStatistics>>(200, "", data);
        } catch (Exception e) {
            result = new DataDeliveryWrapper<List<EvaluationStatistics>>(500, "出错啦", null);
        }
        return result;
    }

    @RequestMapping(value = "/export.excel", method = {RequestMethod.GET})
    public void export(HttpServletRequest request, HttpServletResponse response) {
        service.exportExcel(CONFIG_EXPORT_EXCEL_WORKBOOKMAP_KEY, excelService);
    }
}
