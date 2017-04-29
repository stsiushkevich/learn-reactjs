<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="bgRgbColor" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="bgColorName" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="fontRgbColor" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="styleId" required="false" rtexprvalue="true" type="java.lang.Long" %>

<option value="${bgRgbColor}" data-style-id="${styleId}" data-font-rgb-color="${fontRgbColor}" data-bg-color-name="${bgColorName}">${bgColorName}</option>