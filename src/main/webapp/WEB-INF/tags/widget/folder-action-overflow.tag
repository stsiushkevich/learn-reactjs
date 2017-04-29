<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="wgForm" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="style" required="false" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="action" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="isSecurityEnabled" required="true" rtexprvalue="true" type="java.lang.Boolean" %>


<wg:choose-employee-overflow style="z-index: 1050"/>

<wg:modal id="folderActionOverflow" cssClass="${cssClass}" style="${style}">
    <lt:layout cssClass="modal-header">
        <wg:button domType="link" cssClass="close" dataDismiss="modal" ariaLabel="Close">
            <lt:layout cssClass="display-inline-block" style="color: white;"
                       ariaHidden="true">&#10005;</lt:layout>
        </wg:button>
        <wg:head size="4" cssClass="modal-title">
            ${fn:containsIgnoreCase(fn:toLowerCase(action), 'edit') ? "Edit" : "Add"} Folder
        </wg:head>
    </lt:layout>

    <lt:layout cssClass="modal-body">
        <lt:layout id="folderActionErrorMessageBox" cssClass="col-md-12 alert alert-warning serverError"
                   style="display: none;">
            <lt:layout cssClass="contentinfo" role="contentinfo"/>
            <wg:button domType="button" cssClass="close">
                <lt:layout>&times;</lt:layout>
            </wg:button>
        </lt:layout>
        <lt:layout cssClass="clearfix"/>
        <wg:p>
            <wg:form id="folderActionForm" method="post" cssClass="searchForm form-horizontal folderActionForm" action="companyFolders/update">
                <lt:layout cssClass="form-group"/>
                <lt:layout cssClass="form-group">
                    <wg:label _for="name" cssClass="col-md-2 control-label label-min-width">Name</wg:label>
                    <lt:layout cssClass="col-md-10">
                        <wg:text-field cssClass="form-control" id="name" name="name" placeholder="Name"/>
                    </lt:layout>
                </lt:layout>

                <lt:layout cssClass="form-group">
                    <wg:slider id="folderSecurityState" name="security" rightLabel="Enable security for folder"
                               checked="${isSecurityEnabled}" cssClass="col-md-9 col-xs-9"/>
                </lt:layout>
            </wg:form>
        </wg:p>

        <lt:layout id="folderEmployeeManagement" style="display: none">
            <wg:p cssClass="tool-group">
                <wg:button domType="link" id="addEmployee" cssClass="btn btn-primary addEmployeeBtn pull-right"
                           dataToggle="modal" dataTarget="#chooseEmployeeOverflow">
                    Add employee
                </wg:button>
            </wg:p>

            <lt:layout cssClass="searchTblBody">
                <lt:layout cssClass="tool-group hidden">

                    <lt:layout cssClass="search-group">
                        <wg:search-form formId="sharedFolderEmployeeSearchForm" withFullTextSearch="false" searchPlaceholder="Name"/>
                    </lt:layout>
                    <lt:layout cssClass="clear"/>
                </lt:layout>

                <wg:grid id="sharedFolderEmployeeSearchTable"
                         colIds="firstName,login,id,actions"
                         colNames="Name,Login,Permission Level,Action"
                         colFormats="profile,string,combobox,actions"
                         dataUrl="#"
                         resultNodeName="employees"
                         colWidths="actions:50px"
                         colCssClasses="actions: dt-body-center"
                         searchFormId="sharedFolderEmployeeSearchForm"
                />
            </lt:layout>
        </lt:layout>
    </lt:layout>

    <lt:layout cssClass="modal-footer">
        <lt:layout cssClass="modalBtns btn-lt">
            <wg:button name="cancelBtn"
                       id="cancelSaveFolderBtn"
                       domType="link"
                       dataToggle="modal"
                       dataTarget="#folderActionOverflow"
                       cssClass="btn-default">
                CANCEL
            </wg:button>
            <wg:button name="saveFolderBtn"
                       id="saveFolderBtn"
                       domType="button"
                       type="submit"
                       cssClass="btn-primary">
                SAVE
            </wg:button>
        </lt:layout>
    </lt:layout>
</wg:modal>