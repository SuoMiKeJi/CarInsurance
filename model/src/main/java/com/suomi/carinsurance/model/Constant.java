/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.model
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 2:03
 */
package com.suomi.carinsurance.model;

/**
 * <h1>常量</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月04日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class Constant {
    /**
     * 图表
     */
    public static final class Chart {

        /**
         * 其他数据的键
         */
        public static final class Key {
            /**
             * 清晨比例
             */
            public static final String EARLY_MORNING = "chart-key-early-morning";
            /**
             * 早高峰比例
             */
            public static final String MORNING_PEAK = "chart-key-morning-peak";
            /**
             * 白天比例
             */
            public static final String DAY = "chart-key-day";
            /**
             * 晚高峰比例
             */
            public static final String EVENIGN_PEAK = "chart-key-evenign-peak";
            /**
             * 夜间比例
             */
            public static final String NIGHT = "chart-key-night";
        }

        /**
         * 唯一标识
         */
        public static final class Id {
            /**
             * 速度分布
             */
            public static final String SPEED_DISTRIBUTION = "chart-speed-distribution";
            /**
             * 加速度分布
             */
            public static final String ACCELERATION_DISTRIBUTION = "chart-acceleration-distribution";
            /**
             * 减速度分布
             */
            public static final String DECELERATION_DISTRIBUTION = "chart-deceleration-distribution";
            /**
             * 驾驶时间分布
             */
            public static final String DRIVING_TIME_DISTRIBUTION = "chart-driving-time-distribution";
            /**
             * 车辆风险统计
             */
            public static final String VEHICLE_RISK_STATISTICS = "chart-vehicle-risk-statistics";
            /**
             * 建议保险折扣统计
             */
            public static final String INSURANCE_DISCOUNT_STATISTICS = "chart-insurance-discount-statistics";
            /**
             * 欺骗风险统计
             */
            public static final String FRAUD_RISK_STATISTICS = "chart-fraud-risk-statistics";
            /**
             * 行驶趋势分布
             */
            public static final String TRAVEL_TREND_ANALYSIS = "chart-travel-trend-analysis";
        }
    }
}
