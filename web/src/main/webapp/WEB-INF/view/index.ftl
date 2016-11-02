<#import "/lib/common.ftl" as com />
<#import "/lib/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader title="首页" selected="INDEX" />
            <@com.left selected="INDEX" />
            <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>