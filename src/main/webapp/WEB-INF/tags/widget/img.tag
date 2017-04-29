<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>


<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="value" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="src" required="true" rtexprvalue="true" %>
<%@ attribute name="align" required="false" rtexprvalue="true" %>
<%@ attribute name="height" required="false" rtexprvalue="true" %>
<%@ attribute name="width" required="false" rtexprvalue="true" %>
<%@ attribute name="zoom" required="false" rtexprvalue="true" %>

<img src="${src}"
     class="${cssClass}"
     id="${id}"
     name="${name}"
     height="${height}"
     width="${width}"
     align="${align}"
     style="zoom: ${zoom}"/>
