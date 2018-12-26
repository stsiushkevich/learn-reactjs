<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.7" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="versioningUrl" value="https://reactjs.org/docs/faq-versioning.html"/>
<c:url var="issueСomment439314884Url" value="https://github.com/reactjs/rfcs/pull/68#issuecomment-439314884"/>
<c:url var="hooksUrl" value="https://github.com/reactjs/rfcs/pull/68"/>
<c:url var="commitUrl" value="https://github.com/facebook/react/commit/7bee9fbdd49aa5b9365a94b0ddf6db04bc1bf51c"/>
<c:url var="roadmapUrl" value="react-v16.x-road-map"/>
<c:url var="reactInstallationUrl" value="/introduction/installation"/>

<c:url var="pull14429Url" value="https://github.com/facebook/react/pull/14429"/>
<c:url var="pull14276Url" value="https://github.com/facebook/react/pull/14276"/>
<c:url var="pull14291Url" value="https://github.com/facebook/react/pull/14291"/>
<c:url var="pull14383Url" value="https://github.com/facebook/react/pull/14383"/>
<c:url var="pull14234Url" value="https://github.com/facebook/react/pull/14234"/>
<c:url var="pull14249Url" value="https://github.com/facebook/react/pull/14249"/>
<c:url var="pull14358Url" value="https://github.com/facebook/react/pull/14358"/>
<c:url var="pull14053Url" value="https://github.com/facebook/react/pull/14053"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page react-v16.7">
	<h1>React v16.7: Нет, это не тот, что с хуками</h1>
	
	<wg:p><b>Декабрь 19, 2018 Эндрю Кларк</b></wg:p>
	
	<br/>
	
	<p class="introduction">
		Наш последний релиз содержит важное исправление по производительности для <code>React.lazy</code>.
		Хотя в API нет никаких изменений, мы выпускаем его как minor вместо патча.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	
	<h2>Почему это исправление minor а не патч?</h2>
	
	<br/>
	
	<p>React следует <b><a href="${versioningUrl}">семантике версий</a></b>. Как правило, это означает, что мы используем версии
		патчей для багфиксов и minor-ы для новых (не ломающих) функций. Однако мы оставляем за
		собой право выпускать minor версии, даже если они не содержат новых функций. Мотив состоит
		в том, чтобы зарезервировать патчи для изменений, которые имеют очень низкую вероятность
		поломки. Патчи являются наиболее важным типом релиза, потому что иногда они содержат
		критические багфиксы. Это означает, что релизы патчей имеют более высокий уровень надежности.
		Для патча недопустимо, чтобы он вносил дополнительные баги, так как, если у людей начнется недоверие к патчам,
		это ставит под угрозу нашу способность исправлять возникающие критические баги - например,
		исправлять уязвимости безопасности.</p>
	
	<p>Мы не собираемся упускать ошибки. У React кропотливым трудом заслуженная репутация стабильности, и мы намерены
		продолжать в том же духе. Мы тщательно тестируем каждую версию React перед выпуском. Это включает
		в себя модульные тесты, генеративные (нечеткие) тесты, интеграционные тесты и внутренние
		вычисления для десятков тысяч компонентов. Однако иногда мы совершаем ошибки. Вот почему в
		будущем наша политика будет заключаться в том, что если релиз содержит нетривиальные изменения,
		мы добавим minor версию, даже если внешнее поведение будет таким же. Мы также выпустим minor
		при изменении API с префиксом <code>unstable_</code>.</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	
	<h2>Уже можно использовать хуки?</h2>
	
	<br/>
	
	<p><b>Пока нет</b>, но скоро будет можно!</p>
	
	<p>На React Conf мы сказали, что 16.7 будет первым релизом, включающим хуки. Это была ошибка.
		Мы не должны были давать определенный номер версии невыпущенной функции. Мы будем избегать
		этого в будущем.</p>
	
	<p>Хотя 16.7 не включает хуки, пожалуйста, не делайте каких-либо выводов о сроках появления хуков.
		Наши планы на хуки неизменны:</p>
	
	<br/>
	
	<ul>
		<li>
			<p><b><a href="${hooksUrl}">Предложение хуков</a></b> было одобрено (<b><a href="${issueСomment439314884Url}">с незначительными
				запланированными изменениями в ответ на обратную связь</a></b>).</p>
		</li>
		<li>
			<p><b><a href="${commitUrl}">Реализация</a></b> была вмерджена в репозиторий React (под флагом функции).</p>
		</li>
		<li>
			<p>В настоящее время мы находимся на стадии тестирования, и вы можете ожидать
				публичного релиза в течение нескольких месяцев.</p>
		</li>
	</ul>
	
	<br/>
	
	<p>Мы слышали от многих людей, что они уже хотят начать использовать хуки в своих приложениях.
		Мы тоже не можем дождаться, чтобы поставить их! Но поскольку хуки меняют то, как пишутся компоненты
		React, мы тратим дополнительное время на то, чтобы как следует уточнить детали. Мы ценим
		ваше терпение, и кропотливо готовим эту захватывающую новую функцию для широкого использования.</p>
	
	<p>Узнайте больше о <b><a href="${roadmapUrl}">плане действий</a></b> в нашем предыдущем посте.</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	
	<h2>Установка</h2>
	
	<br/>
	
	<p>React v16.7.0 доступен в реестре npm.</p>
	
	<p>Чтобы установить React 16 с помощью Yarn, запустите:</p>
	
	<ce:code-example-1/>
	
	<p>Чтобы установить React 16 с помощью npm, запустите:</p>
	
	<ce:code-example-2/>
	
	<p>Мы также предоставляем UMD-сборки React на CDN:</p>
	
	<ce:code-example-3/>
	
	<p>Обратитесь к документации для получения подробных <b><a href="${reactInstallationUrl}">инструкций по установке</a></b>.</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	
	<h2>Список изменений</h2>
	
	<br/>
	
	<h3>React DOM</h3>
	
	<ul>
		<li>
			<p>Исправлена проблема производительности <code>React.lazy</code> для большого количества лениво загруженных компонентов.
				(<a href="${pull14429Url}">#14429</a>)</p>
		</li>
		<li>
			<p>Очищение полей при размонтировании, чтобы избежать утечек памяти.
				(<a href="${pull14276Url}">#14276</a>)</p>
		</li>
		<li>
			<p>Исправлена ошибка с SSR и контекстом при смешивании react-dom/server@16.6 и react@<16.6.
				(<a href="${pull14291Url}">#14291</a>)</p>
		</li>
		<li>
			<p>Исправлена регрессия производительности в режиме профилирования.
				(<a href="${pull14383Url}">#14383</a>)</p>
		</li>
	</ul>
	
	<br/>
	<h3>Scheduler (экспериментальный)</h3>
	
	<ul>
		<li>
			<p>Публикация в <code>MessageChannel</code> вместо <code>window</code>.
				(<a href="${pull14234Url}">#14234</a>)</p>
		</li>
		<li>
			<p>Уменьшение издержки сериализации.
				(<a href="${pull14249Url}">#14249</a>)</p>
		</li>
		<li>
			<p>Исправлен фидбэк к <code>setTimeout</code> в тестовых средах.
				(<a href="${pull14358Url}">#14358</a>)</p>
		</li>
		<li>
			<p>Добавлены методы для отладки. (<a href="${pull14053Url}">#14053</a>)</p>
		</li>
	</ul>
</div>

<c:url var="prevPageUrl" value="react-v16.x-road-map"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
/>