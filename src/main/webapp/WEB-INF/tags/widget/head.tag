<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>


<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="size" required="true" rtexprvalue="true" %>

<c:choose>
    <c:when test="${size == 1}">
        <h1 class="${cssClass}">
            <jsp:doBody/>
        </h1>
    </c:when>
    <c:when test="${size == 2}">
        <h2 class="${cssClass}">
            <jsp:doBody/>
        </h2>
    </c:when>
    <c:when test="${size == 3}">
        <h3 class="${cssClass}">
            <jsp:doBody/>
        </h3>
    </c:when>
    <c:when test="${size == 4}">
        <h4 class="${cssClass}">
            <jsp:doBody/>
        </h4>
    </c:when>
    <c:when test="${size == 5}">
        <h5 class="${cssClass}">
            <jsp:doBody/>
        </h5>
    </c:when>
    <c:when test="${size == 6}">
        <h6 class="${cssClass}">
            <jsp:doBody/>
        </h6>
    </c:when>
</c:choose>
