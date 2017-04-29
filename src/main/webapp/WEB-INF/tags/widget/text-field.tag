<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>


<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="placeholder" required="false" rtexprvalue="true" %>

<input type="text" class="${cssClass}" id="${id}" name="${name}" placeholder="${placeholder}"/>
