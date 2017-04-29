<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="clpHeaderText" required="true" rtexprvalue="true" %>
<%@ attribute name="expHeaderText" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="theme" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="ajax" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="target" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="disabled" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="badge" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="badgeValue" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="emptyBadge" required="false" rtexprvalue="true" type="java.lang.Boolean" %>


<div class="${cssClass}">
    <div class="clp-pnl-header collapsed <c:if test="${disabled}">disabled</c:if>"
         data-toggle="collapse"
         aria-expanded="false"
         href="#${id}"
            <c:if test="${ajax}">
                data-target="${target}"
            </c:if>
         aria-controls="collapseExample">
        <div class="clp-pnl-header-lt">
            <c:choose>
                <c:when test="${theme eq 'gray'}">
                    <div class="clp-pnl-header-lt gray">
                        <label class="collapsed-pnl-head text-center pnl-clp-head-lbl">${clpHeaderText}</label>
                        <label class="collapsed-pnl-head text-center pnl-exp-head-lbl">${expHeaderText}</label>
                        <c:if test="${badge}">
                            <span class="badge <c:if test="${!emptyBadge && (badgeValue == null || badgeValue == 0)}">hidden</c:if>">
                                <span class="bracket">(</span>
                                <span class="badgeValue">${badgeValue}</span>
                                <span class="bracket">)</span>
                            </span>
                        </c:if>
                        <a class="ldr-ui-toggle-btn"></a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="clp-pnl-header-lt text-center green">
                        <a class="ldr-ui-toggle-btn"></a>
                        <label class="collapsed-pnl-head text-center pnl-clp-head-lbl">${clpHeaderText}</label>
                        <label class="collapsed-pnl-head text-center pnl-exp-head-lbl">${expHeaderText}</label>
                        <a class="ldr-ui-toggle-btn"></a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="collapse" id="${id}" name="${name}" href="${href}">
        <div class="clp-pnl-content">
            <jsp:doBody/>
        </div>
    </div>
</div>
