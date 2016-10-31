<#macro content >
    <script type="text/javascript">
        $(document).ready(function(){
            $("#gpsIdSelect").change(function (e) {
                $("#cat_map_img").attr("src", "<@com.tags.spring.url value='/qcsyksh/' />" + this.value + ".jpg");
            });
        });
        ui.window.layout.init({
            parent : "#content",
            offset : -73,
            brothers : [ "#header", "#footerWapper", "#cat_gps_id" ],
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
                            <div id="cat_gps_id" >
                                <span>ID</span>
                                <select id="gpsIdSelect">
                                    <option value="YYZX03810" selected >YYZX03810</option>
                                    <option value="YYZX05028" >YYZX05028</option>
                                    <option value="YYZX04777" >YYZX04777</option>
                                    <option value="YYZX05248" >YYZX05248</option>
                                    <option value="YYZZ02013" >YYZZ02013</option>
                                </select>
                            </div>
                            <table class="table table-bordered with-check">
                                <tbody>
                                    <tr>
                                        <td style="padding:0;">
                                            <div class="tabbox">
                                                <div style="padding-top: 10px;padding-left: 15px;">
                                                    <img id="cat_map_img" src="<@com.tags.spring.url value='/qcsyksh/YYZX03810.jpg' />">
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