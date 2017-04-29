<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="href" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="ajax" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="target" required="false" rtexprvalue="true" %>
<%@ attribute name="active" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="badge" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="badgeValue" required="false" rtexprvalue="true" type="java.lang.String" %>

<li id="${id}" role="presentation" class="<c:if test='${active}'>active</c:if> ${cssClass}">
    <a href="${href}"
            <c:choose>
                <c:when test="${ajax}">
                    data-toggle="ajaxtab"
                    data-target="${target}"
                </c:when>
                <c:otherwise>data-toggle="tab"</c:otherwise>
            </c:choose>
       aria-controls="${fn:replace(href, "#", "")}"
       role="tab">
        <jsp:doBody/>
        <c:if test="${badge}">
                <span class="badge">
                    <span class="bracket">(</span>
                    <span class="badgeValue">${badgeValue}</span>
                    <span class="bracket">)</span>
                </span>
        </c:if>
    </a>
</li>
