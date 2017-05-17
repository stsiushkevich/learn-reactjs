<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="noteToJavaScriptUrl" value="note-to-javascript"/>
<c:url var="helloWorldExampleUrl" value="hello-world-example"/>
<c:url var="introductionToJsxUrl" value="introduction-to-jsx"/>
<c:url var="renderingElementsUrl" value="rendering-elements"/>
<c:url var="componentsAndPropsUrl" value="components-and-props"/>
<c:url var="stateAndLifecycleUrl" value="state-and-lifecycle"/>
<c:url var="handlingEventsUrl" value="handling-events"/>
<c:url var="conditionalRenderingUrl" value="conditional-rendering"/>
<c:url var="listsAndKeysUrl" value="lists-and-keys"/>
<c:url var="formsUrl" value="forms"/>
<c:url var="liftingStateUpUrl" value="lifting-state-up"/>
<c:url var="compositionVsInheritanceUrl" value="composition-vs-inheritance"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <lt:layout cssClass="h3" style="font-weight: bold">Основы React JS</lt:layout>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${noteToJavaScriptUrl}" class="topic-list__topic-nav-link">Примечание к JavaScript</a>
        </li>
        <li class="topic-list__topic">
            <a href="${helloWorldExampleUrl}" class="topic-list__topic-nav-link">Hello, World!</a>
        </li>
        <li class="topic-list__topic">
            <a href=${introductionToJsxUrl} class="topic-list__topic-nav-link">Знакомство с JSX</a>
        </li>
        <li class="topic-list__topic">
            <a href=${renderingElementsUrl} class="topic-list__topic-nav-link">Отрисовка элементов</a>
        </li>
        <li class="topic-list__topic">
            <a href=${componentsAndPropsUrl} class="topic-list__topic-nav-link">Компоненты и свойства</a>
        </li>
        <li class="topic-list__topic">
            <a href=${stateAndLifecycleUrl} class="topic-list__topic-nav-link">Состояние и жизненный цикл</a>
        </li>
        <li class="topic-list__topic">
            <a href=${handlingEventsUrl} class="topic-list__topic-nav-link">Обработка событий</a>
        </li>
        <li class="topic-list__topic">
            <a href=${conditionalRenderingUrl} class="topic-list__topic-nav-link">Отрисовка по условию</a>
        </li>
        <li class="topic-list__topic">
            <a href=${listsAndKeysUrl} class="topic-list__topic-nav-link">Списки и ключи</a>
        </li>
        <li class="topic-list__topic">
            <a href=${formsUrl} class="topic-list__topic-nav-link">Формы</a>
        </li>
        <li class="topic-list__topic">
            <a href=${liftingStateUpUrl} class="topic-list__topic-nav-link">Передача состояния компонента вверх по иерархии</a>
        </li>
        <li class="topic-list__topic">
            <a href=${compositionVsInheritanceUrl} class="topic-list__topic-nav-link">Композиция вместо наследования</a>
        </li>
    </ol>
</lt:layout>

