<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="true" rtexprvalue="true" %>

<li>
    <a href="${href}" data-toggle="tab">
        <jsp:doBody/>
    </a>
</li>
