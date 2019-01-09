<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<svg id="${id}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 432" class="${cssClass}" style="${style}">
    <path d=" M 0 216.508 L 125.001 0 L 375.007 0 L 500 216.508 L 375.007 433.015 L 125.001 433.015 L 0 216.508 Z "/>
</svg>