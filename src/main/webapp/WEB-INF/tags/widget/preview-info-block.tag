<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="id" rtexprvalue="true" required="true" %>
<%@ attribute name="cssClass" rtexprvalue="true" required="false" %>
<%@ attribute name="key" rtexprvalue="true" required="true" %>
<%@ attribute name="value" rtexprvalue="true" required="false" %>


<div class="${cssClass}">
    <strong>${key}:</strong>
    <span id="${id}">${value}</span>
</div>