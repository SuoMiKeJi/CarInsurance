<#import "/lib/common.ftl" as com />
<#import "/lib/vehicle_risk_rating/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="汽车风险评级" selected="INDEX" />
        <@com.left selected="VRRC" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>