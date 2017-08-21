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
<c:url var="shallowRendererUrl" value="../context"/>
<c:url var="webComponentsUrl" value="web-components"/>
<c:url var="higherOrderComponentsUrl" value="higher-order-components"/>
<c:url var="integratingWithOtherLibrariesUrl" value="integrating-with-other-libraries"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<h1 style="font-weight: bold">3. Ядро React</h1>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactUrl}"><h4><b>3.1 JSX изнутри</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactComponentUrl}"><h4><b>3.2 Проверка типов с PropTypes</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactDomUrl}><h4><b>3.3	Ссылки ref и DOM</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${uncontrolledСomponentsUrl}><h4><b>3.4	Неконтролируемые компоненты</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${optimazingPerformanceUrl}><h4><b>3.5	Оптимизация производительности</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutES6Url}><h4><b>3.6	React без ES6</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${syntheticEventUrl}><h4><b>3.7	React без JSX</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${testUtilitiesUrl}><h4><b>3.8 Согласование</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${shallowRendererUrl}><h4><b>3.9	Контекст</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${webComponentsUrl}><h4><b>3.10 Веб-компоненты</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${higherOrderComponentsUrl}><h4><b>3.11 Старшие компоненты</b></h4></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${integratingWithOtherLibrariesUrl}><h4><b>3.12 Интеграция со сторонними библиотеками</b></h4></a>
		</li>
	</ol>
</lt:layout>