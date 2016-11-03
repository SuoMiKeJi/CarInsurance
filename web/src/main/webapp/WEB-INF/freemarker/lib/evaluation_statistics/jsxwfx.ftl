<#macro content >
    <script type="text/javascript">
        $(document).ready(function(){
            $("#vehicleIdSelect").change(function (e) {
                window.location="<@com.tags.spring.url value='/es/dba/' />" + this.value;
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
                            <div id="cat_gps_id" >
                                <span>ID</span>
                                <select id="vehicleIdSelect">
                                    <option value="皖A-50D90" <#if bean.vehicleId == "皖A-50D90" >selected</#if> >皖A-50D90</option>
                                    <option value="粤B-7H4S3" <#if bean.vehicleId == "粤B-7H4S3" >selected</#if> >粤B-7H4S3</option>
                                    <option value="蒙A-QZ063" <#if bean.vehicleId == "蒙A-QZ063" >selected</#if> >蒙A-QZ063</option>
                                    <option value="贵C-DL884" <#if bean.vehicleId == "贵C-DL884" >selected</#if> >贵C-DL884</option>
                                    <option value="闽C-M065V" <#if bean.vehicleId == "闽C-M065V" >selected</#if> >闽C-M065V</option>
                                </select>
                            </div>
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox">
                                                <table style="width: 100%;padding-top: 10px;">
                                                    <tbody>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td width="120">月平均驾驶时间</td>
                                                            <td width="80">${bean.monthAvgTime!0}小时</td>
                                                            <td >超过${(bean.monthAvgTimePercentage!0) * 100}%的客户</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >月平均驾驶里程</td>
                                                            <td >${bean.monthAvgMileage!0}公里</td>
                                                            <td >超过${(bean.monthAvgMileagePercentage!0) * 100}%的客户</td>
                                                        </tr>
                                                        <tr>
                                                            <td >&nbsp;</td>
                                                            <td >疲劳驾驶概率</td>
                                                            <td >${(bean.fatigueDrivingProbability!0) * 100}%</td>
                                                            <td >超过${(bean.fatigueDrivingProbabilityPercentage!0) * 100}%的客户</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            <#--速度分布-->
                                                <table style="width: 100%;padding-top: 10px;">
                                                    <caption>
                                                        <h3>速度分布</h3>
                                                    </caption>
                                                    <tbody>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td width="120">最高速度</td>
                                                        <td width="240">${bean.maxSpeed!0}公里/小时</td>
                                                        <td rowspan="9">
                                                            <img src="<@com.tags.spring.url value='/jsxwfx/${bean.vehicleId!}/xssdfb.png' />">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >平均速度</td>
                                                        <td >${bean.avgSpeed!0}公里/小时</td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td colspan="2" >均速超过${(bean.avgSpeedPercentage!0) * 100}%的客户</td>
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

                                            <#--加速度分布-->
                                                <table style="width: 100%;padding-top: 10px;">
                                                    <caption>
                                                        <h3>加速度分布</h3>
                                                    </caption>
                                                    <tbody>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td width="120">最高加速度</td>
                                                        <td width="240">${bean.maxAcceleration!0}米/秒<sup>2</sup></td>
                                                        <td rowspan="9">
                                                            <img src="<@com.tags.spring.url value='/jsxwfx/${bean.vehicleId!}/jiasdfb.png' />">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >平均加速度</td>
                                                        <td >${bean.avgAcceleration!0}米/秒<sup>2</sup></td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td colspan="2" >加速超过${(bean.avgAccelerationPercentage!0) * 100}%的客户</td>
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

                                            <#--减速度分布-->
                                                <table style="width: 100%;padding-top: 10px;">
                                                    <caption>
                                                        <h3>减速度分布</h3>
                                                    </caption>
                                                    <tbody>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td width="120">最高减速度</td>
                                                        <td width="240">${bean.maxDeceleration!0}米/秒<sup>2</sup></td>
                                                        <td rowspan="9">
                                                            <img src="<@com.tags.spring.url value='/jsxwfx/${bean.vehicleId!}/jiansdfb.png' />">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >平均减速度</td>
                                                        <td >${bean.avgDeceleration!0}米/秒<sup>2</sup></td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >减速超过${(bean.avgDecelerationPercentage!0) * 100}%的客户</td>
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

                                            <#--驾驶时间分布-->
                                                <table style="width: 100%;padding-top: 10px;">
                                                    <caption>
                                                        <h3>驾驶时间分布</h3>
                                                    </caption>
                                                    <tbody>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td width="120">&nbsp;</td>
                                                        <td width="120">${bean.vehicleId!}</td>
                                                        <td width="100">平均水平</td>
                                                        <td rowspan="9">
                                                            <img src="<@com.tags.spring.url value='/jsxwfx/${bean.vehicleId!}/jssjfb.png' />">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >清晨（5-6）</td>
                                                        <td >${(bean.earlyMorningPercentage!0) * 100}%</td>
                                                        <td >5%</td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >早高峰（7-10）</td>
                                                        <td >${(bean.morningPeakPercentage!0) * 100}%</td>
                                                        <td >17%</td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >白天（11-16）</td>
                                                        <td >${(bean.dayPercentage!0) * 100}%</td>
                                                        <td >28%</td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >晚高峰（17-20）</td>
                                                        <td >${(bean.evenignPeakPercentage!0) * 100}%</td>
                                                        <td >24%</td>
                                                    </tr>
                                                    <tr>
                                                        <td >&nbsp;</td>
                                                        <td >深夜（21-4）</td>
                                                        <td >${(bean.nightPercentage!0) * 100}%</td>
                                                        <td >26%</td>
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