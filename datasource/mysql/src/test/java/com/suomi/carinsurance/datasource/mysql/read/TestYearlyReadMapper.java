/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.datasource.mysql.read
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 14:55
 */
package com.suomi.carinsurance.datasource.mysql.read;

import com.suomi.carinsurance.model.statistics.Yearly;
import com.suomi.carinsurance.search.statistics.SearchYearly;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath*:/schema/spring/application.xml"
})
public class TestYearlyReadMapper {

    @Autowired
    private IYearlyReadMapper readMapper;

    @Test
    public void findAll() {
        SearchYearly search = new SearchYearly();
        search.setVehicleId(null);
        search.setVehicleId("贵C-DL884");
        List<Yearly> list = readMapper.findAll(search);
        System.out.println(list);
    }
}
