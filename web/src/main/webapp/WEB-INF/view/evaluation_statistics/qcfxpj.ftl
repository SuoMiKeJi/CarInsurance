<#import "/lib/common.ftl" as com />
<#import "/lib/evaluation_statistics/qcfxpj.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader projectName="DEMO" title="汽车风险评级 - DEMO - 索米科技" selected="INDEX" />
        <@com.left selected="QCFXPJ" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>