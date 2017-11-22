<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="react_v16_0Url" value="react_v16_0"/>
<c:url var="domAttributesInReact16Url" value="dom-attributes-in-react-16"/>
<c:url var="errorHandlingInReact16Url" value="error-handling-in-react-16"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">Обновления</h1>
    <ol class="topic-list__topics">
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

