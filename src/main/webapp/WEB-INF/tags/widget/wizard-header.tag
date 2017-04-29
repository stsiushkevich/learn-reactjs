<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>

<ul class="${cssClass}" id="${id}" name="${name}">
    <jsp:doBody/>
</ul>
