<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../baseAttr.tag" %>

<c:url var="logoImgUrl" value="/resources/images/cloud-logo.png" />
<c:url var='agentsUrl' value='/agents'/>
<c:url var='permanentlyDeleteUrl' value='/permanent-deleted-documents'/>
<c:url var='logoutUrl' value='/j_spring_security_logout'/>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<%@ attribute name="agentsCls" required="false" rtexprvalue="true" %>
<%@ attribute name="permanentlyDeleteCls" required="false" rtexprvalue="true" %>

<div class="logo-section">
    <img src="${logoImgUrl}"/>
</div>
<a class="nav-item ${agentsCls}" href="${agentsUrl}">
    <span class="header-label">Agent List</span>
    <div class="arrow"></div>
</a>
<a class="nav-item ${permanentlyDeleteCls}" href="${permanentlyDeleteUrl}">
    <span class="header-label">Permanently Deleted Items</span>
    <div class="arrow"></div>
</a>

<sec:authorize ifAllGranted="ROLE_ADMIN">
    <div class="box text-right userOptions">
        <span class="username">${pageContext['request'].userPrincipal.name}</span>
        <a href="${logoutUrl}" class="logOut">
            Sign Out
        </a>
    </div>
    <div class="dropdown userOptions text-right">
        <button id="userOptionsHead" data-target="#" href="#" class="settings" data-toggle="dropdown"
                aria-haspopup="true" role="button" aria-expanded="false">
            <span class="ldr-ui-layout display-inline-block valign-middle head-wrp">
                <label class="username">${pageContext['request'].userPrincipal.name}</label><span class="caret"></span>
            </span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right logout-dropdown-menu" role="menu"
            aria-labelledby="userOptionsHead">
            <li role="presentation">
                <a role="menuitem" tabindex="-1" href="${logoutUrl}" class="option logOut">
                    Log out
                </a>
            </li>
        </ul>
    </div>
</sec:authorize>