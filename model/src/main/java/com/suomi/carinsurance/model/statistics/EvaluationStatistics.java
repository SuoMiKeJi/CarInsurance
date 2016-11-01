/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.model.statistics
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 1:36
 */
package com.suomi.carinsurance.model.statistics;

import com.suomi.carinsurance.model.AbstractModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * <h1>数据模型 - 评估统计(数据库)</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年10月31日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 *
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class EvaluationStatistics extends AbstractModel {

    /* ======================================== 基本数据统计 ======================================== */
    /**
     * 省份。
     * 省
     */
    private String province;

    /**
     * 城市
     */
    private String city;

    /**
     * 性别
     */
    private String gender;

    /**
     * 年龄
     */
    private String age;

    /**
     * 车辆描述
     */
    private String vehicleDescription;

    /**
     * 车辆颜色
     */
    private String vehicleColor;

    /**
     * 车辆价值
     */
    private BigDecimal vehicleValue;

    /**
     * 注册日期
     */
    private String regdate;

    /**
     * 行程次数
     */
    private double tripCount;

    /**
     * 行驶时长。
     * 行驶时间
     */
    private double duration;

    /**
     * 行驶量程数。
     * 里程数
     */
    private double mileage;

    /**
     * 风险评级
     */
    private double riskRating;

    /**
     * 超过比例
     */
    private double riskRatingProportion;

    /**
     * 建议折扣
     */
    private double suggestedDiscount;

    /**
     * 欺骗风险
     */
    private double fraudRisk;

    /**
     * 月平均行驶时间(单位：小时)
     * 月平均时间
     */
    private double monthAvgTime;

    /**
     * 月平均驾驶里程(单位：公里)
     * 月平均里程
     */
    private double monthAvgMileage;

    /**
     * 清晨（5-6）比例
     */
    private double earlyMorningPercentage;

    /**
     * 早高峰（7-10）比例
     */
    private double morningPeakPercentage;

    /**
     * 白天（11-16）比例
     */
    private double dayPercentage;

    /**
     * 晚高峰（17-20）比例
     */
    private double evenignPeakPercentage;

    /**
     * 夜间（21-4）比例
     */
    private double nightProportion;

    /**
     * 连续开车超过1小时概率
     */
    private double drivingMoreThan1HoursProportion;

    /**
     * 连续开车超过2小时概率
     */
    private double drivingMoreThan2HoursProportion;

    /**
     * 连续开车超过3小时概率
     */
    private double drivingMoreThan3HoursProportion;

    /**
     * 连续开车超过100公里概率
     */
    private double drivingOver100KM;

    /**
     * 连续开车超过200公里概率
     */
    private double drivingOver200KM;

    /**
     * 连续开车超过300公里概率
     */
    private double drivingOver300KM;

    /**
     * 平均速度
     */
    private double avgSpeed;

    /**
     * 90速度
     */
    private double baseSpeed90;

    /**
     * 95速度
     */
    private double baseSpeed95;

    /**
     * 99速度
     */
    private double baseSpeed99;

    /**
     * 999速度
     */
    private double baseSpeed999;

    /**
     * 平均速度比例
     * 速度超过概率
     */
    private double avgSpeedProportion;

    /**
     * 平均加速度
     * 平均加速度速度
     */
    private double avgAcceleration;

    /**
     * 90加速度
     */
    private double acceleration90;

    /**
     * 95加速度
     */
    private double acceleration95;

    /**
     * 99加速度
     */
    private double acceleration99;

    /**
     * 999加速度
     */
    private double acceleration999;

    /**
     * 平均加速度比例
     * 加速度超过概率
     */
    private double avgAccelerationProportion;

    /**
     * 平均减速度
     */
    private double avgDeceleration;

    /**
     * 90减速度
     */
    private double deceleration90;

    /**
     * 95减速度
     */
    private double deceleration95;

    /**
     * 99减速度
     */
    private double deceleration99;

    /**
     * 999减速度
     */
    private double deceleration999;

    /**
     * 平均减速度比例
     * 减速度超过概率
     */
    private double avgDecelerationProportion;

    /**
     * 月平均行驶时间比例
     * 时间超过概率
     */
    private double monthAvgTimeProportion;

    /**
     * 月平均行驶里程比例
     * 里程超过概率
     */
    private double monthAvgMileageProportion;

    /**
     * 疲劳驾驶概率
     */
    private double fatigueDrivingProbability;

    /**
     * 疲劳驾驶概率比例
     * 疲劳超过概率
     */
    private double fatigueDrivingProbabilityProportion;





    /* ======================================== 速度阶梯 ======================================== */;
    private BigDecimal speed0;
    private BigDecimal speed5;
    private BigDecimal speed10;
    private BigDecimal speed15;
    private BigDecimal speed20;
    private BigDecimal speed25;
    private BigDecimal speed30;
    private BigDecimal speed35;
    private BigDecimal speed40;
    private BigDecimal speed45;
    private BigDecimal speed50;
    private BigDecimal speed55;
    private BigDecimal speed60;
    private BigDecimal speed65;
    private BigDecimal speed70;
    private BigDecimal speed75;
    private BigDecimal speed80;
    private BigDecimal speed85;
    private BigDecimal speed90;
    private BigDecimal speed95;
    private BigDecimal speed100;
    private BigDecimal speed105;
    private BigDecimal speed110;
    private BigDecimal speed115;
    private BigDecimal speed120;
    private BigDecimal speed125;
    private BigDecimal speed130;
    private BigDecimal speed135;
    private BigDecimal speed140;
    private BigDecimal speed145;
    private BigDecimal speed150;
    private BigDecimal speed155;
    private BigDecimal speed160;
    private BigDecimal speed165;
    private BigDecimal speed170;
    private BigDecimal speed175;
    private BigDecimal speed180;
    private BigDecimal speed185;
    private BigDecimal speed190;
    private BigDecimal speed195;
    private BigDecimal speed200;
    private BigDecimal speed205;
    private BigDecimal speed210;
    private BigDecimal speed215;
    private BigDecimal speed220;
    private BigDecimal speed225;
    private BigDecimal speed230;
    private BigDecimal speed235;
    private BigDecimal speed240;
    private BigDecimal speed245;
    private BigDecimal speed250;
    private BigDecimal speed255;
    private BigDecimal speed260;
    private BigDecimal speed265;
    private BigDecimal speed270;
    private BigDecimal speed275;
    private BigDecimal speed280;
    private BigDecimal speed285;
    private BigDecimal speed290;
    private BigDecimal speed295;
    private BigDecimal speed300;


    /* ======================================== 加速度阶梯 ======================================== */
    private BigDecimal acceleration0_5;
    private BigDecimal acceleration1;
    private BigDecimal acceleration1_5;
    private BigDecimal acceleration2;
    private BigDecimal acceleration2_5;
    private BigDecimal acceleration3;
    private BigDecimal acceleration3_5;
    private BigDecimal acceleration4;
    private BigDecimal acceleration4_5;
    private BigDecimal acceleration5;
    private BigDecimal acceleration5_5;
    private BigDecimal acceleration6;
    private BigDecimal acceleration6_5;
    private BigDecimal acceleration7;
    private BigDecimal acceleration7_5;
    private BigDecimal acceleration8;
    private BigDecimal acceleration8_5;
    private BigDecimal acceleration9;
    private BigDecimal acceleration9_5;
    private BigDecimal acceleration10;
    private BigDecimal acceleration10_5;
    private BigDecimal acceleration11;
    private BigDecimal acceleration11_5;
    private BigDecimal acceleration12;
    private BigDecimal acceleration12_5;
    private BigDecimal acceleration13;
    private BigDecimal acceleration13_5;
    private BigDecimal acceleration14;
    private BigDecimal acceleration14_5;
    private BigDecimal acceleration15;
    private BigDecimal acceleration15_5;
    private BigDecimal acceleration16;
    private BigDecimal acceleration16_5;
    private BigDecimal acceleration17;
    private BigDecimal acceleration17_5;
    private BigDecimal acceleration18;
    private BigDecimal acceleration18_5;
    private BigDecimal acceleration19;
    private BigDecimal acceleration19_5;
    private BigDecimal acceleration20;
    private BigDecimal acceleration20_5;
    private BigDecimal acceleration21;
    private BigDecimal acceleration21_5;
    private BigDecimal acceleration22;
    private BigDecimal acceleration22_5;
    private BigDecimal acceleration23;
    private BigDecimal acceleration23_5;
    private BigDecimal acceleration24;
    private BigDecimal acceleration24_5;
    private BigDecimal acceleration25;
    private BigDecimal acceleration25_5;
    private BigDecimal acceleration26;
    private BigDecimal acceleration26_5;
    private BigDecimal acceleration27;
    private BigDecimal acceleration27_5;
    private BigDecimal acceleration28;
    private BigDecimal acceleration28_5;
    private BigDecimal acceleration29;
    private BigDecimal acceleration29_5;
    private BigDecimal acceleration30;


    /* ======================================== 减速度阶梯 ======================================== */
    private BigDecimal deceleration0_5;
    private BigDecimal deceleration1;
    private BigDecimal deceleration1_5;
    private BigDecimal deceleration2;
    private BigDecimal deceleration2_5;
    private BigDecimal deceleration3;
    private BigDecimal deceleration3_5;
    private BigDecimal deceleration4;
    private BigDecimal deceleration4_5;
    private BigDecimal deceleration5;
    private BigDecimal deceleration5_5;
    private BigDecimal deceleration6;
    private BigDecimal deceleration6_5;
    private BigDecimal deceleration7;
    private BigDecimal deceleration7_5;
    private BigDecimal deceleration8;
    private BigDecimal deceleration8_5;
    private BigDecimal deceleration9;
    private BigDecimal deceleration9_5;
    private BigDecimal deceleration10;
    private BigDecimal deceleration10_5;
    private BigDecimal deceleration11;
    private BigDecimal deceleration11_5;
    private BigDecimal deceleration12;
    private BigDecimal deceleration12_5;
    private BigDecimal deceleration13;
    private BigDecimal deceleration13_5;
    private BigDecimal deceleration14;
    private BigDecimal deceleration14_5;
    private BigDecimal deceleration15;
}
