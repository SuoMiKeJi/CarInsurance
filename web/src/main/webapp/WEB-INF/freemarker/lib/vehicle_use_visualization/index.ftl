<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/vehicle_use_visualization/index.css' />"/>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/my-js/jlData.js' />"></script>
    <script type="text/javascript" src="<@com.tags.spring.url value='/script/web/common.js' />"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            // 加载下拉框数据
            loadDataToSelect({
                url : "<@com.tags.spring.url value='/dbac/comboBox.json' />",
                async : false,
                select : "#select-vehicle-id",
                header : {
                    text : "--- 请选择 ---",
                    value : ""
                },
                each : function (index, element) {
                    var id = $(element).attr("gpsId");
                    var name = $(element).attr("vehicleId");
                    return '<option value="' + id + '" > ' + name + '</option>';
                }
            });

            // 下拉框点击操作
            $("#select-vehicle-id").change(function (e) {
                if (typeof (this.value) == "string" && this.value != ""){
                    $("#cat_map_img").attr("src", "<@com.tags.spring.url value='/vehicle_use_visualization/' />" + this.value + ".jpg");
                }else {
                    $("#cat_map_img").attr("src", "<@com.tags.spring.url value='/images/world-map.jpg' />");
                }
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
                                <span class="label">车牌号</span>
                                <select id="select-vehicle-id" page-region="header"></select>
                            </div>
                            <table class="table table-bordered with-check" >
                                <tbody>
                                <tr>
                                    <td style="padding:0;">
                                        <div class="tabbox">
                                            <div style="padding-top: 10px;padding-left: 15px;">
                                                <img id="cat_map_img" page-region="body" src="<@com.tags.spring.url value='/images/world-map.jpg' />">
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