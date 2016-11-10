<#import "/lib/common.ftl" as com />
<#import "/lib/insurance_pricing_factor/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="保险定价因子" selected="INDEX" />
        <@com.left selected="IPFC" />
        <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>