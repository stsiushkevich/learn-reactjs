<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ attribute name="id" rtexprvalue="true" required="false" %>
<%@ attribute name="cssClass" rtexprvalue="true" required="false" %>
<%@ attribute name="title" rtexprvalue="true" required="false" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>

<wg:modal id="${id}" cssClass="${cssClass}" style="${style}" isConfirm="true">
  <wg:modal-header>
    <wg:button domType="button" cssClass="close" dataDismiss="modal" ariaLabel="Close">
      <lt:layout cssClass="display-inline-block" style="color: white;" ariaHidden="true">&#10005;</lt:layout>
    </wg:button>
    <wg:head size="4" cssClass="modal-title">
      <c:choose>
        <c:when test="${not empty title}">
          <c:out value="${title}" />
        </c:when>
        <c:otherwise>
          Confirm
        </c:otherwise>
      </c:choose>
    </wg:head>
  </wg:modal-header>

  <wg:modal-body>
    <jsp:doBody />
  </wg:modal-body>

  <wg:modal-footer>
    <lt:layout cssClass="modalBtns btn-lt confirm-dialog-footer">
      <wg:button domType="button" name="okBtn" cssClass="btn btn-primary">Ok</wg:button>
      <wg:button domType="button" name="cancelBtn" cssClass="btn btn-default" dataToggle="modal" dataTarget="#${id}">Cancel</wg:button>
    </lt:layout>
  </wg:modal-footer>
</wg:modal>