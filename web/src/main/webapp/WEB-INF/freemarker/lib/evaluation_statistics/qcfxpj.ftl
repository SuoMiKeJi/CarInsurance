<#macro content >
    <script type="text/javascript">
        ui.window.layout.init({
            parent : "#content",
            offset : -403,
            brothers : [ "#header", "#footerWapper" ],
            main : ".tabbox"
        });
    </script>
    <div id="content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox">
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
                                                        <tr>
                                                            <td width="10">&nbsp;</td>
                                                            <td width="9%" >YYZX03810</td>
                                                            <td width="9%" >7.1</td>
                                                            <td >超过70.2%的自有用户</td>
                                                            <td width="10%"  >4% - 14%</td>
                                                            <td width="10%"  >2.2%</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >YYZX05028</td>
                                                            <td >5</td>
                                                            <td >超过32.6%的自有用户</td>
                                                            <td >15% - 25%</td>
                                                            <td >1.8%</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >YYZX04777</td>
                                                            <td >4</td>
                                                            <td >超过79.7%的自有用户</td>
                                                            <td >1% - 11%</td>
                                                            <td >2.8%</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >YYZX05248</td>
                                                            <td >7</td>
                                                            <td >超过74.1%的自有用户</td>
                                                            <td >3% - 13%</td>
                                                            <td >3.2%</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >YYZZ02013</td>
                                                            <td >2</td>
                                                            <td >超过6%的自有用户</td>
                                                            <td >23% - 33%</td>
                                                            <td >0.8%</td>
                                                        </tr>
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
                        </div>
                    </div>
                    <!--table list end-->
                </div>
            </div>
        </div>
    </div>
</#macro>