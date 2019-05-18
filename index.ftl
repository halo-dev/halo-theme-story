<#--
	每个人都有属于自已的故事，我们编织着、叙述着，只为了那个必定动人的结局。
	爱上自已的故事，爱上别人的故事，交织着的，是美好，是快乐，是幸福。
	本项目属于 ProjectNatureSimple

	@package Story
	@author Trii Hsia
	@version v1@.0 #20180816
	@link https://yumoe.com
-->
<#include "header.ftl">
<@header title="${options.blog_title!'Story'}" desc="${options.seo_description!'Story'}" keywords="${options.seo_keywords!'Story'}"></@header>
<div class="container-fluid">
    <div class="row">
		<div id="main" role="main">
			<ul class="post-list clearfix">
				<#if posts??>
					<#list posts.content as post>
						<li class="post-item grid-item" itemscope itemtype="http://schema.org/BlogPosting">
							<a class="post-link" href="${ctx!}/archives/${post.url}">
								<h3 class="post-title"><time class="index-time" datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string('MMM d,yyyy')}</time><br>${post.title}</h3>
								<div class="post-meta">
									<#if post.categories?? && post.categories?size gt 0>
									${post.categories[0].name}
									</#if>
								</div>
							</a>
						</li>
					</#list>
				</#if>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid">
    <div class="row">
		<#if posts.totalPages gt 1>
		<div class="nav-page">
            <ol class="page-navigator">
				<#if posts.hasPrevious()>
					<#if posts.number == 1>
					<li class="prev">
						<a href="${ctx!}/">&laquo;</a>
					</li>
					<#else>
					<li class="prev">
						<a href="${ctx!}/page/${posts.number}/">&laquo;</a>
					</li>
					</#if>
				</#if>
				<li>
					<a href="#">${posts.number+1}</a>
				</li>
				<#if posts.hasNext()>
					<li class="next">
						<a href="${ctx!}/page/${posts.number+2}">&raquo;</a>
					</li>
				</#if>
			</ol>
		</div>
		</#if>
	</div>
</div>
<#include "footer.ftl">
