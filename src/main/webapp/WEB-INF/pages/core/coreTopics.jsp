<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="jsxInDepthUrl" value="jsx-in-depth"/>
<c:url var="typecheckingWithPropTypesUrl" value="typechecking-with-prop-types"/>
<c:url var="refsAndTheDOMUrl" value="refs-and-the-dom"/>
<c:url var="uncontrolledComponentsUrl" value="uncontrolled-components"/>
<c:url var="optimizingPerformanceUrl" value="optimizing-performance"/>
<c:url var="reactWithoutES6Url" value="react-without-es6"/>
<c:url var="reactWithoutJSXUrl" value="react-without-jsx"/>
<c:url var="reconciliationUrl" value="reconciliation"/>
<c:url var="contextUrl" value="context"/>
<c:url var="webComponentsUrl" value="web-components"/>
<c:url var="higherOrderComponentsUrl" value="higher-order-components"/>
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<lt:layout cssClass="h3" style="font-weight: bold">3. Ядро React</lt:layout>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${jsxInDepthUrl}">3.1 JSX изнутри</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${typecheckingWithPropTypesUrl}">3.2 Проверка типов с PropTypes</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${refsAndTheDOMUrl}>3.3	Ссылки ref и DOM</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${uncontrolledComponentsUrl}>3.4	Неконтролируемые компоненты</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${optimizingPerformanceUrl}>3.5	Оптимизация производительности</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutES6Url}>3.6	React без ES6</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutJSXUrl}>3.7	React без JSX</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reconciliationUrl}>3.8 Согласование</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${contextUrl}>3.9	Контекст</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${webComponentsUrl}>3.10 Веб-компоненты</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${higherOrderComponentsUrl}>3.11 Старшие компоненты</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${integratingWithOtherLibrariesUrl}>3.12 Интеграция со сторонними библиотеками</a>
		</li>
	</ol>
</lt:layout>