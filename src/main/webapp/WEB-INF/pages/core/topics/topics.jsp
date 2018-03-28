<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="jsxInDepthUrl" value="jsx-in-depth"/>
<c:url var="typecheckingWithPropTypesUrl" value="typechecking-with-prop-types"/>
<c:url var="refsAndTheDomUrl" value="refs-and-the-dom"/>
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
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<h1 style="color: #00acc1">3. Продвинутое руководство</h1>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${jsxInDepthUrl}"><h4>3.1 JSX изнутри</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${typecheckingWithPropTypesUrl}"><h4>3.2 Проверка типов с PropTypes</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${refsAndTheDomUrl}><h4>3.3 Ссылки ref и DOM</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${uncontrolledСomponentsUrl}><h4>3.4	Неконтролируемые компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${optimazingPerformanceUrl}><h4>3.5 Оптимизация производительности</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutES6Url}><h4>3.6 React без ES6</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutJsxUrl}><h4>3.7 React без JSX</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reconciliationUrl}><h4>3.8 Согласование</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${contextUrl}><h4>3.9 Контекст</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${fragmentsUrl}><h4>3.10	Фрагменты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${portalsUrl}><h4>3.11 Порталы</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${renderPropUrl}><h4>3.12 Паттерн: свойство render</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${errorBoundariesUrl}><h4>3.13 Границы ошибок</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${webComponentsUrl}><h4>3.14 Веб-компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${higherOrderComponentsUrl}><h4>3.15 Старшие компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${integratingWithOtherLibrariesUrl}><h4>3.16 Интеграция со сторонними библиотеками</h4></a>
		</li>
	</ol>
</lt:layout>