<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<p>
<div class="code-block-header">Код</div>
<jsp:doBody/>
</p>
<c:if test="${codePenUrl}">
    <wg:link href="${codePenUrl}">Посмотреть в CodePen</wg:link>
</c:if>