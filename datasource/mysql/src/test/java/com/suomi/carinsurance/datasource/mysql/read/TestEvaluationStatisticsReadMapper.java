/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.datasource.mysql.read
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 14:42
 */
package com.suomi.carinsurance.datasource.mysql.read;

import com.suomi.carinsurance.model.statistics.EvaluationStatistics;
import com.suomi.carinsurance.search.statistics.SearchEvaluationStatistics;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath*:/schema/spring/application.xml"
})
public class TestEvaluationStatisticsReadMapper {

    @Autowired
    private IEvaluationStatisticsReadMapper readMapper;

    @Test
    public void find() {
        SearchEvaluationStatistics search = new SearchEvaluationStatistics();
        search.setId(1);
//        search.setName("D");
//        search.setGpsId("YYZX03810");
//        search.setVehicleId("贵C-DL884");
        EvaluationStatistics bean = readMapper.find(search);
        System.out.println(bean);
    }

    @Test
    public void findAll() {
        SearchEvaluationStatistics search = new SearchEvaluationStatistics();
//        search.setId("YYZX03810");
        search.setName("D");
//        search.setGpsId("YYZX03810");
//        search.setVehicleId("贵C-DL884");
        List<EvaluationStatistics> list = readMapper.findAll(search);
        System.out.println(list);
    }

    @Test
    public void comboBoxAll() {
        List<EvaluationStatistics> list = readMapper.comboBoxAll();
        System.out.println(list);
    }

    @Test
    public void vehicleRiskStatistics() {
        List<Map<String, Integer>> list = readMapper.vehicleRiskStatistics();
        System.out.println(list);
    }

    @Test
    public void insuranceDiscountStatistics() {
        List<Map<String, Integer>> list = readMapper.insuranceDiscountStatistics();
        System.out.println(list);
    }

    @Test
    public void fraudRiskStatistics() {
        List<Map<String, Integer>> list = readMapper.fraudRiskStatistics();
        System.out.println(list);
    }
}
