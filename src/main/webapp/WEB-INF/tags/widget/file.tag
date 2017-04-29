<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>


<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="path" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="buttonText" required="false" rtexprvalue="true"%>
<%@ attribute name="icon" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<input
        type="file"
        class="${cssClass}"
        id="${id}"
        name="${name}"
        data-buttonText="${buttonText}"
        <c:choose>
            <c:when test="${icon}">
                data-icon="true"
            </c:when>
            <c:otherwise>
                data-icon="false"
            </c:otherwise>
        </c:choose>
        />
