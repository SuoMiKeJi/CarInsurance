<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/css/highcharts.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/driving_behavior_analysis/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/plugins/Highcharts-5.0.2/code/highcharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlCharts.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlData.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/driving_behavior_analysis/index.js' />"></script>
    <script type="text/javascript">
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
                                                        <th width="9%" >车牌号</th>
                                                        <th width="9%" >风险评级</th>
                                                        <th >比较（自有客户）</th>
                                                        <th width="10%" >建议保险折扣</th>
                                                        <th width="10%" >欺骗风险</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <#list list as bean>
                                                        <tr>
                                                            <td width="10">&nbsp;</td>
                                                            <td width="9%" >${bean.vehicleId!}</td>
                                                            <td width="9%" >${(bean.riskRating!0)?string("#.#")}</td>
                                                            <td >超过${((bean.riskRatingProportion!0) * 100)?string("#.#")}%的自有用户</td>
                                                            <td width="10%"  >${((bean.suggestedDiscount!0) * 100 - 5)?string("#.#")}% - ${((bean.suggestedDiscount!0) * 100 + 5)?string("#.#")}%</td>
                                                            <td width="10%"  >${((bean.fraudRisk!0) * 100)?string("#.#")}%</td>
                                                        </tr>
                                                    </#list>
                                                </tbody>
                                            </table>
                                            <div style="padding-top: 10px;padding-left: 15px;">
                                                <img src="<@com.tags.spring.url value='/qcfxpj/fxdj.png' />">
                                            </div>
                                            <div style="padding-top: 10px;padding-left: 15px;">
                                                <img src="<@com.tags.spring.url value='/qcfxpj/jywfzk.png' />">
                                            </div>
                                            <div style="padding-top: 10px;padding-left: 15px;padding-bottom: 10px;">
                                                <img src="<@com.tags.spring.url value='/qcfxpj/qpfxgl.png' />">
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