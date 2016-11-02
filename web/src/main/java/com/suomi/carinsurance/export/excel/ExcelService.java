/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.export.excel
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 14:11
 */
package com.suomi.carinsurance.export.excel;

import com.suomi.carinsurance.export.ExcelField;
import com.suomi.carinsurance.export.ExcelSheet;
import com.suomi.carinsurance.export.ExcelWorkbook;
import net.lizhaoweb.common.util.base.IOUtil;
import net.lizhaoweb.common.util.base.ReflectUtil;
import net.lizhaoweb.common.util.base.StringUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * <h1>工具 - Excel</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月01日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class ExcelService {

    /**
     * 导出
     *
     * @param outputStream 输出流。
     * @param config       配置对象。
     * @param data         数据。
     * @param elementClass 元素类型。
     */
    public <T> void export(OutputStream outputStream, ExcelWorkbook config, List<T> data, Class<T> elementClass) {
        if (outputStream == null) {
            throw new RuntimeException("Excel outputStream is null");
        }
        if (config == null) {
            throw new RuntimeException("Excel config is null");
        }
        if (data == null) {
            return;
        }
        try {
            // 生成工作薄
            Workbook workbook = new HSSFWorkbook();

            // 生成表格
            List<ExcelSheet> sheetConfigList = config.getSheetList();
            if (sheetConfigList != null && sheetConfigList.size() > 0) {
                for (ExcelSheet sheetConfig : sheetConfigList) {
                    Sheet sheet = workbook.createSheet(sheetConfig.getName());

                    // 生成字段
                    List<ExcelField> fieldConfigList = sheetConfig.getFieldList();
                    if (fieldConfigList != null && fieldConfigList.size() > 0) {
                        int rowIndex = 0;
                        int colIndex = 0;
                        List<String> javaFieldList = new ArrayList<String>();

                        // 生成标题
                        Row titleRow = sheet.createRow(rowIndex);
                        for (ExcelField fieldConfig : fieldConfigList) {
                            if (fieldConfig != null
                                    && fieldConfig.isExport()
                                    //&& StringUtil.isNotBlank(fieldConfig.getExcelName())
                                    && StringUtil.isNotBlank(fieldConfig.getJavaName())) {
                                String excelName = fieldConfig.getExcelName();
                                if (StringUtil.isBlank(excelName)) {
                                    Field field = ReflectUtil.getField(elementClass, fieldConfig.getJavaName());
                                    com.suomi.carinsurance.annotation.ExcelField excelField = field.getAnnotation(com.suomi.carinsurance.annotation.ExcelField.class);
                                    excelName = excelField.name();
                                }
                                if (StringUtil.isBlank(excelName)) {
                                    continue;
                                }
                                titleRow.createCell(colIndex).setCellValue(excelName);
                                javaFieldList.add(fieldConfig.getJavaName());
                                colIndex++;
                            }
                        }

                        // 生成数据
                        if (data.size() < 1) {
                            break;
                        }
                        for (T item : data) {
                            if (item == null) {
                                continue;
                            }
                            rowIndex++;
                            colIndex = 0;
                            Row dataRow = sheet.createRow(rowIndex);
                            for (String javaField : javaFieldList) {
                                Cell dataCell = dataRow.createCell(colIndex);
                                Object fieldValue = ReflectUtil.getFieldValue(item, javaField);
                                if (fieldValue instanceof Boolean) {
                                    dataCell.setCellValue((boolean) fieldValue);
                                } else if (fieldValue instanceof Number) {
                                    dataCell.setCellValue(((Number) fieldValue).doubleValue());
                                } else if (fieldValue instanceof BigDecimal) {
                                    dataCell.setCellValue(((BigDecimal) fieldValue).doubleValue());
                                } else if (fieldValue instanceof Date) {
                                    dataCell.setCellValue((Date) fieldValue);
                                } else if (fieldValue instanceof Calendar) {
                                    dataCell.setCellValue((Calendar) fieldValue);
                                } else if (fieldValue instanceof String) {
                                    dataCell.setCellValue((String) fieldValue);
                                } else {
                                    dataCell.setCellValue("");
                                }
                                colIndex++;
                            }
                        }
                    }
                }
            }
            workbook.write(outputStream);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            IOUtil.close(outputStream);
        }
    }
}
