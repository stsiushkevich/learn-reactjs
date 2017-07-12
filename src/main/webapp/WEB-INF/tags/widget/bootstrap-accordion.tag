<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>

<div id="${id}" class="panel-group ${cssClass}" role="tablist" aria-multiselectable="true">
    <jsp:doBody/>
</div>
