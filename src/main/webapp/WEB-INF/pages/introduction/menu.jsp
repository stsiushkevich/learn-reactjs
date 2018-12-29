<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="gettingStartedUrl" value="getting-started"/>
<c:url var="addReactToWebSiteUrl" value="add-react-to-a-web-site"/>
<c:url var="createNewReactAppUrl" value="create-a-new-react-app"/>
<c:url var="cdnLinksUrl" value="cdn-links"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'INTRODUCTION_GETTING_STARTED' ? 'active' : null}">
                <a href="${gettingStartedUrl}">1.1 Начало работы</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'INTRODUCTION_ADD_REACT_TO_WEB_SITE' ? 'active' : null}">
                <a href="${addReactToWebSiteUrl}">1.2 Добавить React на веб-сайт</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'INTRODUCTION_CREATE_NEW_REACT_APP' ? 'active' : null}">
                <a href="${createNewReactAppUrl}">1.3 Создать новое React приложение</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'INTRODUCTION_CDN_LINKS' ? 'active' : null}">
                <a href="${cdnLinksUrl}">1.4 Ссылки CDN</a>
            </li>
        </ul>
    </nav>
</lt:layout>
