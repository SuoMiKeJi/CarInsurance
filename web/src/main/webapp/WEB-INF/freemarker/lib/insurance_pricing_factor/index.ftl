<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/insurance_pricing_factor/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlData.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/insurance_pricing_factor/index.js' />"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // 下载
            $("[name='download']").click(function () {
                window.location="<@com.tags.spring.url value='/ipfc/export.excel' />";
            });

            // 加载页面数据
            loadDataToViewPanel({
                url : "<@com.tags.spring.url value='/ipfc/all.json' />"
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
                                <span class="label_spacing">
                                    <button name="download" class="blue button">下载</button>
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
                <th width="5" >&nbsp;</th>
                <th width="70" >车牌号</th>
                <th width="60" >行程次数</th>
                <th width="65" >时长(<span>小时</span>)</th>
                <th width="65" >里程(<span>公里</span>)</th>
                <th width="70" >风险评级</th>
                <th width="70" >建议折扣</th>
                <th width="70" >欺骗风险</th>
                <th width="120" >平均速度(<span>公里/小时</span>)</th>
                <th width="120" >平均加速度(<span>米/秒<sup>2</sup></span>)</th>
                <th width="120" >平均减速度(<span>米/秒<sup>2</sup></span>)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td >&nbsp;</td>
                <td data-name="vehicleId">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="tripCount">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="duration">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="mileage">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="riskRating">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="suggestedDiscount">
                    <img src="<@com.tags.spring.url value='/images/loading_95_7.gif' />" />
                </td>
                <td data-name="fraudRisk">
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