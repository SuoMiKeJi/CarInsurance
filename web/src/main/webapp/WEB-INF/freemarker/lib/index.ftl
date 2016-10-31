<#macro content >
    <script type="text/javascript">
        ui.window.layout.init({
            parent : "#content",
            offset : -30,
            brothers : [ "#tableHead" ],
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
                            <img width="100%" src="<@com.tags.spring.url value='/images/bg_01.jpg' />">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!--table list end-->
                </div>
            </div>
        </div>
    </div>
</#macro>