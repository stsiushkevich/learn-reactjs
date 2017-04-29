<%@ tag pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="formId" rtexprvalue="true" required="true" %>
<%@ attribute name="searchPlaceholder" rtexprvalue="true" required="false" %>
<%@ attribute name="withDateRange" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="withFullTextSearch" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="recentDocument" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="permanentlyDeleteDocuments" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="withShowDeleted" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="withDescription" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="withActiveState" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="withCategory" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="isStateActive" type="java.lang.Boolean" rtexprvalue="true" required="false" %>
<%@ attribute name="cssClass" type="java.lang.String" rtexprvalue="true" required="false" %>


<form class="form-inline ${cssClass}" id="${formId}" novalidate="novalidate">
    <c:if test="${withActiveState}">
        <div class="form-group">
            <wg:slider id="${formId}ActiveState" name="active" leftLabel="Inactive" rightLabel="Active"
                       checked="${isStateActive}"/>
        </div>
    </c:if>
    <c:if test="${recentDocument}">
        <div class="docTypeFilter">
            <input type="hidden" id="selectedFilterType">
            <div class="btn-group search-radio-btn-group" data-toggle="buttons">
                <label class="btn btn-default active">
                    <input type="radio" name="filter" value="ALL" checked="checked"/> All Documents
                </label>
                <label class="btn btn-default">
                    <input type="radio" name="filter" value="UPLOADED_BY_ME"/> Uploaded by Me
                </label>
                <label class="btn btn-default">
                    <input type="radio" name="filter" value="ASSIGNED_BY_ME"/> Assigned by Me
                </label>
                <label class="btn btn-default">
                    <input type="radio" name="filter" value="VIEWED_BY_ME"/> Viewed by Me
                </label>
                <label class="btn btn-default">
                    <input type="radio" name="filter" value="DELETED"/> Deleted
                </label>
            </div>
        </div>
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" name="residentName" class="form-control" placeholder="Resident Name">
        </div>
        <label class="company-checkbox">
            <input id="showCompanyFiles" type="checkbox" class="cloud-checkbox">
            <span>Show Company Files</span>
        </label>
    </c:if>
    <c:if test="${permanentlyDeleteDocuments}">
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" name="residentName" class="form-control" placeholder="Resident Name">
        </div>
    </c:if>
    <div class="form-group">
        <input type="text" name="quickSearch" class="form-control" placeholder="${searchPlaceholder}">
    </div>
    <c:if test="${withDescription}">
        <div class="form-group">
            <input type="text" name="description" class="form-control" placeholder="Description">
        </div>
    </c:if>
    <c:if test="${withCategory}">
        <jsp:useBean id="categoryListResponse" class="com.scnsoft.scansol.codebase.responses.FileCategoryListResponse" scope="request"/>
        <div class="form-group">
            <select name="categories" id="filterDocCategoryChooser" title="Select Category" class="selectpicker form-control col-md-3" data-width="200px" multiple data-actions-box="true">
                <option value="-1">Not Categorized</option>
                <c:forEach items="${categoryListResponse.fileCategories}" var="category">
                    <option data-content="<span class='color-indicator'  style='background-color: ${category.style.backgroundRgbColor}'></span><span>${category.name}</span>"
                            value="${category.id}">${category.id}</option>
                </c:forEach>
            </select>
        </div>
    </c:if>
    <c:if test="${withFullTextSearch}">
        <div class="form-group">
            <input type="text" name="keyword" class="form-control" placeholder="keyword">
        </div>
    </c:if>
    <c:if test="${withDateRange}">
        <div class="form-group">
            <select name="dateRange" id="dateRange" class="form-control">
                <option value="ANY">All Dates</option>
                <option value="LAST_7_DAYS">Last 7 days</option>
                <option value="LAST_90_DAYS">Last 30 days</option>
                <option value="LAST_90_DAYS">Last 90 days</option>
                <option value="CUSTOM">Custom</option>
            </select>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="dpFrom" placeholder="Date From" style="display: none;" disabled>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="dpTo" placeholder="Date To" style="display: none;" disabled>
        </div>
    </c:if>
    <c:if test="${permanentlyDeleteDocuments}">
        <label class="company-checkbox" style="float: right;">
            <input id="showCompanyFiles" type="checkbox" class="cloud-checkbox" checked>
            <span>Show Company Files</span>
        </label>
    </c:if>
    <c:if test="${withShowDeleted}">
        <label class="showDeleted-checkbox">
            <input id="showDeleted" type="checkbox" class="cloud-checkbox">
            <span>Show Deleted</span>
        </label>
    </c:if>
</form>