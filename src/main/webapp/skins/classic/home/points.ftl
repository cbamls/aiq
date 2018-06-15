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
<#include "macro-home.ftl">
<#include "../macro-pagination.ftl">
<@home "${type}">
<#if 0 == user.userPointStatus || (isLoggedIn && ("adminRole" == currentUser.userRole || currentUser.userName == user.userName))>
<table class="points">
    <#list userHomePoints as point>
    <tr>
        <td class="date">
            ${point.createTime?string('yyyy-MM-dd')} 
            <span class="ft-gray">${point.createTime?string('HH:mm')}</span>
        </td>
        <td class="name ft-gray">${point.description}</td>
        <td class="responsive-hide sum<#if "+" == point.operation> plus">${point.sum?c}<#else>">-${point.sum?c}</#if></td>
        <td class="type responsive-hide">${point.displayType}</td>
        <td class="balance">${point.balance?c}</td>
    </tr>
    </#list>
</table>
<@pagination url="${servePath}/member/${user.userName}/points" pjaxTitle="${pointLabel} - ${user.userName} - ${symphonyLabel}"/>
<#else>
<p class="ft-center ft-gray home-invisible">${setinvisibleLabel}</p>
</#if>
<div class="top-ranking">
<#include "../common/ranking.ftl">
</div>
</@home>