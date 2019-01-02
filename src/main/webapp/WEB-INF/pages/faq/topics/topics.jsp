<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionInReactJSUrl" value="ajax-and-apis"/>
<c:url var="babelAndJsxUrl" value="babel-and-jsx"/>
<c:url var="passingFunctionsToComponentsUrl" value="passing-functions-to-components"/>
<c:url var="componentStateUrl" value="component-state"/>
<c:url var="stylingAndCssUrl" value="styling-and-css"/>
<c:url var="fileStructureUrl" value="file-structure"/>
<c:url var="versioningPolicyUrl" value="versioning-policy"/>
<c:url var="virtualDOMAndInternalsUrl" value="virtual-dom-and-internals"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">FAQ</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${introductionInReactJSUrl}" class="topic-list__topic-nav-link">
                <h4>AJAX и API</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${babelAndJsxUrl}" class="topic-list__topic-nav-link">
                <h4>Babel и JSX</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${passingFunctionsToComponentsUrl}" class="topic-list__topic-nav-link">
                <h4>Передача функций в компоненты</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${componentStateUrl}" class="topic-list__topic-nav-link">
                <h4>Состояние компонента</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${stylingAndCssUrl}" class="topic-list__topic-nav-link">
                <h4>Стили и CSS</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${fileStructureUrl}" class="topic-list__topic-nav-link">
                <h4>Структура файлов</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${versioningPolicyUrl}" class="topic-list__topic-nav-link">
                <h4>Политика управления версиями</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${virtualDOMAndInternalsUrl}" class="topic-list__topic-nav-link">
                <h4>Виртуальный DOM и внутренние механизмы</h4>
            </a>
        </li>
    </ol>
</lt:layout>

