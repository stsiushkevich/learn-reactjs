<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<div class="tab-content ${cssClass}"  id="${id}" name="${name}">
    <jsp:doBody/>
</div>
