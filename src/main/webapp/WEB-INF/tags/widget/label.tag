<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="_for" required="false" rtexprvalue="true" %>
<%@ attribute name="path" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<label
        id="${id}"
        for="${_for}"
        class="ldr-ui-label ${cssClass}">
    <jsp:doBody/>
</label>
