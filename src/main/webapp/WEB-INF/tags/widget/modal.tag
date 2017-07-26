<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="isConfirm" required="false" rtexprvalue="true" type="java.lang.Boolean" %>

<div id="${id}" style="${style}" tabindex="-1" class="modal fade" role="dialog">
    <div class="modal-dialog ${cssClass}" role="document">
        <div class="modal-content ${isConfirm eq true ? 'confirm-dialog-content' : ''}">
            <jsp:doBody/>
        </div>
    </div>
</div>
