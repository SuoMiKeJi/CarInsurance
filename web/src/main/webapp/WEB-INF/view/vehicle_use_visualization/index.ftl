<#import "/lib/common.ftl" as com />
<#import "/lib/vehicle_use_visualization/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="汽车使用可视化" selected="INDEX" />
        <@com.left selected="VUVC" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>