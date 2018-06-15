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
<#include "macro-admin.ftl">
<#include "../macro-pagination.ftl">
<@admin "breezemoons">
<div class="list content admin">
    <ul>
        <#list breezemoons as item>
        <li>
            <div class="fn-clear">
                <div class="avatar" style="background-image:url('${item.breezemoonAuthorThumbnailURL48}')" title="${item.breezemoonAuthorName}"></div>
                <#if item.breezemoonStatus == 0>
                <span class="ft-gray">${validLabel}</span>
                <#else>
                <font class="ft-red">${banLabel}</font>
                </#if>
                <a href="${servePath}/admin/breezemoon/${item.oId}" class="fn-right">${editLabel}</a>
                <div class="fn-hr5"></div>
                ${createTimeLabel} ${item.breezemoonCreateTime?string('yyyy-MM-dd HH:mm')} &nbsp;
            </div>
            <div class="fn-hr5"></div>
            <div class="content-reset">
                 ${item.breezemoonContent}
            </div>
        </li>
        </#list>
    </ul>
    <@pagination url="${servePath}/admin/breezemoons"/>
</div>
</@admin>