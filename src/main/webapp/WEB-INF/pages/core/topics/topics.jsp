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
<c:url var="syntheticEventUrl" value="react-without-jsx"/>
<c:url var="testUtilitiesUrl" value="reconciliation"/>
<c:url var="shallowRendererUrl" value="context"/>
<c:url var="webComponentsUrl" value="web-components"/>
<c:url var="higherOrderComponentsUrl" value="higher-order-components"/>
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<h1 style="font-weight: bold">3. Ядро React</h1>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactUrl}"><h4>3.1 JSX изнутри</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactComponentUrl}"><h4>3.2 Проверка типов с PropTypes</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactDomUrl}><h4>3.3	Ссылки ref и DOM</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${uncontrolledСomponentsUrl}><h4>3.4	Неконтролируемые компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${optimazingPerformanceUrl}><h4>3.5	Оптимизация производительности</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutES6Url}><h4>3.6	React без ES6</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${syntheticEventUrl}><h4>3.7	React без JSX</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${testUtilitiesUrl}><h4>3.8 Согласование</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${shallowRendererUrl}><h4>3.9	Контекст</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${webComponentsUrl}><h4>3.10 Веб-компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${higherOrderComponentsUrl}><h4>3.11 Старшие компоненты</h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${integratingWithOtherLibrariesUrl}><h4>3.12 Интеграция со сторонними библиотеками</h4></a>
		</li>
	</ol>
</lt:layout>