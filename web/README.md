# WEB项目模块

### 命名规范：
1.  命名 - 尽量见名知义
2.  类名 - 每个单词首字母必须大写，单词之间没有其他符号。
3.  变量名 - 首字母必须小字，从第二个单词开始，每个单词首字母必须大写，单词之间没有其他符号。
4.  常量名 - 所有字母必须大写，单词之间用_连接。
5.  包名 - 所有字母必须小写，单词之间用_连接。
6.  目录名 - 所有字母必须小写，单词之间用_连接。
7.  文件名 - 所有字母必须小写，单词之间用-连接，复合词用_连接。
8.  国际化文件 - 所有字母小字，用_连接语言。
9.  接口名 - 必须以 I 开头。
10. Mapper文件名 - 必须与类的主名一样。
11. ibatis配置文件名 - 必须是mybatis_config.xml。
12. 控制器主文件名必须以 Controller 结尾，即：XxxController

### 模块说明：
项目的业务层、控制层、资源等都放在这里

* xxx.xxx.controller 控制层[控制器]
* xxx.xxx.listener 控制层[监听器]
* xxx.xxx.service 业务层

- 用户配置文件(可改)： custom-configuration.conf
- 系统配置文件(匆改)： system-configuration.conf

###### 导出 Excel 文件的配置JSON：
    [
        {
            "name": "保险定价因子.xlsx",
            "sheets": [
                {
                    "name": "保险定价因子",
                    "j_type": "com.suomi.carinsurance.model.statistics.EvaluationStatistics",
                    "fields": [
                        {
                            "e_name": "ID",
                            "j_name": "vehicleId",
                            "export": true
                        },
                        {
                            "j_name": "province",
                            "e_name": "省",
                            "export": false
                        },
                        {
                            "j_name": "city",
                            "export": false
                        },
                        {
                            "j_name": "tripCount",
                            "export": true
                        },
                        {
                            "j_name": "duration",
                            "e_name": "行驶时间",
                            "export": true
                        },
                        {
                            "j_name": "mileage",
                            "e_name": "里程数",
                            "export": true
                        },
                        {
                            "j_name": "riskRating",
                            "e_name": "风险评级",
                            "export": true
                        },
                        {
                            "j_name": "riskRatingProportion",
                            "e_name": "超过比例",
                            "export": true
                        },
                        {
                            "j_name": "suggestedDiscount",
                            "e_name": "建议保险折扣",
                            "export": true
                        },
                        {
                            "j_name": "fraudRisk",
                            "e_name": "欺骗风险",
                            "export": true
                        },
                        {
                            "j_name": "monthAvgTime",
                            "e_name": "月平均时间",
                            "export": true
                        },
                        {
                            "j_name": "monthAvgMileage",
                            "e_name": "月平均里程",
                            "export": true
                        },
                        {
                            "j_name": "earlyMorningPercentage",
                            "e_name": "清晨比例",
                            "export": true
                        },
                        {
                            "j_name": "morningPeakPercentage",
                            "e_name": "早高峰比例",
                            "export": true
                        },
                        {
                            "j_name": "dayPercentage",
                            "e_name": "白天比例",
                            "export": true
                        },
                        {
                            "j_name": "evenignPeakPercentage",
                            "e_name": "晚高峰比例",
                            "export": true
                        },
                        {
                            "j_name": "nightProportion",
                            "e_name": "夜间比例",
                            "export": true
                        },
                        {
                            "j_name": "drivingMoreThan1HoursProportion",
                            "export": true
                        },
                        {
                            "j_name": "drivingMoreThan2HoursProportion",
                            "export": true
                        },
                        {
                            "j_name": "drivingMoreThan3HoursProportion",
                            "e_name": "连续开车超过3小时概率",
                            "export": true
                        },
                        {
                            "j_name": "drivingOver100KM",
                            "e_name": "连续开车超过100公里概率",
                            "export": true
                        },
                        {
                            "j_name": "drivingOver200KM",
                            "e_name": "连续开车超过200公里概率",
                            "export": true
                        },
                        {
                            "j_name": "drivingOver300KM",
                            "e_name": "连续开车超过300公里概率",
                            "export": true
                        },
                        {
                            "j_name": "avgSpeed",
                            "e_name": "平均速度",
                            "export": true
                        },
                        {
                            "j_name": "baseSpeed90",
                            "e_name": "90速度",
                            "export": true
                        },
                        {
                            "j_name": "baseSpeed95",
                            "e_name": "95速度",
                            "export": true
                        },
                        {
                            "j_name": "baseSpeed99",
                            "e_name": "99速度",
                            "export": true
                        },
                        {
                            "j_name": "baseSpeed999",
                            "e_name": "999速度",
                            "export": true
                        },
                        {
                            "j_name": "avgSpeedProportion",
                            "e_name": "速度超过概率",
                            "export": true
                        },
                        {
                            "j_name": "avgAcceleration",
                            "e_name": "平均加速度",
                            "export": true
                        },
                        {
                            "j_name": "acceleration90",
                            "e_name": "90加速度",
                            "export": true
                        },
                        {
                            "j_name": "acceleration95",
                            "e_name": "95加速度",
                            "export": true
                        },
                        {
                            "j_name": "acceleration99",
                            "e_name": "99加速度",
                            "export": true
                        },
                        {
                            "j_name": "acceleration999",
                            "e_name": "999加速度",
                            "export": true
                        },
                        {
                            "j_name": "avgAccelerationProportion",
                            "e_name": "加速度超过概率",
                            "export": true
                        },
                        {
                            "j_name": "avgDeceleration",
                            "e_name": "平均减速度",
                            "export": true
                        },
                        {
                            "j_name": "deceleration90",
                            "e_name": "90减速度",
                            "export": true
                        },
                        {
                            "j_name": "deceleration95",
                            "e_name": "95减速度",
                            "export": true
                        },
                        {
                            "j_name": "deceleration99",
                            "e_name": "99减速度",
                            "export": true
                        },
                        {
                            "j_name": "deceleration999",
                            "e_name": "999减速度",
                            "export": true
                        },
                        {
                            "j_name": "avgDecelerationProportion",
                            "e_name": "减速度超过概率",
                            "export": true
                        },
                        {
                            "j_name": "monthAvgTimeProportion",
                            "e_name": "时间超过概率",
                            "export": true
                        },
                        {
                            "j_name": "monthAvgMileageProportion",
                            "e_name": "里程超过概率",
                            "export": true
                        },
                        {
                            "j_name": "fatigueDrivingProbability",
                            "export": true
                        },
                        {
                            "j_name": "fatigueDrivingProbabilityProportion",
                            "export": true
                        }
                    ]
                }
            ]
        }
    ]



