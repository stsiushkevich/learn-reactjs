<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="height" required="false" rtexprvalue="true" %>
<%@ attribute name="width" required="false" rtexprvalue="true" %>
<%@ attribute name="viewBox" required="false" rtexprvalue="true" %>

<svg  xmlns="http://www.w3.org/2000/svg" id="${id}" style="${style}" class="${cssClass}" height="${height}" viewBox="${viewBox}" width="${width}">
    <jsp:doBody/>
</svg>