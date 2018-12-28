<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/addReactToWebSite" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="singlePageAppUrl" value="https://reactjs.org/docs/glossary.html#single-page-application"/>
<c:url var="createReactAppUrl" value="#create-react-app"/>
<c:url var="nextjsUrl" value="#nextjs"/>


<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
	<h1>1.3 Добавить React на веб-сайт</h1>
	
	<p class="introduction">
		Используйте интегрированный набор инструментов для повышения удобства пользователя и разработчика..
	</p>
	
	<p>В данном разделе описаны несколько популярных наборов
		инструментов React, которые помогают в таких задачах, как:</p>
	
	<ul>
		<li><p>Масштабирование множества файлов и компонентов.</p></li>
		<li><p>Использование сторонних библиотек из npm.</p></li>
		<li><p>Раннее обнаружение распространенных ошибок.</p></li>
		<li><p>Отслеживаемое редактирование CSS и JS в режиме разработки.</p></li>
		<li><p>Оптимизация кода для релиза.</p></li>
	</ul>
	
	<p>Рекомендуемые в данном разделе наборы инструментов <b>не требуют
			настройки для начала работы.</b></p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>1.3.1 Возможно вам не нужен набор инструментов</h2>
	
	<br/>
	
	<p>
		Если вы не испытываете проблем, описанных выше, или пока не чувствуете себя комфортно,
		используя инструменты JavaScript, рассмотрите возможность добавления React в виде
		простого тега <code>&lt;script&gt;</code> на HTML-страницу, при желании добавив поддержку JSX.
	</p>
	
	<p>
		Кроме того - <b>это самый простой способ интеграции React в существующий веб-сайт</b>. В то же время вы всегда
		можете добавить больший набор инструментов, если сочтете это необходимым!
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>1.3.2 Рекомендуемые наборы инструментов</h2>
	
	<br/>
	
	<p>Команда React в первую очередь рекомендует следующие решения:</p>
	
	<ul>
		<li><p>Если вы <b>изучаете React</b> или <b>создаете новое</b> <b><a href="${singlePageAppUrl}">одностраничное
				приложение</a></b>, используйте <b><a href="${createReactAppUrl}">Create React App</a></b>.</p></li>
		
		<li><p>Если вы создаете <b>отрисовываемый на сервере веб-сайт с Node.js</b>,
			попробуйте <b><a href="${nextjsUrl}">Next.js</a></b>.</p></li>
		
		<li><p>Если вы создаете статический контент-ориентированный сайт, попробуйте Gatsby.</p></li>
		
		<li><p>Отслеживаемое редактирование CSS и JS в режиме разработки.</p></li>
		<li><p>Оптимизация кода для релиза.</p></li>
	</ul>
	
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>

</div>

<c:url var="prevPageUrl" value=""/>
<c:url var="nextPageUrl" value=""/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>