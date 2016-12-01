<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/css/highcharts.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/driving_behavior_analysis/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/highcharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlCharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/driving_behavior_analysis/index.js' />"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // 加载下拉框数据
            loadDataToSelect({
                url : "<@com.tags.spring.url value='/dbac/comboBox.json' />",
                async : false,
                select : "#select-vehicle-id",
                each : function (index, element) {
                    var id = $(element).attr("gpsId");
                    var name = $(element).attr("vehicleId");
                    return '<option value="' + id + '" > ' + name + '</option>';
                }
            });

            // 加载数据
            loadDataToPage("<@com.tags.spring.url value='/dbac/' />" + $("#select-vehicle-id").val() + ".json");

            // 选择下拉框时的操作
            $("#select-vehicle-id").change(function (e) {
                loadDataToPage("<@com.tags.spring.url value='/dbac/' />" + $(this).val() + ".json");
            });
        });
    </script>
    <div id="content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <div id="cat_gps_id" page-region="header">
                                <span class="label" >车牌号</span>
                                <select id="select-vehicle-id"></select>
                            </div>
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox" page-region="body" >
                                                <#-- 概况 -->
                                                <@generalSituationPanel />

                                                <#-- 速度分布 -->
                                                <@speedDistributionPanel />

                                                <#-- 加速度分布 -->
                                                <@accelerationDistributionPanel />

                                                <#-- 减速度分布 -->
                                                <@decelerationDistributionPanel />

                                                <#-- 驾驶时间分布 -->
                                                <@drivingTimeDistributionPanel />
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!--table list end-->
                </div>
            </div>
        </div>
    </div>
</#macro>

<#-- 概况 -->
<#macro generalSituationPanel>
    <table id="panel-general-situation" class="data_table" >
        <tbody>
        <tr>
            <td >&nbsp;</td>
            <td width="120">月平均驾驶时间</td>
            <td width="80" data-name="monthAvgTime">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td data-name="monthAvgTimeProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >月平均驾驶里程</td>
            <td data-name="monthAvgMileage">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td data-name="monthAvgMileageProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >疲劳驾驶概率</td>
            <td data-name="fatigueDrivingProbability">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td data-name="fatigueDrivingProbabilityProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        </tbody>
    </table>
</#macro>

<#-- 速度分布 -->
<#macro speedDistributionPanel>
    <table id="panel-speed-distribution" class="data_table" >
        <caption>
            <h3>速度分布</h3>
        </caption>
        <tbody>
        <tr>
            <td >&nbsp;</td>
            <td width="120">最高速度</td>
            <td width="240" data-name="maxSpeed">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td rowspan="9">
                <div class="chart_container" ></div>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >平均速度</td>
            <td data-name="avgSpeed">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td colspan="2" data-name="avgSpeedProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        </tbody>
    </table>
</#macro>

<#-- 加速度分布 -->
<#macro accelerationDistributionPanel>
    <table id="panel-acceleration-distribution" class="data_table" >
        <caption>
            <h3>加速度分布</h3>
        </caption>
        <tbody>
        <tr>
            <td >&nbsp;</td>
            <td width="120">最高加速度</td>
            <td width="240" data-name="maxAcceleration">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td rowspan="9">
                <div class="chart_container" ></div>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >平均加速度</td>
            <td data-name="avgAcceleration" >
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td colspan="2" data-name="avgAccelerationProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        </tbody>
    </table>
</#macro>

<#-- 减速度分布 -->
<#macro decelerationDistributionPanel>
    <table id="panel-deceleration-distribution" class="data_table" >
        <caption>
            <h3>减速度分布</h3>
        </caption>
        <tbody>
        <tr>
            <td >&nbsp;</td>
            <td width="120">最高减速度</td>
            <td width="240" data-name="maxDeceleration">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
            <td rowspan="9">
                <div class="chart_container" ></div>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >平均减速度</td>
            <td data-name="avgDeceleration">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td colspan="2" data-name="avgDecelerationProportion">
                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
            </td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;</td>
        </tr>
        </tbody>
    </table>
</#macro>

<#-- 驾驶时间分布 -->
<#macro drivingTimeDistributionPanel>
    <table id="panel-driving-time-distribution" class="data_table" >
        <caption>
            <h3>驾驶时间分布</h3>
        </caption>
        <tbody>
            <tr>
                <td >&nbsp;</td>
                <td width="120">&nbsp;</td>
                <td width="120" data-name="vehicleId">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td width="100">平均水平</td>
                <td rowspan="9">
                    <div class="chart_container" ></div>
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >清晨（5-6）</td>
                <td data-name="earlyMorningProportion">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-key="chart-key-early-morning">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >早高峰（7-10）</td>
                <td data-name="morningPeakProportion">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-key="chart-key-morning-peak">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >白天（11-16）</td>
                <td data-name="dayProportion">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-key="chart-key-day">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >晚高峰（17-20）</td>
                <td data-name="evenignPeakProportion">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-key="chart-key-evenign-peak">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >深夜（21-4）</td>
                <td data-name="nightProportion">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-key="chart-key-night">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
            <tr>
                <td colspan="4" >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" >&nbsp;</td>
            </tr>
        </tbody>
    </table>
</#macro>
