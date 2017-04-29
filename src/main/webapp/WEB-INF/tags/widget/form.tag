<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="action" required="false" rtexprvalue="true" %>
<%@ attribute name="method" required="false" rtexprvalue="true" %>
<%@ attribute name="autocomplete" required="false" rtexprvalue="true" %>
<%@ attribute name="enctype" required="false" rtexprvalue="true" type="java.lang.String" %>

<form action="${action}" method="${method}" id="${id}" class="${cssClass}" name="${name}" autocomplete="${autocomplete}" enctype="${enctype}">
    <jsp:doBody/>
</form>