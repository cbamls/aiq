<#include "macro-head.ftl">
<#include "common/title-icon.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
            <meta name="keywords" content="${keywords}"/>
            <meta name="description" content="${symDescriptionLabel}"/>
            <meta name="baidu-site-verification" content="LkNBV6amx7" />
            <style>
                .nav {
                    height: 48px;
                    width: 100%;
                    background-color: #4285f4;
                    z-index: 83;
                    position: relative;
                    box-sizing: border-box;
                    display: flex;
                    padding: 0 10px;
                }
            </style>
        </@head>
        <link rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}">
    </head>
    <body class="index">
        ${HeaderBannerLabel}
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="index-main">
                    <div class="index-tabs fn-flex" id="articles">
                        <span class="current" data-index="0">
                        </span>
                        <span class="tags" data-index="1">

                        </span>
                        <span class="users" data-index="2">

                        </span>
                    </div>
                    <div class="index-tabs-panels list article-list">
                        <ul>
                        <#list recentArticles as article>
                            <#include "common/list-item.ftl">
                        </#list>
                        <#if recentArticles?size == 0>
                            <li class="ft-center">
                                <br><br>
                            ${systemEmptyLabel}<br>
                            ${systemEmptyTipLabel}<br>
                                <img src="${staticServePath}/images/404/5.gif"/>
                            </li>
                        </#if>
                            <li>
                                <a class="more" href="${servePath}/recent">${moreRecentArticleLabel}</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="index-side">
                    <div class="index-tabs fn-flex">
                        <span class="perfect">
                        </span>
                        <span class="check">
                        </span>
                    </div>
                    <div class="perfect-panel list">
                        <ul>
                        <#list perfectArticles as article>
                            <li>
                                <a rel="nofollow" href="${servePath}/member/${article.articleAuthorName}">
                                    <span class="avatar-small tooltipped tooltipped-se" aria-label="${article.articleAuthorName}" style="background-image:url('${article.articleAuthorThumbnailURL48}')"></span>
                                </a>
                                <a rel="nofollow" class="fn-ellipsis ft-a-title" href="${servePath}${article.articlePermalink}">${article.articleTitleEmoj}</a>
                                <a class="fn-right count ft-gray ft-smaller" href="${servePath}${article.articlePermalink}"><#if article.articleViewCount < 1000>
                                    ${article.articleViewCount}<#else>${article.articleViewCntDisplayFormat}</#if></a>
                            </li>
                        </#list>
                        <#if perfectArticles?size == 0>
                            <li>${chickenEggLabel}</li>
                        </#if>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="index__bottom">
                <div class="wrapper">
                    <div class="fn-flex-1">
                        <div class="metro-line fn-flex">
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag0.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag0.tagIconPath}" alt="${tag0.tagTitle}">
                                    <b>${tag0.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag1.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag1.tagIconPath}" alt="${tag1.tagTitle}">
                                    <b>${tag1.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag2.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag2.tagIconPath}" alt="${tag2.tagTitle}">
                                    <b>${tag2.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag3.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag3.tagIconPath}" alt="${tag3.tagTitle}">
                                    <b>${tag3.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag4.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag4.tagIconPath}" alt="${tag4.tagTitle}">
                                    <b>${tag4.tagTitle}</b>
                                </a>
                            </div>
                        </div>
                        <div class="metro-line fn-flex">
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag5.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag5.tagIconPath}" alt="${tag5.tagTitle}">
                                    <b>${tag5.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag6.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag6.tagIconPath}" alt="${tag6.tagTitle}">
                                    <b>${tag6.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag7.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag7.tagIconPath}" alt="${tag7.tagTitle}">
                                    <b>${tag7.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag8.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag8.tagIconPath}" alt="${tag8.tagTitle}">
                                    <b>${tag8.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag9.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag9.tagIconPath}" alt="${tag9.tagTitle}">
                                    <b>${tag9.tagTitle}</b>
                                </a>
                            </div>
                        </div>
                        <div class="metro-line fn-flex">
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag10.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag10.tagIconPath}" alt="${tag10.tagTitle}">
                                    <b>${tag10.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag11.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag11.tagIconPath}" alt="${tag11.tagTitle}">
                                    <b>${tag11.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                                <a class="preview" href="${servePath}/tag/${tag12.tagURI}">
                                    <img src="${staticServePath}/images/tags/${tag12.tagIconPath}" alt="${tag12.tagTitle}">
                                    <b>${tag12.tagTitle}</b>
                                </a>
                            </div>
                            <div class="metro-item">
                            <#if ADLabel != '' >
                                <a class="preview" href="https://hacpai.com/article/1460083956075">
                                    <img src="${staticServePath}/emoji/graphics/heart.png" alt="${sponsorLabel}">
                                    <b>${adDeliveryLabel}</b>
                                </a>
                            <#else>
                                <a class="preview" href="https://hacpai.com/man">
                                    <img src="${staticServePath}/images/tags/shell.png" alt="${sponsorLabel}">
                                    <b>Hacker's Manual</b>
                                </a>
                            </#if>
                            </div>
                            <div class="metro-item">
                            <#if ADLabel != '' >
                                <div class="ad">
                                ${ADLabel}
                                </div>
                            <#else>
                                <a class="preview" href="https://hacpai.com/article/1460083956075">
                                    <img src="${staticServePath}/emoji/graphics/heart.png" alt="${sponsorLabel}">
                                    <b>${adDeliveryLabel}</b>
                                </a>
                            </#if>
                            </div>
                        </div>

                        <div class="metro-border fn-flex">
                            <div></div>
                            <div class="green"></div>
                            <div class="yellow"></div>
                            <div class="red"></div>
                            <div class="purple"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <#include "footer.ftl">
        <script src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
        <script type="text/javascript">
            $('.metro-item').height($('.metro-item').width());

            // tag click
            $('.preview, .index-tabs > span').click(function (event) {
                var $it = $(this),
                        maxLen = Math.max($it.width(), $it.height());
                $it.prepend('<span class="ripple" style="top: ' + (event.offsetY - $it.height() / 2)
                        + 'px;left:' + (event.offsetX - $it.width() / 2) + 'px;height:' + maxLen + 'px;width:' + maxLen + 'px"></span>');

                setTimeout(function () {
                    $it.find('.ripple').remove();
                }, 800);
            });
        </script>
    </body>
</html>