<#macro comment post,type>
<#if !post.disallowComment!false>
<div id="comments" class="gen">
    <script src="https://unpkg.com/vue"></script>
    <script src="/static/js/halo-comment.min.js"></script>
    <halo-comment id="${post.id}" type="${type}"/>
</div>
</#if>
</#macro>