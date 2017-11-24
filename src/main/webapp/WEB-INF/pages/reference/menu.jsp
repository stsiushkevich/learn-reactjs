<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="reactUrl" value="react"/>
<c:url var="reactComponentUrl" value="react-component"/>
<c:url var="reactDomUrl" value="react-dom"/>
<c:url var="reactDomServerUrl" value="react-dom-server"/>
<c:url var="domElementsUrl" value="dom-elements"/>
<c:url var="syntheticEventUrl" value="synthetic-event"/>
<c:url var="testUtilitiesUrl" value="test-utilities"/>
<c:url var="shallowRendererUrl" value="shallow-renderer"/>
<c:url var="testRendererUrl" value="test-renderer"/>
<c:url var="jsEnvRequirementsUrl" value="js-env-requirements"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_REACT' ? 'active' : null}">
                <a href="${reactUrl}">4.1 React</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_REACT_COMPONENT' ? 'active' : null}">
                <a href="${reactComponentUrl}">4.2 React.Component</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_REACT_DOM' ? 'active' : null}">
                <a href=${reactDomUrl}>4.3 ReactDOM</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_REACT_DOM_SERVER' ? 'active' : null}">
                <a href=${reactDomServerUrl}>4.4 ReactDOMServer</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_DOM_ELEMENTS' ? 'active' : null}">
                <a href=${domElementsUrl}>4.5 DOM Elements</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_SYNTHETIC_EVENT' ? 'active' : null}">
                <a href=${syntheticEventUrl}>4.6 SyntheticEvent</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_TEST_UTILITIES' ? 'active' : null}">
                <a href=${testUtilitiesUrl}>4.7 Тестовые утилиты</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_SHALLOW_RENDERER' ? 'active' : null}">
                <a href=${shallowRendererUrl}>4.8 Поверхностный отрисовщик</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_TEST_RENDERER' ? 'active' : null}">
                <a href=${testRendererUrl}>4.9 Тестовый отрисовщик</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'REFERENCE_JS_ENV_REQUIREMENTS' ? 'active' : null}">
                <a href=${jsEnvRequirementsUrl}>4.10 Требования к JavaScript среде</a>
            </li>
        </ul>
    </nav>
</lt:layout>
