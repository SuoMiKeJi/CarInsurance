<#import "/lib/common.ftl" as com />
<#import "/lib/travel_trend_analysis/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="行驶趋势分析" selected="INDEX" />
        <@com.left selected="TTAC" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>