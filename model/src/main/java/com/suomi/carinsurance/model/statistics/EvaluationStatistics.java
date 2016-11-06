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

import com.suomi.carinsurance.annotation.ChartConfig;
import com.suomi.carinsurance.annotation.ExcelField;
import com.suomi.carinsurance.model.AbstractModel;
import com.suomi.carinsurance.model.Constant;
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
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class EvaluationStatistics extends AbstractModel {

    /* ======================================== 基本数据统计 ======================================== */
    /**
     * 省份。
     * 省
     */
    @ExcelField(name = "省份")
    private String province;

    /**
     * 城市
     */
    @ExcelField(name = "城市")
    private String city;

    /**
     * 性别
     */
    @ExcelField(name = "性别")
    private String gender;

    /**
     * 年龄
     */
    @ExcelField(name = "年龄")
    private String age;

    /**
     * 车辆描述
     */
    @ExcelField(name = "车辆描述")
    private String vehicleDescription;

    /**
     * 车辆颜色
     */
    @ExcelField(name = "车辆颜色")
    private String vehicleColor;

    /**
     * 车辆价值
     */
    @ExcelField(name = "车辆价值")
    private BigDecimal vehicleValue;

    /**
     * 注册日期
     */
    @ExcelField(name = "注册日期")
    private String regdate;

    /**
     * 行程次数
     */
    @ExcelField(name = "行程次数")
    private BigDecimal tripCount;

    /**
     * 行驶时长。
     * 行驶时间
     */
    @ExcelField(name = "行驶时间")
    private BigDecimal duration;

    /**
     * 行驶量程数。
     * 里程数
     */
    @ExcelField(name = "里程数")
    private BigDecimal mileage;

    /**
     * 风险评级
     */
    @ExcelField(name = "风险评级")
    private BigDecimal riskRating;

    /**
     * 超过比例
     */
    @ExcelField(name = "超过比例")
    private BigDecimal riskRatingProportion;

    /**
     * 建议折扣
     */
    @ExcelField(name = "建议折扣")
    private BigDecimal suggestedDiscount;

    /**
     * 欺骗风险
     */
    @ExcelField(name = "欺骗风险")
    private BigDecimal fraudRisk;

    /**
     * 月平均行驶时间(单位：小时)
     * 月平均时间
     */
    @ExcelField(name = "月平均时间")
    private BigDecimal monthAvgTime;

    /**
     * 月平均驾驶里程(单位：公里)
     * 月平均里程
     */
    @ExcelField(name = "月平均里程")
    private BigDecimal monthAvgMileage;

    /**
     * 清晨（5-6）比例
     */
    @ChartConfig(chartId = Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, xAxisLabel = "清晨", key = Constant.Chart.Key.EARLY_MORNING)
    @ExcelField(name = "清晨比例")
    private BigDecimal earlyMorningProportion;

    /**
     * 早高峰（7-10）比例
     */
    @ChartConfig(chartId = Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, xAxisLabel = "早高峰", key = Constant.Chart.Key.MORNING_PEAK)
    @ExcelField(name = "早高峰比例")
    private BigDecimal morningPeakProportion;

    /**
     * 白天（11-16）比例
     */
    @ChartConfig(chartId = Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, xAxisLabel = "白天", key = Constant.Chart.Key.DAY)
    @ExcelField(name = "白天比例")
    private BigDecimal dayProportion;

    /**
     * 晚高峰（17-20）比例
     */
    @ChartConfig(chartId = Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, xAxisLabel = "晚高峰", key = Constant.Chart.Key.EVENIGN_PEAK)
    @ExcelField(name = "晚高峰比例")
    private BigDecimal evenignPeakProportion;

    /**
     * 夜间（21-4）比例
     */
    @ChartConfig(chartId = Constant.Chart.Id.DRIVING_TIME_DISTRIBUTION, xAxisLabel = "夜间", key = Constant.Chart.Key.NIGHT)
    @ExcelField(name = "夜间比例")
    private BigDecimal nightProportion;

    /**
     * 连续开车超过1小时概率
     */
    @ExcelField(name = "连续开车超过1小时概率")
    private BigDecimal drivingMoreThan1HoursProportion;

    /**
     * 连续开车超过2小时概率
     */
    @ExcelField(name = "连续开车超过2小时概率")
    private BigDecimal drivingMoreThan2HoursProportion;

    /**
     * 连续开车超过3小时概率
     */
    @ExcelField(name = "连续开车超过3小时概率")
    private BigDecimal drivingMoreThan3HoursProportion;

    /**
     * 连续开车超过100公里概率
     */
    @ExcelField(name = "连续开车超过100公里概率")
    private BigDecimal drivingOver100KM;

    /**
     * 连续开车超过200公里概率
     */
    @ExcelField(name = "连续开车超过200公里概率")
    private BigDecimal drivingOver200KM;

    /**
     * 连续开车超过300公里概率
     */
    @ExcelField(name = "连续开车超过300公里概率")
    private BigDecimal drivingOver300KM;

    /**
     * 平均速度
     */
    @ExcelField(name = "平均速度")
    private BigDecimal avgSpeed;

    /**
     * 90速度
     */
    @ExcelField(name = "90速度")
    private BigDecimal baseSpeed90;

    /**
     * 95速度
     */
    @ExcelField(name = "95速度")
    private BigDecimal baseSpeed95;

    /**
     * 99速度
     */
    @ExcelField(name = "99速度")
    private BigDecimal baseSpeed99;

    /**
     * 999速度
     */
    @ExcelField(name = "999速度")
    private BigDecimal baseSpeed999;

    /**
     * 平均速度比例
     * 速度超过概率
     */
    @ExcelField(name = "速度超过概率")
    private BigDecimal avgSpeedProportion;

    /**
     * 平均加速度
     * 平均加速度速度
     */
    @ExcelField(name = "平均加速度")
    private BigDecimal avgAcceleration;

    /**
     * 90加速度
     */
    @ExcelField(name = "90加速度")
    private BigDecimal acceleration90;

    /**
     * 95加速度
     */
    @ExcelField(name = "95加速度")
    private BigDecimal acceleration95;

    /**
     * 99加速度
     */
    @ExcelField(name = "99加速度")
    private BigDecimal acceleration99;

    /**
     * 999加速度
     */
    @ExcelField(name = "999加速度")
    private BigDecimal acceleration999;

    /**
     * 平均加速度比例
     * 加速度超过概率
     */
    @ExcelField(name = "加速度超过概率")
    private BigDecimal avgAccelerationProportion;

    /**
     * 平均减速度
     */
    @ExcelField(name = "平均减速度")
    private BigDecimal avgDeceleration;

    /**
     * 90减速度
     */
    @ExcelField(name = "90减速度")
    private BigDecimal deceleration90;

    /**
     * 95减速度
     */
    @ExcelField(name = "95减速度")
    private BigDecimal deceleration95;

    /**
     * 99减速度
     */
    @ExcelField(name = "99减速度")
    private BigDecimal deceleration99;

    /**
     * 999减速度
     */
    @ExcelField(name = "999减速度")
    private BigDecimal deceleration999;

    /**
     * 平均减速度比例
     * 减速度超过概率
     */
    @ExcelField(name = "减速度超过概率")
    private BigDecimal avgDecelerationProportion;

    /**
     * 月平均行驶时间比例
     * 时间超过概率
     */
    @ExcelField(name = "时间超过概率")
    private BigDecimal monthAvgTimeProportion;

    /**
     * 月平均行驶里程比例
     * 里程超过概率
     */
    @ExcelField(name = "里程超过概率")
    private BigDecimal monthAvgMileageProportion;

    /**
     * 疲劳驾驶概率
     */
    @ExcelField(name = "疲劳驾驶概率")
    private BigDecimal fatigueDrivingProbability;

    /**
     * 疲劳驾驶概率比例
     * 疲劳超过概率
     */
    @ExcelField(name = "疲劳超过概率")
    private BigDecimal fatigueDrivingProbabilityProportion;


    /* ======================================== 速度阶梯 ======================================== */
    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "0")
    @ExcelField(name = "速度0")
    private BigDecimal speed0;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "5")
    @ExcelField(name = "速度5")
    private BigDecimal speed5;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "10")
    @ExcelField(name = "速度10")
    private BigDecimal speed10;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "15")
    @ExcelField(name = "速度15")
    private BigDecimal speed15;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "20")
    @ExcelField(name = "速度20")
    private BigDecimal speed20;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "25")
    @ExcelField(name = "速度25")
    private BigDecimal speed25;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "30")
    @ExcelField(name = "速度30")
    private BigDecimal speed30;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "35")
    @ExcelField(name = "速度35")
    private BigDecimal speed35;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "40")
    @ExcelField(name = "速度40")
    private BigDecimal speed40;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "45")
    @ExcelField(name = "速度45")
    private BigDecimal speed45;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "50")
    @ExcelField(name = "速度50")
    private BigDecimal speed50;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "55")
    @ExcelField(name = "速度55")
    private BigDecimal speed55;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "60")
    @ExcelField(name = "速度60")
    private BigDecimal speed60;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "65")
    @ExcelField(name = "速度65")
    private BigDecimal speed65;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "70")
    @ExcelField(name = "速度70")
    private BigDecimal speed70;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "75")
    @ExcelField(name = "速度75")
    private BigDecimal speed75;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "80")
    @ExcelField(name = "速度80")
    private BigDecimal speed80;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "85")
    @ExcelField(name = "速度85")
    private BigDecimal speed85;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "90")
    @ExcelField(name = "速度90")
    private BigDecimal speed90;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "95")
    @ExcelField(name = "速度95")
    private BigDecimal speed95;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "100")
    @ExcelField(name = "速度100")
    private BigDecimal speed100;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "105")
    @ExcelField(name = "速度105")
    private BigDecimal speed105;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "110")
    @ExcelField(name = "速度110")
    private BigDecimal speed110;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "115")
    @ExcelField(name = "速度115")
    private BigDecimal speed115;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "120")
    @ExcelField(name = "速度120")
    private BigDecimal speed120;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "125")
    @ExcelField(name = "速度125")
    private BigDecimal speed125;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "130")
    @ExcelField(name = "速度130")
    private BigDecimal speed130;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "135")
    @ExcelField(name = "速度135")
    private BigDecimal speed135;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "140")
    @ExcelField(name = "速度140")
    private BigDecimal speed140;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "145")
    @ExcelField(name = "速度145")
    private BigDecimal speed145;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "150")
    @ExcelField(name = "速度150")
    private BigDecimal speed150;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "155")
    @ExcelField(name = "速度155")
    private BigDecimal speed155;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "160")
    @ExcelField(name = "速度160")
    private BigDecimal speed160;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "165")
    @ExcelField(name = "速度165")
    private BigDecimal speed165;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "170")
    @ExcelField(name = "速度170")
    private BigDecimal speed170;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "175")
    @ExcelField(name = "速度175")
    private BigDecimal speed175;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "180")
    @ExcelField(name = "速度180")
    private BigDecimal speed180;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "185")
    @ExcelField(name = "速度185")
    private BigDecimal speed185;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "190")
    @ExcelField(name = "速度190")
    private BigDecimal speed190;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "195")
    @ExcelField(name = "速度195")
    private BigDecimal speed195;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "200")
    @ExcelField(name = "速度200")
    private BigDecimal speed200;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "205")
    @ExcelField(name = "速度205")
    private BigDecimal speed205;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "210")
    @ExcelField(name = "速度210")
    private BigDecimal speed210;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "215")
    @ExcelField(name = "速度215")
    private BigDecimal speed215;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "220")
    @ExcelField(name = "速度220")
    private BigDecimal speed220;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "225")
    @ExcelField(name = "速度225")
    private BigDecimal speed225;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "230")
    @ExcelField(name = "速度230")
    private BigDecimal speed230;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "235")
    @ExcelField(name = "速度235")
    private BigDecimal speed235;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "240")
    @ExcelField(name = "速度240")
    private BigDecimal speed240;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "245")
    @ExcelField(name = "速度245")
    private BigDecimal speed245;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "250")
    @ExcelField(name = "速度250")
    private BigDecimal speed250;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "255")
    @ExcelField(name = "速度255")
    private BigDecimal speed255;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "260")
    @ExcelField(name = "速度260")
    private BigDecimal speed260;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "265")
    @ExcelField(name = "速度265")
    private BigDecimal speed265;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "270")
    @ExcelField(name = "速度270")
    private BigDecimal speed270;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "275")
    @ExcelField(name = "速度275")
    private BigDecimal speed275;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "280")
    @ExcelField(name = "速度280")
    private BigDecimal speed280;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "285")
    @ExcelField(name = "速度285")
    private BigDecimal speed285;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "290")
    @ExcelField(name = "速度290")
    private BigDecimal speed290;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "295")
    @ExcelField(name = "速度295")
    private BigDecimal speed295;

    @ChartConfig(chartId = Constant.Chart.Id.SPEED_DISTRIBUTION, xAxisLabel = "300")
    @ExcelField(name = "速度300")
    private BigDecimal speed300;


    /* ======================================== 加速度阶梯 ======================================== */
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "0.5")
    @ExcelField(name = "加速度0.5")
    private BigDecimal acceleration0_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "1")
    @ExcelField(name = "加速度1")
    private BigDecimal acceleration1;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "1.5")
    @ExcelField(name = "加速度1.5")
    private BigDecimal acceleration1_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "2")
    @ExcelField(name = "加速度2")
    private BigDecimal acceleration2;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "2.5")
    @ExcelField(name = "加速度2.5")
    private BigDecimal acceleration2_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "3")
    @ExcelField(name = "加速度3")
    private BigDecimal acceleration3;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "3.5")
    @ExcelField(name = "加速度3.5")
    private BigDecimal acceleration3_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "4")
    @ExcelField(name = "加速度4")
    private BigDecimal acceleration4;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "4.5")
    @ExcelField(name = "加速度4.5")
    private BigDecimal acceleration4_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "5")
    @ExcelField(name = "加速度5")
    private BigDecimal acceleration5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "5.5")
    @ExcelField(name = "加速度5.5")
    private BigDecimal acceleration5_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "6")
    @ExcelField(name = "加速度6")
    private BigDecimal acceleration6;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "6.5")
    @ExcelField(name = "加速度6.5")
    private BigDecimal acceleration6_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "7")
    @ExcelField(name = "加速度7")
    private BigDecimal acceleration7;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "7.5")
    @ExcelField(name = "加速度7.5")
    private BigDecimal acceleration7_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "8")
    @ExcelField(name = "加速度8")
    private BigDecimal acceleration8;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "8.5")
    @ExcelField(name = "加速度8.5")
    private BigDecimal acceleration8_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "9")
    @ExcelField(name = "加速度9")
    private BigDecimal acceleration9;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "9.5")
    @ExcelField(name = "加速度9.5")
    private BigDecimal acceleration9_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "10")
    @ExcelField(name = "加速度10")
    private BigDecimal acceleration10;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "10.5")
    @ExcelField(name = "加速度10.5")
    private BigDecimal acceleration10_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "11")
    @ExcelField(name = "加速度11")
    private BigDecimal acceleration11;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "11.5")
    @ExcelField(name = "加速度11.5")
    private BigDecimal acceleration11_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "12")
    @ExcelField(name = "加速度12")
    private BigDecimal acceleration12;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "12.5")
    @ExcelField(name = "加速度12.5")
    private BigDecimal acceleration12_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "13")
    @ExcelField(name = "加速度13")
    private BigDecimal acceleration13;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "13.5")
    @ExcelField(name = "加速度13.5")
    private BigDecimal acceleration13_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "14")
    @ExcelField(name = "加速度14")
    private BigDecimal acceleration14;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "14.5")
    @ExcelField(name = "加速度14.5")
    private BigDecimal acceleration14_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "15")
    @ExcelField(name = "加速度15")
    private BigDecimal acceleration15;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "15.5")
    @ExcelField(name = "加速度15.5")
    private BigDecimal acceleration15_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "16")
    @ExcelField(name = "加速度16")
    private BigDecimal acceleration16;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "16.5")
    @ExcelField(name = "加速度16.5")
    private BigDecimal acceleration16_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "17")
    @ExcelField(name = "加速度17")
    private BigDecimal acceleration17;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "17.5")
    @ExcelField(name = "加速度17.5")
    private BigDecimal acceleration17_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "18")
    @ExcelField(name = "加速度18")
    private BigDecimal acceleration18;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "18.5")
    @ExcelField(name = "加速度18.5")
    private BigDecimal acceleration18_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "19")
    @ExcelField(name = "加速度19")
    private BigDecimal acceleration19;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "19.5")
    @ExcelField(name = "加速度19.5")
    private BigDecimal acceleration19_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "20")
    @ExcelField(name = "加速度20")
    private BigDecimal acceleration20;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "20.5")
    @ExcelField(name = "加速度20.5")
    private BigDecimal acceleration20_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "21")
    @ExcelField(name = "加速度21")
    private BigDecimal acceleration21;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "21.5")
    @ExcelField(name = "加速度21.5")
    private BigDecimal acceleration21_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "22")
    @ExcelField(name = "加速度22")
    private BigDecimal acceleration22;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "22.5")
    @ExcelField(name = "加速度22.5")
    private BigDecimal acceleration22_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "23")
    @ExcelField(name = "加速度23")
    private BigDecimal acceleration23;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "23.5")
    @ExcelField(name = "加速度23.5")
    private BigDecimal acceleration23_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "24")
    @ExcelField(name = "加速度24")
    private BigDecimal acceleration24;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "24.5")
    @ExcelField(name = "加速度24.5")
    private BigDecimal acceleration24_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "25")
    @ExcelField(name = "加速度25")
    private BigDecimal acceleration25;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "25.5")
    @ExcelField(name = "加速度25.5")
    private BigDecimal acceleration25_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "26")
    @ExcelField(name = "加速度26")
    private BigDecimal acceleration26;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "26.5")
    @ExcelField(name = "加速度26.5")
    private BigDecimal acceleration26_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "27")
    @ExcelField(name = "加速度27")
    private BigDecimal acceleration27;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "27.5")
    @ExcelField(name = "加速度27.5")
    private BigDecimal acceleration27_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "28")
    @ExcelField(name = "加速度28")
    private BigDecimal acceleration28;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "28.5")
    @ExcelField(name = "加速度28.5")
    private BigDecimal acceleration28_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "29")
    @ExcelField(name = "加速度29")
    private BigDecimal acceleration29;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "29.5")
    @ExcelField(name = "加速度29.5")
    private BigDecimal acceleration29_5;
    @ChartConfig(chartId = Constant.Chart.Id.ACCELERATION_DISTRIBUTION, xAxisLabel = "30")
    @ExcelField(name = "加速度30")
    private BigDecimal acceleration30;


    /* ======================================== 减速度阶梯 ======================================== */
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "0.5")
    @ExcelField(name = "减速度0.5")
    private BigDecimal deceleration0_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "1")
    @ExcelField(name = "减速度1")
    private BigDecimal deceleration1;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "1.5")
    @ExcelField(name = "减速度1.5")
    private BigDecimal deceleration1_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "2")
    @ExcelField(name = "减速度2")
    private BigDecimal deceleration2;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "2.5")
    @ExcelField(name = "减速度2.5")
    private BigDecimal deceleration2_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "3")
    @ExcelField(name = "减速度3")
    private BigDecimal deceleration3;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "3.5")
    @ExcelField(name = "减速度3.5")
    private BigDecimal deceleration3_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "4")
    @ExcelField(name = "减速度4")
    private BigDecimal deceleration4;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "4.5")
    @ExcelField(name = "减速度4.5")
    private BigDecimal deceleration4_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "5")
    @ExcelField(name = "减速度5")
    private BigDecimal deceleration5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "5.5")
    @ExcelField(name = "减速度5.5")
    private BigDecimal deceleration5_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "6")
    @ExcelField(name = "减速度6")
    private BigDecimal deceleration6;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "6.5")
    @ExcelField(name = "减速度6.5")
    private BigDecimal deceleration6_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "7")
    @ExcelField(name = "减速度7")
    private BigDecimal deceleration7;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "7.5")
    @ExcelField(name = "减速度7.5")
    private BigDecimal deceleration7_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "8")
    @ExcelField(name = "减速度8")
    private BigDecimal deceleration8;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "8.5")
    @ExcelField(name = "减速度8.5")
    private BigDecimal deceleration8_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "9")
    @ExcelField(name = "减速度9")
    private BigDecimal deceleration9;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "9.5")
    @ExcelField(name = "减速度9.5")
    private BigDecimal deceleration9_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "10")
    @ExcelField(name = "减速度10")
    private BigDecimal deceleration10;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "10.5")
    @ExcelField(name = "减速度10.5")
    private BigDecimal deceleration10_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "11")
    @ExcelField(name = "减速度11")
    private BigDecimal deceleration11;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "11.5")
    @ExcelField(name = "减速度11.5")
    private BigDecimal deceleration11_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "12")
    @ExcelField(name = "减速度12")
    private BigDecimal deceleration12;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "12.5")
    @ExcelField(name = "减速度12.5")
    private BigDecimal deceleration12_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "13")
    @ExcelField(name = "减速度13")
    private BigDecimal deceleration13;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "13.5")
    @ExcelField(name = "减速度13.5")
    private BigDecimal deceleration13_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "14")
    @ExcelField(name = "减速度14")
    private BigDecimal deceleration14;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "14.5")
    @ExcelField(name = "减速度14.5")
    private BigDecimal deceleration14_5;
    @ChartConfig(chartId = Constant.Chart.Id.DECELERATION_DISTRIBUTION, xAxisLabel = "15")
    @ExcelField(name = "减速度15")
    private BigDecimal deceleration15;
}
