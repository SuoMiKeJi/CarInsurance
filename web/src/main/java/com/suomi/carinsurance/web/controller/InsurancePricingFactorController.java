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

import com.suomi.carinsurance.export.ExcelWorkbook;
import com.suomi.carinsurance.export.excel.ExcelService;
import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import com.suomi.carinsurance.web.Constant;
import com.suomi.carinsurance.web.service.impl.EvaluationStatisticsService;
import lombok.Setter;
import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

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

    private static final String CONFIG_EXPORT_EXCEL_WORKBOOKMAP_KEY = InsurancePricingFactorController.class.getSimpleName();

    @Setter
    private EvaluationStatisticsService service;

    @Setter
    private ExcelService excelService;

    @RequestMapping(value = "/export.excel", method = {RequestMethod.GET})
    public void export(HttpServletRequest request, HttpServletResponse response) {
        ServletOutputStream servletOutputStream = null;
        try {
            servletOutputStream = response.getOutputStream();
            HttpSession session = request.getSession();
            ServletContext application = session.getServletContext();

            // 获取配置信息
            Map<String, ExcelWorkbook> workbookMap = (Map<String, ExcelWorkbook>) application.getAttribute(Constant.Application.ServletContext.Key.EXPORT_EXCEL_WORKBOOK);
            ExcelWorkbook workbookConfig = workbookMap.get(CONFIG_EXPORT_EXCEL_WORKBOOKMAP_KEY);

            // 设置响应对象
            response.setCharacterEncoding(net.lizhaoweb.common.util.base.Constant.Charset.UTF8);
            String contentType = String.format(
                    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=%s",
                    net.lizhaoweb.common.util.base.Constant.Charset.UTF8
            );
            response.setContentType(contentType);
            String encodeFileName = URLEncoder.encode(
                    workbookConfig.getName(),
                    net.lizhaoweb.common.util.base.Constant.Charset.UTF8
            );
            response.setHeader("Content-Disposition", String.format("attachment;filename=%s.xls", encodeFileName));


            // 生成 Excel
            SearchEvaluationStatistics search = new SearchEvaluationStatistics();
            List<EvaluationStatistics> data = service.findAll(search);
            excelService.export(servletOutputStream, workbookConfig, data);
        } catch (Exception e) {
            this.print(servletOutputStream, "出错啦", net.lizhaoweb.common.util.base.Constant.Charset.UTF8);
        }
    }
}
