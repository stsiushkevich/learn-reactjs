<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="role" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>
<%@ attribute name="ariaHidden" required="false" rtexprvalue="true" %>

<div id="${id}" name="${name}" role="${role}" style="${style}" class="${cssClass}" aria-hidden="${ariaHidden}">
    <jsp:doBody/>
</div>
