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

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link">
                <a href="${noteToJavaScriptUrl}">Примечание к JavaScript</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="${helloWorldExampleUrl}">Hello, World!</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${introductionToJsxUrl}>Знакомство с JSX</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${renderingElementsUrl}>Отрисовка элементов</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${componentsAndPropsUrl}>Компоненты и свойства</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${stateAndLifecycleUrl}>Состояние и жизненный цикл</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${handlingEventsUrl}>Обработка событий</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${conditionalRenderingUrl}>Отрисовка по условию</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${listsAndKeysUrl}>Списки и ключи</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${formsUrl}>Формы</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${liftingStateUpUrl}>Передача состояния компонента вверх по иерархии</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${compositionVsInheritanceUrl}>Композиция вместо наследования</a>
            </li>
        </ul>
    </nav>
</lt:layout>
