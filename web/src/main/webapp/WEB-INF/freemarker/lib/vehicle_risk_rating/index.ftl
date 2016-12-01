<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/css/highcharts.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/vehicle_risk_rating/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/highcharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlCharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/vehicle_risk_rating/index.js' />"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // 车辆风险统计
            jlCharts.column({
                title: "风险分布",
                subtitle: "",
                xAxis: {title: "风险等级"},
                yAxis: {title: "车辆数"},
                tooltip: {
                    headerFormat: '风险等级：<b>{point.key}</b><br/>',
                    pointFormat: '车 辆 数：<b>{point.y}</b> 台'
                },
                data: ${Request["chart-vehicle-risk-statistics"]!"null"}
            }, $("#chart-vehicle-risk-statistics"));

            // 建议保险折扣统计
            jlCharts.column({
                title: "建议保费折扣分布",
                subtitle: "",
                xAxis: {title: "保费折扣（%）"},
                yAxis: {title: "车辆数"},
                tooltip: {
                    headerFormat: '保费折扣：<b>{point.key} %</b><br/>',
                    pointFormat: '车 辆 数：<b>{point.y}</b> 台'
                },
                data: ${Request["chart-insurance-discount-statistics"]!"null"}
            }, $("#chart-insurance-discount-statistics"));

            // 欺骗风险统计
            jlCharts.column({
                title: "欺骗风险概率分布",
                subtitle: "",
                xAxis: {title: "欺骗风险概率（%）"},
                yAxis: {title: "车辆数"},
                tooltip: {
                    headerFormat: '欺骗风险概率：<b>{point.key} %</b><br/>',
                    pointFormat: '车 辆 数：<b>{point.y}</b> 台'
                },
                data: ${Request["chart-fraud-risk-statistics"]!"null"}
            }, $("#chart-fraud-risk-statistics"));
        });
    </script>
    <div id="content" >
        <div class="container-fluid" >
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <table class="table table-bordered with-check">
                                <tbody>
                                <tr>
                                    <td style="padding:0;">
                                        <div class="tabbox" page-region="body" >
                                            <table width="100%">
                                                <thead >
                                                    <tr>
                                                        <th width="10">&nbsp;</th>
                                                        <th width="80" >车牌号</th>
                                                        <th width="60" >风险评级</th>
                                                        <th width="120" >比较（自有客户）</th>
                                                        <th width="100" >建议保险折扣</th>
                                                        <th width="60" >欺骗风险</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <#if list?? && (list?size > 0) >
                                                        <#list list as bean>
                                                            <#if bean?? && "" != bean?trim >
                                                                <tr>
                                                                    <td >&nbsp;</td>
                                                                    <td >${bean.vehicleId!}</td>
                                                                    <td >${(bean.riskRating!0)?string("#.#")}</td>
                                                                    <td >超过${((bean.riskRatingProportion!0) * 100)?string("#.#")}%的自有用户</td>
                                                                    <td >${((bean.suggestedDiscount!0) * 100 - 5)?string("#.#")}% - ${((bean.suggestedDiscount!0) * 100 + 5)?string("#.#")}%</td>
                                                                    <td >${((bean.fraudRisk!0) * 100)?string("#.#")}%</td>
                                                                </tr>
                                                            </#if>
                                                        </#list>
                                                    </#if>
                                                </tbody>
                                            </table>
                                            <div style="padding-top: 10px;width: 99%;">
                                                <#-- 车辆风险统计 -->
                                                <div id="chart-vehicle-risk-statistics" class="chart_container"></div>
                                                <#-- 建议保险折扣统计 -->
                                                <div id="chart-insurance-discount-statistics" class="chart_container"></div>
                                                <#-- 欺骗风险统计 -->
                                                <div id="chart-fraud-risk-statistics" class="chart_container"></div>
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