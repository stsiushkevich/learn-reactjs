<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="gettingStartedUrl" value="getting-started"/>
<c:url var="addReactToWebSiteUrl" value="add-react-to-a-web-site"/>
<c:url var="createNewReactAppUrl" value="create-a-new-react-app"/>
<c:url var="cdnLinksUrl" value="cdn-links"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">1. Введение</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${gettingStartedUrl}" class="topic-list__topic-nav-link">
                <h4>1.1 Начало работы</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${addReactToWebSiteUrl}" class="topic-list__topic-nav-link">
                <h4>1.2 Добавить React на веб-сайт</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${createNewReactAppUrl}" class="topic-list__topic-nav-link">
                <h4>1.3 Создать новое React приложение</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${cdnLinksUrl}" class="topic-list__topic-nav-link">
                <h4>1.4 Ссылки CDN</h4>
            </a>
        </li>
    </ol>
</lt:layout>

