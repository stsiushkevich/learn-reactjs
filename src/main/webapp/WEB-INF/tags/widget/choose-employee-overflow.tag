<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="wgForm" uri="http://www.springframework.org/tags/form" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>


<wg:modal id="chooseEmployeeOverflow" cssClass="${cssClass}" style="${style}">
    <lt:layout cssClass="modal-header">
        <wg:button domType="link" cssClass="close" dataDismiss="modal" ariaLabel="Close">
            <lt:layout cssClass="display-inline-block" style="color: white;" ariaHidden="true">&#10005;</lt:layout>
        </wg:button>
        <wg:head size="4" cssClass="modal-title">
            Choose employees
        </wg:head>
    </lt:layout>

    <lt:layout cssClass="modal-body">
        <lt:layout cssClass="form-group">
            <lt:layout id="chooseEmployeeErrorMessageBox" cssClass="col-md-12 alert alert-warning serverError" style="display: none;">
                <lt:layout cssClass="contentinfo" role="contentinfo"/>
                <wg:button domType="button" cssClass="close">
                    <lt:layout>&times;</lt:layout>
                </wg:button>
            </lt:layout>
        </lt:layout>

        <lt:layout cssClass="form-group">
            <lt:layout cssClass="searchTblBody">

                <lt:layout cssClass="tool-group">

                    <lt:layout cssClass="search-group">
                        <wg:search-form formId="employeeSearchForm" withFullTextSearch="false" searchPlaceholder="Name"/>
                    </lt:layout>
                    <lt:layout cssClass="clear"/>
                </lt:layout>
                <wg:grid id="employeeSearchTable"
                         colIds="id,lastName,id"
                         colNames="[empty],Name,Permission Level"
                         colFormats="checkbox,profile,combobox"
                         defaultSort="1,asc"
                         dataUrl="employees/search"
                         resultNodeName="employees"
                         searchFormId="employeeSearchForm"
                />
            </lt:layout>
        </lt:layout>
    </lt:layout>

    <lt:layout cssClass="modal-footer">
        <lt:layout cssClass="modalBtns btn-lt">
            <wg:button name="chooseEmployeeCancelBtn"
                       id="chooseEmployeeCancelBtn"
                       domType="link"
                       dataToggle="modal"
                       dataTarget="#chooseEmployeeOverflow"
                       cssClass="btn-default">
                CANCEL
            </wg:button>
            <wg:button name="chooseEmployeeOkBtn"
                       id="chooseEmployeeOkBtn"
                       domType="link"
                       dataToggle="modal"
                       dataTarget="#chooseEmployeeOverflow"
                       cssClass="btn-primary">
                OK
            </wg:button>
        </lt:layout>
    </lt:layout>
</wg:modal>