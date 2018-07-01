<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#if ADLabel!="">
<div class="module">
    <div class="module-header">
        <h2>
        ${sponsorLabel}
            <a href="https://hacpai.com/article/1460083956075" class="fn-right ft-13 ft-gray" target="_blank">${wantPutOnLabel}</a>
        </h2>
    </div>
    <div class="module-panel ad fn-clear">
    ${ADLabel}
    </div>
</div>
</#if>
<#--
<#if navTrendTags?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
            ${hotTopicLabel}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="tags fn-clear">
            <#list navTrendTags as trendTag>
            <li>
                <a class="btn small" rel="nofollow" href="${servePath}/tag/${trendTag.tagURI}">${trendTag.tagTitle}</a>
            </li>
            </#list>
        </ul>
    </div>
</div>
</#if>
-->
<#if sideHotArticles?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
        ${hotArticleLabel}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="module-list">
            <#list sideHotArticles as hotArticle>
                <li<#if !hotArticle_has_next> class="last"</#if>>
                    <#if "someone" != hotArticle.articleAuthorName>
                    <a rel="nofollow" href="${servePath}/member/${hotArticle.articleAuthorName}"></#if>
                    <span class="avatar-small slogan"
                          style="background-image:url('${hotArticle.articleAuthorThumbnailURL20}')"></span>
                    <#if "someone" != hotArticle.articleAuthorName></a></#if>
                    <a rel="nofollow" class="title" title="${hotArticle.articleTitle}" href="${hotArticle.articlePermalink}">${hotArticle.articleTitleEmoj}</a>
                </li>
            </#list>
        </ul>
    </div>
</div>
</#if>
<#if sideTags?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
        ${recommendedTags}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="tag-desc fn-clear">
            <#list sideTags as tag>
                <li>
                    <a rel="nofollow" href="${servePath}/tag/${tag.tagURI}">
                        <#if tag.tagIconPath!="">
                            <img src="${staticServePath}/images/tags/${tag.tagIconPath}" alt="${tag.tagTitle}" /></#if>
                    ${tag.tagTitle}
                    </a>
                    <div<#if tag.tagDescription == ''> style="width:auto"</#if>>
                        <div>${tag.tagDescription}</div>
                        <span class="fn-right">
                        <span class="ft-gray">${referenceLabel}</span>
                        ${tag.tagReferenceCount} &nbsp;
                        <span class="ft-gray">${cmtLabel}</span>
                        ${tag.tagCommentCount}&nbsp;
                    </span>

                    </div>
                </li>
            </#list>
        </ul>
    </div>
</div>
</#if>


<div class="module">
    <div class="module-header">
        <h2>博客推荐</h2>
    </div>
    <div class="module-panel">
        <ul class="module-list open-source">
            <li>
                <a target="_blank" rel="noopener" href="http://muyinchen.github.io/"><b class="ft-red slogan">【知秋】</b></a>
                <a class="title" target="_blank" rel="noopener" href="http://muyinchen.github.io/">国内Java响应式编程大佬</a>
            </li>
            <li class="last">
                <a target="_blank" rel="noopener" href="http://jm.taobao.org/"> <b class="ft-green slogan">【阿里中间件】</b></a>
                <a class="title" target="_blank" rel="noopener" href="http://jm.taobao.org/">阿里中间件技术团队</a>
            </li>
            <li>
                <a target="_blank" rel="noopener" href="https://tech.meituan.com"><b class="ft-blue slogan">【美团】</b></a>
                <a class="title" target="_blank" rel="noopener" href="https://tech.meituan.com">美团点评技术博客 </a>
            </li>
            <li class="last">
                <a target="_blank" rel="noopener" href="https://techblog.toutiao.com/ "> <b class="ft-gray slogan">【今日头条】</b></a>
                <a class="title" target="_blank" rel="noopener" href="https://techblog.toutiao.com/">今日头条技术博客</a>
            </li>

        </ul>
    </div>
</div>
