<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="false" rtexprvalue="true" %>

<li role="presentation">
    <a role="menuitem" tabindex="-1" href="${href}" class="${cssClass}">
        <jsp:doBody/>
    </a>
</li>
