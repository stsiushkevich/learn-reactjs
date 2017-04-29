<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>

<div class="tab-pane ${cssClass}" id="${id}">
    <jsp:doBody/>
</div>
