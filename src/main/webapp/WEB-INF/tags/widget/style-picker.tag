<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<%@ attribute name="bgRgbColors" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="bgColorNames" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="fontColors" required="false" rtexprvalue="true" type="java.lang.String" %>

<select id="${id}" name="stylepicker" class="stylepicker ${cssClass}">
    <jsp:doBody/>
    <c:if test="${not empty bgRgbColors}">
        <c:set var="bgRgbColorsList" value="${fn:split(bgRgbColors, ',')}"/>
        <c:set var="bgColorNameList" value="${fn:split(bgColorNames, ',')}"/>
        <c:set var="fontColorsList" value="${fn:split(fontColors, ',')}"/>

        <c:forEach var="bgRgbColor" items="${bgRgbColorsList}" varStatus="index">
            <wg:style-picker-item bgRgbColor="${bgRgbColor}" bgColorName="${bgColorNameList[index]}" fontRgbColor="${fontColorsList[index]}"/>
        </c:forEach>
    </c:if>
</select>