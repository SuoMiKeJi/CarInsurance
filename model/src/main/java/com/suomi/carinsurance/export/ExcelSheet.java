/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.export
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 12:41
 */
package com.suomi.carinsurance.export;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * <h1>配置 - 导出 - Excel - Sheet</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月01日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@Data
public class ExcelSheet {

    /**
     * Sheet 名字。
     */
    private String name;

    /**
     * 对应的 java 类。
     */
    @JsonProperty(value = "j_type")
    private String javaType;

    /**
     * Excel 字段列表。
     */
    @JsonProperty(value = "fields")
    private List<ExcelField> fieldList;
}
