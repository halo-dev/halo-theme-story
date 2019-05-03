<#include "header.ftl">
<@header title="${post.title!} - ${options.blog_title!'Story'}" desc="${post.summary!}" keywords="${options.seo_keywords!'Story'},${tagWords!}"></@header>
<div class="container-fluid">
    <div class="row">
        <div id="main" class="col-12 clearfix" role="main">
            <article class="posti" itemscope itemtype="http://schema.org/BlogPosting">
                <h1 class="post-title" itemprop="name headline">${post.title}</h1>
                <div class="post-meta">
                    <p>Written by <a itemprop="name" href="${options.blog_url!'#'}" rel="author">${user.nickname!}</a> with ♥ on <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string('MMM d,yyyy')}</time><#if categories?size gt 0> in <#list categories as cate><a href="/categories/${cate.slugName}">${cate.name}</a></#list></#if></p>
                </div>

                <div class="post-content" itemprop="articleBody">
                    ${post.formatContent!}
                </div>

                <div style="display:block;" class="clearfix">
                    <section style="float:left;">
                        <span itemprop="keywords" class="tags">
                            tag(s): <#if tags?size gt 0><#list tags as tag><a href="${options.blog_url!}/tags/${tag.slugName}">${tag.name}</a>&nbsp;</#list></#if>
                        </span>
                    </section>
                    <section style="float:right;">
                        <span><a id="btn-comments" href="javascript:isComments();">show comments</a></span> · <span><a href="javascript:goBack();">back</a></span> ·
                        <span><a href="${options.blog_url!'#'}">home</a></span>
                    </section>
                </div>
                <#include "comments.ftl">
            </article>
        </div>
    </div>
</div>
<#include "footer.ftl">
