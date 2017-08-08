<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ attribute name="type" required="true" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="names" required="false" rtexprvalue="true" %>
<%@ attribute name="root" required="true" rtexprvalue="true" %>

<c:choose>
    <c:when test="${fn:toLowerCase(type) eq 'script'}">
        <c:if test="${name != null}">
            <script type="text/javascript" src="<c:url value="${root}/${fn:trim(name)}"/>"></script>
        </c:if>
        <c:if test="${names != null}">
            <c:forEach var="sName" items="${fn:split(names, ',')}">
                <script type="text/javascript" src="<c:url value="${root}/${fn:trim(sName)}"/>"></script>
            </c:forEach>
        </c:if>
    </c:when>
    <c:when test="${fn:toLowerCase(type) eq 'link'}">
        <c:if test="${name != null}">
            <link rel="stylesheet" media="screen" href="<c:url value="${root}/${fn:trim(name)}"/>"/>
        </c:if>
        <c:if test="${names != null}">
            <c:forEach var="sName" items="${fn:split(names, ',')}">
                <link rel="stylesheet" media="screen" href="<c:url value="${root}/${fn:trim(sName)}"/>"/>
            </c:forEach>
        </c:if>
    </c:when>
</c:choose>

