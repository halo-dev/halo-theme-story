<#include "header.ftl">
<@header title="友情链接 - ${blog_title!}" ></@header>
<div class="container-fluid">
    <div class="row">
        <div id="main" class="col-12 clearfix" role="main">
            <article class="posti" itemscope itemtype="http://schema.org/BlogPosting">
                <h1 style="text-align:right;" class="post-title" itemprop="name headline">Links</h1>
                <div class="post-content" itemprop="articleBody">
                    <ul>
                        <@linkTag method="list">
                            <#if links?size gt 0>
                                <#list links as link>
                                    <li>
                                        <a target="_blank" href="${link.url}">${link.name}</a>
                                    </li>
                                </#list>
                            </#if>
                        </@linkTag>
                    </ul>
                </div>
            </article>
        </div>
    </div>
</div>
<#include "footer.ftl">
