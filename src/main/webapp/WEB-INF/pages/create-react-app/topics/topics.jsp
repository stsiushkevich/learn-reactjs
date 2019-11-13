<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="gettingStartedUrl" value="/create-react-app/getting-started"/>
<c:url var="developmentUrl" value="/create-react-app/development"/>
<c:url var="stylesAndAssetsUrl" value="/create-react-app/styles-and-assets"/>
<c:url var="buildingUrl" value="/create-react-app/building"/>
<c:url var="testingUrl" value="/create-react-app/testing"/>
<c:url var="backendIntegrationUrl" value="/create-react-app/backend-integration"/>
<c:url var="deploymentUrl" value="/create-react-app/deployment"/>
<c:url var="advancedUsageUrl" value="/create-react-app/advanced-usage"/>
<c:url var="supportUrl" value="/create-react-app/support"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<h1 style="color: #00acc1">Create React App</h1>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${gettingStartedUrl}">
				<h4>Начало работы</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${developmentUrl}">
				<h4>Разработка</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${stylesAndAssetsUrl}">
				<h4>Стили и активы</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${buildingUrl}">
				<h4>Построение приложения</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${testingUrl}">
				<h4>Тестирование</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${backendIntegrationUrl}">
				<h4>Интеграция с backend</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${deploymentUrl}">
				<h4>Развёртывание</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${advancedUsageUrl}">
				<h4>Продвинутое использование</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${supportUrl}">
				<h4>Поддержка</h4>
			</a>
		</li>
	</ol>
</lt:layout>