/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.export
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 12:48
 */
package com.suomi.carinsurance.export;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * <h1>配置 - 导出 - Excel - 字段</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月01日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@Data
public class ExcelField {

    /**
     * java 类中的字段名，必须。
     */
    @JsonProperty(value = "j_name")
    private String javaName;

    /**
     * excel sheet 中的字段名，可选。
     */
    @JsonProperty(value = "e_name")
    private String excelName;

    /**
     * 是否要导出。
     */
    private boolean export;
}
