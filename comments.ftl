<#macro comment post,type>
<#if !post.disallowComment!false>
<div id="comments" class="gen">
    <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script src="/static/js/halo-comment.min.js"></script>
    <halo-comment id="${post.id}" type="${type}"/>
</div>
</#if>
</#macro>