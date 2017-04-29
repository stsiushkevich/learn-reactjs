<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="isConfirm" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<div id="${id}" style="${style}" class="modal fade ${cssClass}">
    <iframe class="ie-fix" src="about:blank"></iframe>

    <div class="modal-dialog">
        <div class="modal-content ${isConfirm eq true ? 'confirm-dialog-content' : ''}">
            <jsp:doBody/>
        </div>
    </div>
</div>
