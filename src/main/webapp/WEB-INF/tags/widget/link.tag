<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="false" rtexprvalue="true" %>

<a
        id="${id}"
        class="ldr-ui-label ${cssClass}"
        href="${href}" >
    <jsp:doBody/>
</a>
