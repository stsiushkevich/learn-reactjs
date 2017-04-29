<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<c:url var="logoImgUrl" value="/resources/images/cloud-logo.png" />
<c:url var="companyDocumentsImgUrl" value="/resources/images/icon-new-documents.png" />
<c:url var="residentsImgUrl" value="/resources/images/icon-residents.png" />
<c:url var="historyImgUrl" value="/resources/images/icon-history.png" />
<c:url var="unassignedDocsImgUrl" value="/resources/images/unassigned-docs.png" />

<c:url var='documentsUrl' value='/documents'/>
<c:url var='residentsUrl' value='/residents'/>
<c:url var='logsUrl' value='/recentDocuments'/>
<c:url var='companyFilesUrl' value='/companyFiles'/>

<c:url var='logoutUrl' value='/j_spring_security_logout'/>

<%@ attribute name="documentsCls" required="false" rtexprvalue="true" %>
<%@ attribute name="residentsCls" required="false" rtexprvalue="true" %>
<%@ attribute name="logsCls" required="false" rtexprvalue="true" %>
<%@ attribute name="companyDocumentsCls" required="false" rtexprvalue="true" %>

<div class="logo-section">
  <img src="${logoImgUrl}"/>
</div>
<a class="nav-item ${residentsCls}" href="${residentsUrl}">
  <img src="${residentsImgUrl}">
  <span class="header-label">Residents</span>
  <div class="arrow"></div>
</a>
<a class="nav-item ${companyDocumentsCls}" href="${companyFilesUrl}">
  <img src="${companyDocumentsImgUrl}">
  <span class="header-label">Company Files</span>
  <div class="arrow"></div>
</a>
<a class="nav-item ${logsCls}" href="${logsUrl}">
  <img src="${historyImgUrl}">
  <span class="header-label">Recent Documents</span>
  <div class="arrow"></div>
</a>
<a class="nav-item ${documentsCls}" href="${documentsUrl}">
  <img src="${unassignedDocsImgUrl}">
  <span class="header-label">Unassigned Documents</span>
  <div class="arrow"></div>
</a>
<div class="nav-item-settings">
  <div class="box userOptions text-right">
    <span class="username">${pageContext['request'].userPrincipal.name}</span>
    <a href="${logoutUrl}" class="signOut">
      Sign Out
    </a>
  </div>
  <div class="dropdown userOptions text-right">
    <button id="userOptionsHead" data-target="#" href="#" class="settings" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
      <span class="ldr-ui-layout display-inline-block valign-middle head-wrp">
          <span class="username">Username</span><span class="caret"></span>
      </span>
    </button>
    <ul class="dropdown-menu dropdown-menu-right logout-dropdown-menu" role="menu" aria-labelledby="userOptionsHead">
      <li role="presentation">
        <a role="menuitem" tabindex="-1" href="${logoutUrl}" class="option logOut">
          Log out
        </a>
      </li>
    </ul>
  </div>
</div>