<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="forHead" required="true" rtexprvalue="true" %>

<ul class="dropdown-menu ${cssClass}" role="menu" aria-labelledby="${forHead}">
    <jsp:doBody/>
</ul>

