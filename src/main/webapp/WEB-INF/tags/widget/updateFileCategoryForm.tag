<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="wgForm" uri="http://www.springframework.org/tags/form" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="action" required="false" rtexprvalue="true" %>
<%@ attribute name="enctype" required="false" rtexprvalue="true" %>

<%@ attribute name="mode" required="true" rtexprvalue="true" type="java.lang.String" %>

<wg:form id="${id}" name="${name}" cssClass="${cssClass} form-inline" method="POST" action="${action}"
         enctype="${enctype}">
    <jsp:useBean id="categoryStyleList" class="com.scnsoft.scansol.codebase.responses.CategoryStyleListResponse"
                 scope="request"/>
    <div class="form-group">
        <input type="text" name="categoryName" class="form-control categoryName" placeholder="Category Name"/>
    </div>

    <div class="form-group">
        <wg:category-style-picker id="${mode}FileCategoryStylePicker" cssClass="fileCategoryStylePicker" categoryOf="${mode}File">
            <c:forEach items="${categoryStyleList.categoryStyles}" var="style">
                <wg:style-picker-item styleId="${style.id}"
                                      bgColorName="${style.backgroundColorName}"
                                      bgRgbColor="${style.backgroundRgbColor}"
                                      fontRgbColor="${style.fontRgbColor}"/>
            </c:forEach>
        </wg:category-style-picker>
    </div>

    <div class="form-group pull-right">
        <c:choose>
            <c:when test="${mode == 'edit'}">
                <wg:button id="cancelSaveFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-default cancelCreateFileCategoryBtn">CANCEL</wg:button>
                <wg:button id="saveFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-primary saveFileCategoryBtn">SAVE</wg:button>
            </c:when>
            <c:when test="${mode == 'create'}">
                <wg:button id="cancelCreateFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-default cancelCreateFileCategoryBtn">CANCEL</wg:button>
                <wg:button id="createFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-primary createFileCategoryBtn">CREATE</wg:button>
            </c:when>
            <c:otherwise>
                <wg:button id="cancelCreateFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-default cancelCreateFileCategoryBtn">CANCEL</wg:button>
                <wg:button id="createFileCategoryBtn" domType="link"
                           cssClass="btn btn-sm  btn-primary createFileCategoryBtn">CREATE</wg:button>
            </c:otherwise>
        </c:choose>
    </div>
</wg:form>
