<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/css/highcharts.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/travel_trend_analysis/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/highcharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/datepicker/WdatePicker.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlCharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/travel_trend_analysis/index.js' />"></script>
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

            // 加载页面数据
            loadDataToViewPanel({
                url : "<@com.tags.spring.url value='/ttac/' />" + $("#select-vehicle-id").val() + "-" + $("#select-dimension-id").val() + ".json",
                chart : '#chart-driving-behavior-analysis'
            });

            // 查询
            $("[name='search']").click(function () {
                loadDataToViewPanel({
                    url : "<@com.tags.spring.url value='/ttac/' />" + $("#select-vehicle-id").val() + "-" + $("#select-dimension-id").val() + ".json",
                    submitData:{
                        startMonth : $('[name="startMonth"]').val(),
                        endMonth : $('[name="endMonth"]').val()
                    },
                    chart : '#chart-driving-behavior-analysis'
                });
            });
        });
    </script>
    <div id="content" >
        <div class="container-fluid" >
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <div id="cat_gps_id" page-region="body" region-height="50px" >
                                <span>
                                    <span class="label">车牌号</span>
                                    <select id="select-vehicle-id" ></select>
                                </span>
                                <span class="label_spacing">
                                    <span class="label ">维度</span>
                                    <select id="select-dimension-id" >
                                        <#if selectMap?? && (selectMap?size > 0) >
                                            <#list selectMap?keys as key>
                                                <#if key?? && "" != key?trim>
                                                    <option value="${key!}">${selectMap[key]!}</option>
                                                </#if>
                                            </#list>
                                        </#if>
                                    </select>
                                </span>
                                <span class="label_spacing">
                                    <span class="label">起止年月</span>
                                    <input name="startMonth" class="Wdate time_input tb_align" readonly="readonly" />
                                    <span class="tb_align">-</span>
                                    <input name="endMonth" class="Wdate time_input tb_align" readonly="readonly" />
                                </span>
                                <span class="label_spacing">
                                    <button name="search" class="blue button">查询</button>
                                </span>
                            </div>
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox" page-region="body" >
                                                <#-- 数据展示面板 -->
                                                <@dataShowPaenl />
                                                <div style="padding-top: 10px;width: 99%;">
                                                    <div id="chart-travel-trend-analysis" class="chart_container"></div>
                                                </div>
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

<#-- 数据展示面板 -->
<#macro dataShowPaenl>
    <table class="data_table">
        <thead >
            <tr>
                <th width="10" >&nbsp;</th>
                <th width="80" >GPS</th>
                <th width="80" >车牌号</th>
                <th width="60" >年月</th>
                <th width="120" >里程(<span>公里</span>)</th>
                <th width="100" >时长(<span>小时</span>)</th>
                <th width="150" >平均速度(<span>公里/小时</span>)</th>
                <th width="120" >平均加速度(<span>米/秒<sup>2</sup></span>)</th>
                <th width="120" >平均减速度(<span>米/秒<sup>2</sup></span>)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td >&nbsp;</td>
                <td data-name="gpsId">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="vehicleId">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="month">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="mileage">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="duration">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="avgSpeed">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="avgAcceleration">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="avgDeceleration">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
            </tr>
        </tbody>
    </table>
</#macro>