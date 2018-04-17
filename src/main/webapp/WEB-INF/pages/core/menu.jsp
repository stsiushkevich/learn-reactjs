<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="reactUrl" value="jsx-in-depth"/>
<c:url var="reactComponentUrl" value="typechecking-with-prop-types"/>
<c:url var="reactDomUrl" value="refs-and-the-dom"/>
<c:url var="uncontrolledСomponentsUrl" value="uncontrolled-components"/>
<c:url var="optimazingPerformanceUrl" value="optimizing-performance"/>
<c:url var="reactWithoutES6Url" value="react-without-es6"/>
<c:url var="reactWithoutJsxUrl" value="react-without-jsx"/>
<c:url var="reconciliationUrl" value="reconciliation"/>
<c:url var="contextUrl" value="context"/>
<c:url var="fragmentsUrl" value="fragments"/>
<c:url var="portalsUrl" value="portals"/>
<c:url var="renderPropUrl" value="render-prop"/>
<c:url var="errorBoundariesUrl" value="error-boundaries"/>
<c:url var="webComponentsUrl" value="web-components"/>
<c:url var="higherOrderComponentsUrl" value="higher-order-components"/>
<c:url var="forwardingRefsUrl" value="forwarding-refs"/>
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_JSX_IN_DEPTH' ? 'active' : null}">
                <a href="${reactUrl}">3.1 JSX изнутри</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_TYPECHECKING_WITH_PROP_TYPES' ? 'active' : null}">
                <a href="${reactComponentUrl}">3.2 Проверка типов с PropTypes</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_REFS_AND_THE_DOM' ? 'active' : null}">
                <a href=${reactDomUrl}>3.3 Ссылки ref и DOM</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_UNCONTROLLED_COMPONENTS' ? 'active' : null}">
                <a href=${uncontrolledСomponentsUrl}>3.4 Неконтролируемые компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_OPTIMIZING_PERFORMANCE' ? 'active' : null}">
                <a href=${optimazingPerformanceUrl}>3.5 Оптимизация производительности</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_REACT_WITHOUT_ES6' ? 'active' : null}">
                <a href=${reactWithoutES6Url}>3.6 React без ES6</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_REACT_WITHOUT_JSX' ? 'active' : null}">
                <a href=${reactWithoutJsxUrl}>3.7 React без JSX</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_RECONCILIATION' ? 'active' : null}">
                <a href=${reconciliationUrl}>3.8 Согласование</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_CONTEXT' ? 'active' : null}">
                <a href=${contextUrl}>3.9 Контекст</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_FRAGMENTS' ? 'active' : null}">
                <a href=${fragmentsUrl}>3.10 Фрагменты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_PORTALS' ? 'active' : null}">
                <a href=${portalsUrl}>3.11 Порталы</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_RENDER_PROP' ? 'active' : null}">
                <a href=${renderPropUrl}>3.12 Паттерн: свойство render</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_ERROR_BOUNDARIES' ? 'active' : null}">
                <a href=${errorBoundariesUrl}>3.13 Границы ошибок</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_WEB_COMPONENTS' ? 'active' : null}">
                <a href=${webComponentsUrl}>3.14 Веб-компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HIGHER_ORDER_COMPONENTS' ? 'active' : null}">
                <a href=${higherOrderComponentsUrl}>3.15 Старшие компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_FORWARDING_REFS' ? 'active' : null}">
                <a href=${forwardingRefsUrl}>3.16 Передача ссылок</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_INTEGRATING_WITH_OTHER_LIBRARIES' ? 'active' : null}">
                <a href=${integratingWithOtherLibrariesUrl}>3.17 Интеграция со сторонними библиотеками</a>
            </li>
        </ul>
    </nav>
</lt:layout>
