<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="colIds" required="true" rtexprvalue="true" %>
<%@ attribute name="colNames" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataUrl" required="true" rtexprvalue="true" %>
<%@ attribute name="colFormats" required="true" rtexprvalue="true" %>
<%@ attribute name="choseRowsViewer" required="false" rtexprvalue="true" %>
<%@ attribute name="displayRows" required="false" rtexprvalue="true" %>
<%@ attribute name="deferRender" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="resultNodeName" required="true" rtexprvalue="true" %>
<%@ attribute name="fnCallback" required="false" rtexprvalue="true" %>
<%@ attribute name="searchFormId" required="true" rtexprvalue="true" %>
<%@ attribute name="defaultSort" required="false" rtexprvalue="true" %>
<%@ attribute name="columnsClass" required="false" rtexprvalue="true" %>
<%@ attribute name="hiddenColumns" required="false" rtexprvalue="true" type="java.lang.String"%>
<%@ attribute name="colWidths" required="false" rtexprvalue="true" type="java.lang.String"%>
<%@ attribute name="emptyHeadNameKey" required="false" rtexprvalue="true" type="java.lang.String"%>
<%@ attribute name="colCssClasses" required="false" rtexprvalue="true" type="java.lang.String"%>

<table id="${id}" name="${name}" class="display ${cssClass}" cellspacing="0" width="100%"
        data-col-ids="${colIds}"
        data-col-names="${colNames}"
        data-source-url="${dataUrl}"
        data-col-formats="${colFormats}"
        data-defer-render="${colFormats}"
        data-choose-rows-viewer="${choseRowsViewer}"
        data-result-node-name="${resultNodeName}"
        data-search-form-id="${searchFormId}"
        data-display-rows="${displayRows}"
        data-default-sort="${defaultSort}"
        data-columns-class="${columnsClass}"
        data-col-widths="${colWidths}"
        data-col-css-classes="${colCssClasses}"
        data-hidden-columns="${hiddenColumns}">
    <thead>
    <tr>
        <c:forEach var="colName" items="${fn:split(colNames, ',')}">
            <c:set var="key" value="${fn:trim(emptyHeadNameKey)}"/>
            <th>${fn:containsIgnoreCase(colName, (key eq not null && fn:length(key) > 0 ? key : '[EMPTY]')) ? '' : colName}</th>
        </c:forEach>
    </tr>
    </thead>
</table>
