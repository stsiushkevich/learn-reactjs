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
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_NOTE_TO_JAVA_SCRIPT' ? 'active' : null}">
                <a href="${noteToJavaScriptUrl}">2.1 Примечание к JavaScript</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_HELLO_WORLD_EXAMPLE' ? 'active' : null}">
                <a href="${helloWorldExampleUrl}">2.2 Hello, World!</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_INTRODUCTION_TO_JSX' ? 'active' : null}">
                <a href=${introductionToJsxUrl}>2.3 Знакомство с JSX</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_RENDERING_ELEMENTS' ? 'active' : null}">
                <a href=${renderingElementsUrl}>2.4 Отрисовка элементов</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_COMPONENTS_AND_PROPS' ? 'active' : null}">
                <a href=${componentsAndPropsUrl}>2.5 Компоненты и свойства</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_STATE_AND_LIFECYCLE' ? 'active' : null}">
                <a href=${stateAndLifecycleUrl}>2.6 Состояние и жизненный цикл</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_HANDLING_EVENTS' ? 'active' : null}">
                <a href=${handlingEventsUrl}>2.7 Обработка событий</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_CONDITIONAL_RENDERING' ? 'active' : null}">
                <a href=${conditionalRenderingUrl}>2.8 Отрисовка по условию</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_LISTS_AND_KEYS' ? 'active' : null}">
                <a href=${listsAndKeysUrl}>2.9 Списки и ключи</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_FORMS' ? 'active' : null}">
                <a href=${formsUrl}>2.10 Формы</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_LIFTING_STATE_UP' ? 'active' : null}">
                <a href=${liftingStateUpUrl}>2.11 Передача состояния компонента вверх по иерархии</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'BASICS_COMPOSITION_VS_INHERITANCE' ? 'active' : null}">
                <a href=${compositionVsInheritanceUrl}>2.12 Композиция вместо наследования</a>
            </li>
        </ul>
    </nav>
</lt:layout>
