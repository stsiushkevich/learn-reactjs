<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/training-project/introduction"/>
<c:url var="appFrameUrl" value="/training-project/app-frame"/>
<c:url var="pageMockupsUrl" value="/training-project/page-mockups"/>
<c:url var="homePageUrl" value="/training-project/home-page"/>
<c:url var="appointmentsUrl" value="/training-project/appointments"/>
<c:url var="routingUrl" value="/training-project/routing"/>
<c:url var="asyncDataLoadingUrl" value="/training-project/async-data-loading"/>
<c:url var="appStateUrl" value="/training-project/app-state"/>
<c:url var="summaryUrl" value="/training-project/summary"/>
<c:url var="practiceUrl" value="/training-project/practice"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_INTRODUCTION' ? 'active' : null}">
                <a href="${introductionUrl}">5.1 Введение</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_APP_FRAME' ? 'active' : null}">
                <a href="${appFrameUrl}">5.2 Каркасс приложения</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_PAGE_MOCKUPS' ? 'active' : null}">
                <a href="${pageMockupsUrl}">5.3 Макеты страниц</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_HOME_PAGE' ? 'active' : null}">
                <a href="${homePageUrl}">5.4 Домашняя страница</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_APPOINTMENTS' ? 'active' : null}">
                <a href="${appointmentsUrl}">5.5 Список приёмов</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_ROUTING' ? 'active' : null}">
                <a href="${routingUrl}">5.6 Маршрутизация</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_ASYNC_DATA_LOADING' ? 'active' : null}">
                <a href="${asyncDataLoadingUrl}">5.7 Асинхронная загрузка данных</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_APP_STATE' ? 'active' : null}">
                <a href="${appStateUrl}">5.8 Состояние приложения</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_SUMMARY' ? 'active' : null}">
                <a href="${summaryUrl}">5.9 Резюме-шпаргалка</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'TRN_PRJ_PRACTICE' ? 'active' : null}">
                <a href="${practiceUrl}">5.10 Практические задания</a>
            </li>
        </ul>
    </nav>
</lt:layout>
