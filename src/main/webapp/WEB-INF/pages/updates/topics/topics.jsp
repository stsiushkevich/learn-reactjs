<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="derivedStateNecessityUrl" value="derived-state-necessity"/>
<c:url var="react_v16_4_0PointerEventsUrl" value="react-v16.4.0-pointer-events"/>
<c:url var="react_v16_3_0Url" value="react-v16.3.0"/>
<c:url var="react_v16_2_0_fragmentsImprovedSupportUrl" value="react-v16.2.0-fragments-improved-support"/>
<c:url var="react_v16_0Url" value="react_v16_0"/>
<c:url var="domAttributesInReact16Url" value="dom-attributes-in-react-16"/>
<c:url var="errorHandlingInReact16Url" value="error-handling-in-react-16"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">Обновления</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${derivedStateNecessityUrl}" class="topic-list__topic-nav-link">
                <h4><span class="date">07.06.2018: </span>Возможно, вам не требуется производное состояние</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${react_v16_4_0PointerEventsUrl}" class="topic-list__topic-nav-link">
                <h4><span class="date">23.05.2018: </span>React v16.4.0: События указателя</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${react_v16_3_0Url}" class="topic-list__topic-nav-link">
                <h4><span class="date">29.03.2018: </span>React v16.3.0: Новые методы жизненного цикла и API контекста</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${react_v16_2_0_fragmentsImprovedSupportUrl}" class="topic-list__topic-nav-link">
                <h4><span class="date">28.11.2017: </span>React v16.2.0: улучшенная поддержка фрагментов</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${react_v16_0Url}" class="topic-list__topic-nav-link">
                <h4><span class="date">26.09.2017: </span>React v16.0</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${domAttributesInReact16Url}" class="topic-list__topic-nav-link">
                <h4><span class="date">08.09.2017: </span>DOM Атрибуты в React 16</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${errorHandlingInReact16Url}" class="topic-list__topic-nav-link">
                <h4><span class="date">26.07.2017: </span>Обработка ошибок в React 16</h4>
            </a>
        </li>
    </ol>
</lt:layout>

