<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionInReactJSUrl" value="introduction-in-reactjs"/>
<c:url var="installationUrl" value="installation"/>
<c:url var="devToolsUrl" value="devtools"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <lt:layout cssClass="h3" style="font-weight: bold">1. Введение</lt:layout>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${introductionInReactJSUrl}" class="topic-list__topic-nav-link">1.1 Введение в React JS</a>
        </li>
        <li class="topic-list__topic">
            <a href="${installationUrl}" class="topic-list__topic-nav-link">1.2 Установка</a>
        </li>
        <li class="topic-list__topic">
            <a href="${devToolsUrl}" class="topic-list__topic-nav-link">1.3 Инструменты разработчика</a>
        </li>
    </ol>
</lt:layout>

