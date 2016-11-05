/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.controller
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 11:21
 */
package com.suomi.carinsurance.web.controller;

import net.lizhaoweb.spring.mvc.core.controller.AbstractController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <h1>控制层 - 车辆使用可视化</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月05日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
@RequestMapping("/vuvc")
public class VehicleUseVisualizationController extends AbstractController {

    private final static String MODEL = "vehicle_use_visualization";

    /**
     * 首页
     *
     * @return 跳转地址
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index() {
        return String.format("/%s/index", MODEL);
    }
}
