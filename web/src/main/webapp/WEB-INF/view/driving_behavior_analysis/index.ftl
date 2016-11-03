<#import "/lib/common.ftl" as com />
<#import "/lib/driving_behavior_analysis/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="驾驶行为分析" selected="DBAC" />
        <@com.left selected="JSXWFX" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>