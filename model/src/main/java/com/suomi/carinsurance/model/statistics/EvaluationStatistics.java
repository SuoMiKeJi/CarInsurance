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
    @ExcelField(name = "清晨比例")
    private BigDecimal earlyMorningPercentage;

    /**
     * 早高峰（7-10）比例
     */
    @ExcelField(name = "早高峰比例")
    private BigDecimal morningPeakPercentage;

    /**
     * 白天（11-16）比例
     */
    @ExcelField(name = "白天比例")
    private BigDecimal dayPercentage;

    /**
     * 晚高峰（17-20）比例
     */
    @ExcelField(name = "晚高峰比例")
    private BigDecimal evenignPeakPercentage;

    /**
     * 夜间（21-4）比例
     */
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
    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "0")
    @ExcelField(name = "速度0")
    private BigDecimal speed0;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "5")
    @ExcelField(name = "速度5")
    private BigDecimal speed5;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "10")
    @ExcelField(name = "速度10")
    private BigDecimal speed10;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "15")
    @ExcelField(name = "速度15")
    private BigDecimal speed15;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "20")
    @ExcelField(name = "速度20")
    private BigDecimal speed20;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "25")
    @ExcelField(name = "速度25")
    private BigDecimal speed25;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "30")
    @ExcelField(name = "速度30")
    private BigDecimal speed30;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "35")
    @ExcelField(name = "速度35")
    private BigDecimal speed35;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "40")
    @ExcelField(name = "速度40")
    private BigDecimal speed40;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "45")
    @ExcelField(name = "速度45")
    private BigDecimal speed45;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "50")
    @ExcelField(name = "速度50")
    private BigDecimal speed50;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "55")
    @ExcelField(name = "速度55")
    private BigDecimal speed55;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "60")
    @ExcelField(name = "速度60")
    private BigDecimal speed60;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "65")
    @ExcelField(name = "速度65")
    private BigDecimal speed65;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "70")
    @ExcelField(name = "速度70")
    private BigDecimal speed70;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "75")
    @ExcelField(name = "速度75")
    private BigDecimal speed75;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "80")
    @ExcelField(name = "速度80")
    private BigDecimal speed80;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "85")
    @ExcelField(name = "速度85")
    private BigDecimal speed85;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "90")
    @ExcelField(name = "速度90")
    private BigDecimal speed90;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "95")
    @ExcelField(name = "速度95")
    private BigDecimal speed95;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "100")
    @ExcelField(name = "速度100")
    private BigDecimal speed100;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "105")
    @ExcelField(name = "速度105")
    private BigDecimal speed105;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "110")
    @ExcelField(name = "速度110")
    private BigDecimal speed110;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "115")
    @ExcelField(name = "速度115")
    private BigDecimal speed115;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "120")
    @ExcelField(name = "速度120")
    private BigDecimal speed120;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "125")
    @ExcelField(name = "速度125")
    private BigDecimal speed125;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "130")
    @ExcelField(name = "速度130")
    private BigDecimal speed130;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "135")
    @ExcelField(name = "速度135")
    private BigDecimal speed135;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "140")
    @ExcelField(name = "速度140")
    private BigDecimal speed140;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "145")
    @ExcelField(name = "速度145")
    private BigDecimal speed145;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "150")
    @ExcelField(name = "速度150")
    private BigDecimal speed150;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "155")
    @ExcelField(name = "速度155")
    private BigDecimal speed155;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "160")
    @ExcelField(name = "速度160")
    private BigDecimal speed160;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "165")
    @ExcelField(name = "速度165")
    private BigDecimal speed165;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "170")
    @ExcelField(name = "速度170")
    private BigDecimal speed170;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "175")
    @ExcelField(name = "速度175")
    private BigDecimal speed175;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "180")
    @ExcelField(name = "速度180")
    private BigDecimal speed180;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "185")
    @ExcelField(name = "速度185")
    private BigDecimal speed185;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "190")
    @ExcelField(name = "速度190")
    private BigDecimal speed190;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "195")
    @ExcelField(name = "速度195")
    private BigDecimal speed195;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "200")
    @ExcelField(name = "速度200")
    private BigDecimal speed200;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "205")
    @ExcelField(name = "速度205")
    private BigDecimal speed205;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "210")
    @ExcelField(name = "速度210")
    private BigDecimal speed210;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "215")
    @ExcelField(name = "速度215")
    private BigDecimal speed215;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "220")
    @ExcelField(name = "速度220")
    private BigDecimal speed220;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "225")
    @ExcelField(name = "速度225")
    private BigDecimal speed225;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "230")
    @ExcelField(name = "速度230")
    private BigDecimal speed230;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "235")
    @ExcelField(name = "速度235")
    private BigDecimal speed235;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "240")
    @ExcelField(name = "速度240")
    private BigDecimal speed240;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "245")
    @ExcelField(name = "速度245")
    private BigDecimal speed245;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "250")
    @ExcelField(name = "速度250")
    private BigDecimal speed250;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "255")
    @ExcelField(name = "速度255")
    private BigDecimal speed255;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "260")
    @ExcelField(name = "速度260")
    private BigDecimal speed260;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "265")
    @ExcelField(name = "速度265")
    private BigDecimal speed265;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "270")
    @ExcelField(name = "速度270")
    private BigDecimal speed270;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "275")
    @ExcelField(name = "速度275")
    private BigDecimal speed275;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "280")
    @ExcelField(name = "速度280")
    private BigDecimal speed280;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "285")
    @ExcelField(name = "速度285")
    private BigDecimal speed285;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "290")
    @ExcelField(name = "速度290")
    private BigDecimal speed290;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "295")
    @ExcelField(name = "速度295")
    private BigDecimal speed295;

    @ChartConfig(chartId = "speed-distribution", yAxisLabel = "300")
    @ExcelField(name = "速度300")
    private BigDecimal speed300;


    /* ======================================== 加速度阶梯 ======================================== */
    @ExcelField(name = "加速度0.5")
    private BigDecimal acceleration0_5;
    @ExcelField(name = "加速度1")
    private BigDecimal acceleration1;
    @ExcelField(name = "加速度1.5")
    private BigDecimal acceleration1_5;
    @ExcelField(name = "加速度2")
    private BigDecimal acceleration2;
    @ExcelField(name = "加速度2.5")
    private BigDecimal acceleration2_5;
    @ExcelField(name = "加速度3")
    private BigDecimal acceleration3;
    @ExcelField(name = "加速度3.5")
    private BigDecimal acceleration3_5;
    @ExcelField(name = "加速度4")
    private BigDecimal acceleration4;
    @ExcelField(name = "加速度4.5")
    private BigDecimal acceleration4_5;
    @ExcelField(name = "加速度5")
    private BigDecimal acceleration5;
    @ExcelField(name = "加速度5.5")
    private BigDecimal acceleration5_5;
    @ExcelField(name = "加速度6")
    private BigDecimal acceleration6;
    @ExcelField(name = "加速度6.5")
    private BigDecimal acceleration6_5;
    @ExcelField(name = "加速度7")
    private BigDecimal acceleration7;
    @ExcelField(name = "加速度7.5")
    private BigDecimal acceleration7_5;
    @ExcelField(name = "加速度8")
    private BigDecimal acceleration8;
    @ExcelField(name = "加速度8.5")
    private BigDecimal acceleration8_5;
    @ExcelField(name = "加速度9")
    private BigDecimal acceleration9;
    @ExcelField(name = "加速度9.5")
    private BigDecimal acceleration9_5;
    @ExcelField(name = "加速度10")
    private BigDecimal acceleration10;
    @ExcelField(name = "加速度10.5")
    private BigDecimal acceleration10_5;
    @ExcelField(name = "加速度11")
    private BigDecimal acceleration11;
    @ExcelField(name = "加速度11.5")
    private BigDecimal acceleration11_5;
    @ExcelField(name = "加速度12")
    private BigDecimal acceleration12;
    @ExcelField(name = "加速度12.5")
    private BigDecimal acceleration12_5;
    @ExcelField(name = "加速度13")
    private BigDecimal acceleration13;
    @ExcelField(name = "加速度13.5")
    private BigDecimal acceleration13_5;
    @ExcelField(name = "加速度14")
    private BigDecimal acceleration14;
    @ExcelField(name = "加速度14.5")
    private BigDecimal acceleration14_5;
    @ExcelField(name = "加速度15")
    private BigDecimal acceleration15;
    @ExcelField(name = "加速度15.5")
    private BigDecimal acceleration15_5;
    @ExcelField(name = "加速度16")
    private BigDecimal acceleration16;
    @ExcelField(name = "加速度16.5")
    private BigDecimal acceleration16_5;
    @ExcelField(name = "加速度17")
    private BigDecimal acceleration17;
    @ExcelField(name = "加速度17.5")
    private BigDecimal acceleration17_5;
    @ExcelField(name = "加速度18")
    private BigDecimal acceleration18;
    @ExcelField(name = "加速度18.5")
    private BigDecimal acceleration18_5;
    @ExcelField(name = "加速度19")
    private BigDecimal acceleration19;
    @ExcelField(name = "加速度19.5")
    private BigDecimal acceleration19_5;
    @ExcelField(name = "加速度20")
    private BigDecimal acceleration20;
    @ExcelField(name = "加速度20.5")
    private BigDecimal acceleration20_5;
    @ExcelField(name = "加速度21")
    private BigDecimal acceleration21;
    @ExcelField(name = "加速度21.5")
    private BigDecimal acceleration21_5;
    @ExcelField(name = "加速度22")
    private BigDecimal acceleration22;
    @ExcelField(name = "加速度22.5")
    private BigDecimal acceleration22_5;
    @ExcelField(name = "加速度23")
    private BigDecimal acceleration23;
    @ExcelField(name = "加速度23.5")
    private BigDecimal acceleration23_5;
    @ExcelField(name = "加速度24")
    private BigDecimal acceleration24;
    @ExcelField(name = "加速度24.5")
    private BigDecimal acceleration24_5;
    @ExcelField(name = "加速度25")
    private BigDecimal acceleration25;
    @ExcelField(name = "加速度25.5")
    private BigDecimal acceleration25_5;
    @ExcelField(name = "加速度26")
    private BigDecimal acceleration26;
    @ExcelField(name = "加速度26.5")
    private BigDecimal acceleration26_5;
    @ExcelField(name = "加速度27")
    private BigDecimal acceleration27;
    @ExcelField(name = "加速度27.5")
    private BigDecimal acceleration27_5;
    @ExcelField(name = "加速度28")
    private BigDecimal acceleration28;
    @ExcelField(name = "加速度28.5")
    private BigDecimal acceleration28_5;
    @ExcelField(name = "加速度29")
    private BigDecimal acceleration29;
    @ExcelField(name = "加速度29.5")
    private BigDecimal acceleration29_5;
    @ExcelField(name = "加速度30")
    private BigDecimal acceleration30;


    /* ======================================== 减速度阶梯 ======================================== */
    @ExcelField(name = "减速度0.5")
    private BigDecimal deceleration0_5;
    @ExcelField(name = "减速度1")
    private BigDecimal deceleration1;
    @ExcelField(name = "减速度1.5")
    private BigDecimal deceleration1_5;
    @ExcelField(name = "减速度2")
    private BigDecimal deceleration2;
    @ExcelField(name = "减速度2.5")
    private BigDecimal deceleration2_5;
    @ExcelField(name = "减速度3")
    private BigDecimal deceleration3;
    @ExcelField(name = "减速度3.5")
    private BigDecimal deceleration3_5;
    @ExcelField(name = "减速度4")
    private BigDecimal deceleration4;
    @ExcelField(name = "减速度4.5")
    private BigDecimal deceleration4_5;
    @ExcelField(name = "减速度5")
    private BigDecimal deceleration5;
    @ExcelField(name = "减速度5.5")
    private BigDecimal deceleration5_5;
    @ExcelField(name = "减速度6")
    private BigDecimal deceleration6;
    @ExcelField(name = "减速度6.5")
    private BigDecimal deceleration6_5;
    @ExcelField(name = "减速度7")
    private BigDecimal deceleration7;
    @ExcelField(name = "减速度7.5")
    private BigDecimal deceleration7_5;
    @ExcelField(name = "减速度8")
    private BigDecimal deceleration8;
    @ExcelField(name = "减速度8.5")
    private BigDecimal deceleration8_5;
    @ExcelField(name = "减速度9")
    private BigDecimal deceleration9;
    @ExcelField(name = "减速度9.5")
    private BigDecimal deceleration9_5;
    @ExcelField(name = "减速度1")
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
