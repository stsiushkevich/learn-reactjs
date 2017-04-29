<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="true" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="showBackArrow" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<li  id="${id}" name="${name}" class="${cssClass}">
    <a href="${href}" class="crumb">
        <jsp:doBody/>
    </a>
</li>
