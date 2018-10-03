<div id="comments" class="gen">
    <#if post.allowComment?default(1)==1>
        <#include "/common/comment/_native_comment.ftl">
    </#if>
</div>
