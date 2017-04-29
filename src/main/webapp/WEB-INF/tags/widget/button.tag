<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="domType" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="type" required="false" rtexprvalue="true"%>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="value" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<%@ attribute name="badge" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="badgeValue" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="emptyBadge" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="dataToggle" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataTarget" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataDismiss" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="ariaLabel" required="false" rtexprvalue="true" type="java.lang.String" %>


<c:choose>
    <c:when test="${fn:toLowerCase(domType) eq 'button'}">
        <button
                id="${id}"
                name="${name}"
                value="${value}"
                class="ldr-ui-btn btn ${cssClass}"
                data-toggle="${dataToggle}"
                data-target="${dataTarget}"
                data-dismiss="${dataDismiss}"
                aria-label="${ariaLabel}"
                type="${type}">
            <jsp:doBody/>
            <c:if test="${badge}">
                        <span class="badge <c:if test="${!emptyBadge && (badgeValue == null || badgeValue == 0)}">hidden</c:if>">
                        <span class="bracket">(</span>
                        <span class="badgeValue">${badgeValue}</span>
                        <span class="bracket">)</span>
                    </span>
            </c:if>
        </button>
    </c:when>
    <c:when test="${fn:toLowerCase(domType) eq 'link'}">
        <a
                id="${id}"
                name="${name}"
                value="${value}"
                class="ldr-ui-btn btn ${cssClass}"
                href="#" role="button"
                data-toggle="${dataToggle}"
                data-target="${dataTarget}"
                data-dismiss="${dataDismiss}"
                aria-label="${ariaLabel}"
                >
            <jsp:doBody/>
        </a>
    </c:when>
    <c:when test="${fn:toLowerCase(domType) eq 'input'}">
        <input
                id="${id}"
                name="${name}"
                value="${value}"
                class="ldr-ui-btn btn ${cssClass}"
                data-toggle="${dataToggle}"
                data-target="${dataTarget}"
                data-dismiss="${dataDismiss}"
                aria-label="${ariaLabel}"
                type="${type}"/>
    </c:when>
    <c:when test="${fn:toLowerCase(domType) eq 'file'}">
        <input
                id="${id}"
                name="${name}"
                value="${value}"
                class="ldr-ui-btn btn ${cssClass}"
                data-toggle="${dataToggle}"
                data-target="${dataTarget}"
                aria-label="${ariaLabel}"
                type="${type}"/>
    </c:when>
    <c:otherwise>
        <button
                id="${id}"
                name="${name}"
                value="${value}"
                class="ldr-ui-btn btn ${cssClass}"
                data-toggle="${dataToggle}"
                data-target="${dataTarget}"
                data-dismiss="${dataDismiss}"
                aria-label="${ariaLabel}"
                type="${type}">
            <jsp:doBody/>
        </button>
    </c:otherwise>
</c:choose>
