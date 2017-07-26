<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<%@ attribute name="title" required="false" rtexprvalue="true" %>
<%@ attribute name="type" required="false" rtexprvalue="true" %>

<lt:layout id="${id}" name="${name}">
    <br/>
    <wg:p>
        <wg:p><b>${title}</b></wg:p>
    </wg:p>
    <wg:p><jsp:doBody/></wg:p>
</lt:layout>