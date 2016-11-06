/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web.service.impl
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:22
 */
package com.suomi.carinsurance.web.service.impl;

import com.suomi.carinsurance.datasource.mysql.read.IAllAvgReadMapper;
import com.suomi.carinsurance.model.statistics.AllAvg;
import com.suomi.carinsurance.search.statistics.SearchAllAvg;
import com.suomi.carinsurance.web.service.IAllAvgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * <h1>业务层[实现] - 各时间段出行平均</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月07日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class AllAvgService implements IAllAvgService {

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    // 读持久操作对象。
    @Autowired
    private IAllAvgReadMapper readMapper;

    /**
     * {@inheritDoc}
     */
    @Override
    public AllAvg find(SearchAllAvg search) {
        return readMapper.find(search);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<AllAvg> findAll(SearchAllAvg search) {
        return readMapper.findAll(search);
    }
}
