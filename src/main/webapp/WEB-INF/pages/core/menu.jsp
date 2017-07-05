<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="reactUrl" value="jsx-in-depth"/>
<c:url var="reactComponentUrl" value="typechecking-with-prop-types"/>
<c:url var="reactDomUrl" value="refs-and-the-dom"/>
<c:url var="reactDomServerUrl" value="uncontrolled-components"/>
<c:url var="domElementsUrl" value="optimizing-performance"/>
<c:url var="reactWithoutES6Url" value="react-without-es6"/>
<c:url var="syntheticEventUrl" value="react-without-jsx"/>
<c:url var="testUtilitiesUrl" value="reconciliation"/>
<c:url var="shallowRendererUrl" value="context"/>
<c:url var="webComponentsUrl" value="web-components"/>
<c:url var="higherOrderComponentsUrl" value="higher-order-components"/>
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link">
                <a href="${reactUrl}">3.1 JSX изнутри</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="${reactComponentUrl}">3.2 Проверка типов с PropTypes</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${reactDomUrl}>3.3	Ссылки ref и DOM</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${reactDomServerUrl}>3.4	Неконтролируемые компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${domElementsUrl}>3.5	Оптимизация производительности</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${reactWithoutES6Url}>3.6	React без ES6</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${syntheticEventUrl}>3.7	React без JSX</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${testUtilitiesUrl}>3.8 Согласование</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${shallowRendererUrl}>3.9	Контекст</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${webComponentsUrl}>3.10 Веб-компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${higherOrderComponentsUrl}>3.11 Старшие компоненты</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href=${integratingWithOtherLibrariesUrl}>3.12 Интеграция со сторонними библиотеками</a>
            </li>
        </ul>
    </nav>
</lt:layout>
