<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="ajaxAndApisUrl" value="ajax-and-apis"/>
<c:url var="babelAndJsxUrl" value="babel-and-jsx"/>
<c:url var="passingFunctionsToComponentsUrl" value="passing-functions-to-components"/>
<c:url var="componentStateUrl" value="component-state"/>
<c:url var="stylingAndCssUrl" value="styling-and-css"/>
<c:url var="fileStructureUrl" value="file-structure"/>
<c:url var="versioningPolicyUrl" value="versioning-policy"/>
<c:url var="virtualDOMAndInternalsUrl" value="virtual-dom-and-internals"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_AJAX_AND_APIS' ? 'active' : null}">
                <a href="${ajaxAndApisUrl}">AJAX и API</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_BABEL_AND_JSX' ? 'active' : null}">
                <a href="${babelAndJsxUrl}">Babel и JSX</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_PASSING_FUNCTIONS_TO_COMPONENTS' ? 'active' : null}">
                <a href="${passingFunctionsToComponentsUrl}">Передача функций в компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_COMPONENT_STATE' ? 'active' : null}">
                <a href="${componentStateUrl}">Состояние компонента</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_STYLING_AND_CSS' ? 'active' : null}">
                <a href="${stylingAndCssUrl}">Стили и CSS</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_FILE_STRUCTURE' ? 'active' : null}">
                <a href="${fileStructureUrl}">Структура файлов</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_VERSIONING_POLICY' ? 'active' : null}">
                <a href="${versioningPolicyUrl}">Политика управления версиями</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_VIRTUAL_DOM_AND_INTERNALS' ? 'active' : null}">
                <a href="${virtualDOMAndInternalsUrl}">Виртуальный DOM и внутренние механизмы</a>
            </li>
        </ul>
    </nav>
</lt:layout>
