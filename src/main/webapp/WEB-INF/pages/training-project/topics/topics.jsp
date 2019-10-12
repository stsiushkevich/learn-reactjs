<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/training-project/introduction"/>
<c:url var="appFrameUrl" value="/training-project/app-frame"/>
<c:url var="pageMockupsUrl" value="/training-project/page-mockups"/>
<c:url var="homePageUrl" value="/training-project/home-page"/>
<c:url var="appointmentsUrl" value="/training-project/appointments"/>
<c:url var="routingUrl" value="/training-project/routing"/>
<c:url var="asyncDataLoadingUrl" value="/training-project/async-data-loading"/>
<c:url var="appStateUrl" value="/training-project/app-state"/>
<c:url var="summaryUrl" value="/training-project/summary"/>
<c:url var="practiceUrl" value="/training-project/tasks"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
	<h1 style="color: #00acc1">5. Учебный проект</h1>
	<ol class="topic-list__topics">
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${introductionUrl}">
				<h4>5.1 Введение</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${appFrameUrl}">
				<h4>5.2 Каркасс приложения</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${pageMockupsUrl}">
				<h4>5.3 Макеты страниц</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${homePageUrl}">
				<h4>5.4 Домашняя страница</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${appointmentsUrl}">
				<h4>5.5 Список приёмов</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${routingUrl}">
				<h4>5.6 Маршрутизация</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${asyncDataLoadingUrl}">
				<h4>5.7 Асинхронная загрузка данных</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${appStateUrl}">
				<h4>5.8 Состояние приложения</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${summaryUrl}">
				<h4>5.9 Резюме-шпаргалка</h4>
			</a>
		</li>
		<li class="topic-list__topic">
			<a class="topic-list__topic-nav-link" href="${practiceUrl}">
				<h4>5.10 Практические задания</h4>
			</a>
		</li>
	</ol>
</lt:layout>