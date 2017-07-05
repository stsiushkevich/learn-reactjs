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

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<lt:layout cssClass="h3" style="font-weight: bold">3. Ядро React</lt:layout>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactUrl}"><b>3.1 JSX изнутри</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${reactComponentUrl}"><b>3.2 Проверка типов с PropTypes</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactDomUrl}><b>3.3	Ссылки ref и DOM</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactDomServerUrl}><b>3.4	Неконтролируемые компоненты</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${domElementsUrl}><b>3.5	Оптимизация производительности</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${reactWithoutES6Url}><b>3.6	React без ES6</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${syntheticEventUrl}><b>3.7	React без JSX</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${testUtilitiesUrl}><b>3.8 Согласование</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${shallowRendererUrl}><b>3.9	Контекст</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${webComponentsUrl}><b>3.10 Веб-компоненты</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${higherOrderComponentsUrl}><b>3.11 Старшие компоненты</b></a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href=${integratingWithOtherLibrariesUrl}><b>3.12 Интеграция со сторонними библиотеками</b></a>
		</li>
	</ol>
</lt:layout>