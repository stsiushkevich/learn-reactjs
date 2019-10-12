<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/context" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="Url" value=""/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page async-data-loading-page">
    <h1>5.7 Асинхронная загрузка данных</h1>

    <br/>

    <p class="introduction"></p>

    <br/>

</lt:layout>

<c:url var="prevPageUrl" value="/training-project/routing"/>
<c:url var="nextPageUrl" value="/training-project/app-state"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>