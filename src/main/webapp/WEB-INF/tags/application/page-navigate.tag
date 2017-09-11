<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<%@ attribute name="prevPageUrl" required="false" rtexprvalue="true" %>
<%@ attribute name="pageStartAncor" required="false" rtexprvalue="true" %>
<%@ attribute name="nextPageUrl" required="false" rtexprvalue="true" %>

<lt:layout id="${id}" name="${name}" style="${style}" cssClass="page-navigate ${cssClass}">
	<c:if test="${prevPageUrl != null}">
		<a class="page-navigate__link" href="${prevPageUrl}">
			<img class="page-navigate__link-icon" src="<c:url value="/resources/imges/left-arrow.png"/>"/>
		</a>
	</c:if>
	<c:if test="${pageStartAncor != null}">
		<a class="page-navigate__link" href="#${pageStartAncor}">
			<img class="page-navigate__link-icon" src="<c:url value="/resources/imges/top-arrow.png"/>"/>
		</a>
	</c:if>
	<c:if test="${nextPageUrl != null}">
		<a class="page-navigate__link" href="${nextPageUrl}">
			<img class="page-navigate__link-icon" src="<c:url value="/resources/imges/right-arrow.png"/>"/>
		</a>
	</c:if>
</lt:layout>