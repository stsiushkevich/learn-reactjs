<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="title" required="false" rtexprvalue="true"%>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<br/>

<div class="code-block-header">${empty title ? 'Код' : title}</div>
<jsp:doBody/>
<c:if test="${fn:length(codePenUrl) > 0}">
    <p><b><a href="${codePenUrl}">Посмотреть в CodePen</a></b></p>
</c:if>

<br/>