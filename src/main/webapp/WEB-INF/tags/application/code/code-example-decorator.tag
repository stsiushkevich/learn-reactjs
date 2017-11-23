<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<div class="code-block-header">Код</div>
<jsp:doBody/>
<c:if test="${fn:length(codePenUrl) > 0}">
    <p><wg:link href="${codePenUrl}">Посмотреть в CodePen</wg:link></p>
</c:if>