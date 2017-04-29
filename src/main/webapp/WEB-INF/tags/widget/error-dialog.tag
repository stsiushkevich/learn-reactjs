<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ attribute name="id" rtexprvalue="true" required="false" %>
<%@ attribute name="cssClass" rtexprvalue="true" required="false" %>
<%@ attribute name="headerContent" rtexprvalue="true" required="false" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>


<style>
    #${id} .modal-body {
        word-break: break-all;
    }
</style>

<<<<<<< HEAD:scansol-app/scansol-restful-api/src/main/webapp/WEB-INF/tags/widget/error-dialog.tag
<div class="modal fade ${cssClass}" id="${id}"  style="z-index: 10000;">
    <div class="modal-dialog">
        <div class="modal-content confirm-dialog-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span style="color: white;" aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">
                    Error
                </h4>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <div class="modalBtns btn-lt confirm-dialog-footer">
                    <button class="btn btn-default" type="button" data-toggle="modal" data-target="#${id}">
                        Ok
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
=======
<wg:modal id="${id}" cssClass="${cssClass}" style="${style}" isConfirm="true">
    <wg:modal-header>
        <wg:button domType="button" cssClass="close" dataDismiss="modal" ariaLabel="Close">
            <lt:layout cssClass="display-inline-block" style="color: white;" ariaHidden="true">&#10005;</lt:layout>
        </wg:button>
        <wg:head size="4">
            <c:choose>
                <c:when test="${headerContent == null}">Error</c:when>
                <c:otherwise>${headerContent}</c:otherwise>
            </c:choose>
        </wg:head>
    </wg:modal-header>

    <wg:modal-body/>

    <wg:modal-footer>
        <lt:layout cssClass="modalBtns btn-lt confirm-dialog-footer">
            <wg:button domType="button" cssClass="btn btn-default" dataToggle="modal" dataTarget="#${id}">Ok</wg:button>
        </lt:layout>
    </wg:modal-footer>
</wg:modal>
>>>>>>> origin/sync_refactor:scansol-app/scansol-restful-api/src/main/webapp/WEB-INF/tags/widget/error-overflow.tag
