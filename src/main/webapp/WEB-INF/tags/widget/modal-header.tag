<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="closeBtn" required="false" rtexprvalue="true" type="java.lang.Boolean"%>

<div class="modal-header">
    <c:if test="${closeBtn}">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&#10005;</span></button>
    </c:if>
    <h4 class="modal-title">
        <jsp:doBody/>
    </h4>
</div>
