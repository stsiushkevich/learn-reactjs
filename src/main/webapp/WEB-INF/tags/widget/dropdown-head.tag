<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="true" rtexprvalue="true"%>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>

<button id="${id}" data-target="#" href="${href}" class="${cssClass}" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
    <jsp:doBody/>
    <span class="caret"></span>
</button>

