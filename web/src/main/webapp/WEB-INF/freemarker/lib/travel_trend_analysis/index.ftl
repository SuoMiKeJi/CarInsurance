<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/css/highcharts.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/travel_trend_analysis/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/highcharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/datepicker/WdatePicker.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlCharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlData.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/travel_trend_analysis/index.js' />"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // 加载下拉框数据
            loadDataToSelect({
                url : "<@com.tags.spring.url value='/dbac/comboBox.json' />",
                select : "#select-vehicle-id"
            });

            // 图表
            jlCharts.line({
                title: "趋势分析",
                subtitle: "",
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },
                yAxis: {title: ""},
                tooltip: {
                    pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>'
                },
                data: [{
                    name: 'Tokyo',
                    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                }, {
                    name: 'New York',
                    data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
                }, {
                    name: 'Berlin',
                    data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
                }, {
                    name: 'London',
                    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                }]
            }, '#chart-driving-behavior-analysis');
        });
    </script>
    <div id="content" >
        <div class="container-fluid" >
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <div id="cat_gps_id" page-region="header">
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
                                    <input name="startMonth" class="Wdate time_input" onClick="WdatePicker()" />
                                    <span>-</span>
                                    <input name="endMonth" class="Wdate time_input" onClick="WdatePicker()" />
                                </span>
                            </div>
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox" page-region="body" >
                                                <table class="data_table">
                                                    <thead >
                                                        <tr>
                                                            <th width="10" >&nbsp;</th>
                                                            <th width="80" >GPS</th>
                                                            <th width="80" >车牌号</th>
                                                            <th width="60" >年月</th>
                                                            <th width="120" >里程</th>
                                                            <th width="100" >时长</th>
                                                            <th width="60" >平均速度</th>
                                                            <th width="60" >平均加速度</th>
                                                            <th width="60" >平均减速度</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                            <td >
                                                                <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div style="padding-top: 10px;width: 99%;">
                                                    <div id="chart-driving-behavior-analysis" class="chart_container"></div>
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