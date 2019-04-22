<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/core/hooks/introduction"/>
<c:url var="glanceUrl" value="/core/hooks/glance"/>
<c:url var="stateHookUrl" value="/core/hooks/state-hook"/>
<c:url var="effectHookUrl" value="/core/hooks/effect-hook"/>
<c:url var="rulesUrl" value="/core/hooks/rules"/>
<c:url var="customHookUrl" value="/core/hooks/custom-hook"/>
<c:url var="apiUrl" value="/core/hooks/api"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">3.20 Хуки</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${introductionUrl}"><h4>3.20.1 Представляем хуки</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${glanceUrl}"><h4>3.20.2 Обзор хуков</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${stateHookUrl}"><h4>3.20.3 Хук состояния</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${effectHookUrl}"><h4>3.20.4 Хук эффекта</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${rulesUrl}"><h4>3.20.5 Правила использования хуков</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${customHookUrl}"><h4>3.20.6 Пользовательский хук</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${apiUrl}"><h4>3.20.7 API</h4></a>
        </li>
    </ol>
</lt:layout>