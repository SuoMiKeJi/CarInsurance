/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.listener
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 15:58
 */
package com.suomi.carinsurance.web.listener;

import com.suomi.carinsurance.export.ExcelWorkbook;
import com.suomi.carinsurance.web.Constant;
import net.lizhaoweb.common.util.base.JsonUtil;
import net.lizhaoweb.common.util.base.StringUtil;
import net.lizhaoweb.spring.mvc.config.PropertyConfigurer;
import net.lizhaoweb.spring.mvc.core.listener.AbstractListener;
import org.springframework.context.ApplicationEvent;
import org.springframework.web.context.WebApplicationContext;

import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class InitListener extends AbstractListener {
    @Override
    protected void onApplicationLoad(ApplicationEvent event) {
    }

    @Override
    protected void onApplicationLoad(WebApplicationContext context) {
    }

    @Override
    protected void onApplicationLoad(ServletContext context) {
        // 分页
        context.setAttribute(
                Constant.Application.ServletContext.Key.PAGE_SIZE_LIST,
                PropertyConfigurer.getPropertyValue(Constant.Application.System.Page.SIZE_CONFIG_KEY)
        );

        // Excel
        Map<String, ExcelWorkbook> workbookMap = this.getExcelConfig(PropertyConfigurer.getPropertyValue(Constant.Custom.Config.Export.Excel.WORKBOOK));
        context.setAttribute(
                Constant.Application.ServletContext.Key.EXPORT_EXCEL_WORKBOOK,
                workbookMap
        );
    }

    // 构建 Excel 导出配置对象。
    private Map<String, ExcelWorkbook> getExcelConfig(String json) {
        Map<String, ExcelWorkbook> result = null;
        List<ExcelWorkbook> workbookList = JsonUtil.toList(json, ExcelWorkbook.class);
        if (workbookList != null && workbookList.size() > 0) {
            result = new HashMap<String, ExcelWorkbook>();
            for (ExcelWorkbook workbook : workbookList) {
                if (workbook != null && StringUtil.isNotBlank(workbook.getName())) {
                    result.put(workbook.getId(), workbook);
                }
            }
        }
        return result;
    }
}
