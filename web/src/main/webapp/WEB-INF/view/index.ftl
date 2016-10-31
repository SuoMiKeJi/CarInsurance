<#import "/lib/common.ftl" as com />
<#import "/lib/index.ftl" as lib />
<#escape x as (x)!>
    <#compress>
        <@com.indexHeader projectName="CarInsurance" title="首页 - 车险 - 索米科技" selected="INDEX" />
            <@com.left selected="INDEX" />
            <@lib.content />
        <@com.indexFooter />
    </#compress>
</#escape>