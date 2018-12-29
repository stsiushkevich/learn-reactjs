<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/create-new-ract-app" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="singlePageAppUrl" value="https://reactjs.org/docs/glossary.html#single-page-application"/>
<c:url var="createReactAppUrl" value="#create-react-app"/>
<c:url var="nextjsUrl" value="#nextjs"/>
<c:url var="gatsbyUrl" value="#gatsby"/>
<c:url var="flexibleToolchainsUrl" value="#more-flexible-toolchains"/>
<c:url var="createReactAppGitUrl" value="https://github.com/facebook/create-react-app"/>
<c:url var="npxUrl" value="https://www.npmjs.com/package/npx"/>
<c:url var="babeljsUrl" value="https://babeljs.io/"/>
<c:url var="webpackUrl" value="https://webpack.js.org/"/>
<c:url var="readMeUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#table-of-contents"/>
<c:url var="userGuideUrl" value="https://github.com/facebook/create-react-app#create-react-app-"/>
<c:url var="nodejsUrl" value="https://nodejs.org/en/"/>
<c:url var="nextjsDocsUrl" value="https://nextjs.org/learn/"/>
<c:url var="gatsbyjsUrl" value="https://www.gatsbyjs.org/"/>
<c:url var="gatsbyjsDocsUrl" value="https://www.gatsbyjs.org/docs/"/>
<c:url var="gatsbyStartersUrl" value="https://www.gatsbyjs.org/starters/?v=2"/>
<c:url var="neutrinojsUrl" value="https://neutrinojs.org/"/>
<c:url var="neutrinojsReactUrl" value="https://neutrinojs.org/packages/react/"/>
<c:url var="neutrinojsReactComponentsUrl" value="https://neutrinojs.org/packages/react-components/"/>
<c:url var="nwbUrl" value="https://github.com/insin/nwb"/>
<c:url var="nwbComponentsUrl" value="https://github.com/insin/nwb/blob/master/docs/guides/ReactComponents.md#developing-react-components-and-libraries-with-nwb"/>
<c:url var="nwbAppsUrl" value="https://github.com/insin/nwb/blob/master/docs/guides/ReactApps.md#developing-react-apps-with-nwb"/>
<c:url var="parceljsUrl" value="https://parceljs.org/"/>
<c:url var="parceljsReactUrl" value="https://parceljs.org/recipes.html#react"/>
<c:url var="razzleUrl" value="https://github.com/jaredpalmer/razzle"/>
<c:url var="yarnpkgUrl" value="https://yarnpkg.com/en/"/>
<c:url var="npmjsUrl" value="https://www.npmjs.com/"/>
<c:url var="creatingReactAppFromScratchUrl" value="https://blog.usejournal.com/creating-a-react-app-from-scratch-f3c693b84658"/>
<c:url var="productionUrl" value="/core/optimizing-performance#production"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
	<h1>1.3 Создать новое React приложение</h1>
	
	<br/>
	
	<p class="introduction">
		Используйте интегрированный набор инструментов для повышения удобства пользователя и разработчика.
	</p>
	
	<br/>
	
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
		
		<li><p>Если вы создаете <b>статический контент-ориентированный сайт</b>, попробуйте
			<b><a href="${gatsbyUrl}">Gatsby</a></b>.</p></li>
		
		<li><p>Если вы создаете <b>библиотеку компонентов</b> или интегрируетесь с <b>существующей
				кодовой базой</b>, попробуйте <b><a href="${flexibleToolchainsUrl}">более гибкие наборы инструментов</a></b>.</p></li>
	</ul>
	
	<br/>
	<a name="create-react-app"></a>
	<h3>1.3.2.1 Create React App</h3>
	
	<br/>
	
	<p>
		Приложение <b><a href="${createReactAppGitUrl}">Create React App</a></b> - удобная среда для <b>изучения React</b> и лучший способ начать
		создание нового <b><a href="${singlePageAppUrl}">одностраничного приложения</a></b> на React.
	</p>
	
	<p>
		Оно настраивает вашу среду разработки, так что вы можете использовать новейшие функции
		JavaScript, обеспечивает удобство разработки и оптимизирует ваше приложение для продакшена.
		Вам потребуются <b>Node >= 6</b> и <b>npm >= 5.2</b>. Чтобы создать проект, запустите:
	</p>
	
	<ce:code-example-1/>
	
	<app:alert title="Внимание!" type="warning">
		<code>npx</code> - это не опечатка - это <b><a href="${npxUrl}">инструмент для запуска пакетов,
		который поставляется с npm 5.2+</a></b>.
	</app:alert>
	
	<p>
		Create React App не обрабатывает бэкэнд-логику или базы данных. Он просто создает
		фронтэнд каркас, так что вы можете использовать его с любым бэкэндом. Под капотом он
		использует <b><a href="${babeljsUrl}">Babel</a></b> и <b><a href="${webpackUrl}">webpack</a></b>,
		но вам даже не нужно ничего знать о них.
	</p>
	
	<p>
		Когда ваше приложение готово для разворачивания на продакшене, нужно запустить команду <code>npm run build</code>.
		Она создаст оптимизированный билд вашего приложения в папке <b>build</b>.
		Больше информации по Create React App можно получить по ссылкам <b><a href="${readMeUrl}">Read Me</a></b> и
		<b><a href="${userGuideUrl}">User Guide</a></b>.
	</p>
	
	<br/>
	<a name="nextjs"></a>
	<h3>1.3.2.2 Next.js</h3>
	
	<br/>
	
	<p>
		Next.js<b><a href="${nextjsUrl}"></a></b> - это популярный легковесный фреймворк для <b>статических и отрисовываемых
		на сервере приложений</b>, построенных на React. Он включает в себя <b>готовые решения по
		стиллизации и маршрутизации</b>, предполагая, что вы используете Node.js<b><a href="${nodejsUrl}"></a></b> в
		качестве среды сервера.
	</p>
	
	<p>
		Узнайте больше о Next.js из его <b><a href="${nextjsDocsUrl}">официальной докумментации</a></b>.
	</p>
	
	<br/>
	<a name="gatsby"></a>
	<h3>1.3.2.3 Gatsby</h3>
	
	<br/>
	
	<p>
		<b><a href="${gatsbyjsUrl}">Gatsby</a></b> - лучший способ создания статических сайтов с помощью React. Он позволяет
		использовать компоненты React, но выводит предварительно отрисованный HTML и CSS, чтобы
		гарантировать максимально быстрое время загрузки.
	</p>
	
	<p>
		Узнайте больше о Gatsby из его <b><a href="${gatsbyjsDocsUrl}">официальной докумментации</a></b>
		и <b><a href="${gatsbyStartersUrl}">галерее стартовых комплектов</a></b>.
	</p>
	
	<br/>
	<a name="more-flexible-toolchains"></a>
	<h3>1.3.2.4 Более гибкие наборы инструментов</h3>
	
	<br/>
	
	<p>
		Следующие наборы инструментов предоставляют больше гибкости и выбора.
		Мы рекомендуем их более опытным пользователям:
	</p>
	
	<ul>
		<li>
			<p>
				<b><a href="${neutrinojsUrl}">Neutrino</a></b> сочетает в себе мощь <b><a href="${webpackUrl}">webpack</a></b> с простотой предустановок. Включает
				предустановку для <b><a href="${neutrinojsReactUrl}">приложений React</a></b> и <b><a href="${neutrinojsReactComponentsUrl}">компонентов React</a></b>.
			</p>
		</li>
		
		<li>
			<p>
				<b><a href="${nwbUrl}">nwb</a></b> особенно хорош для <b><a href="${nwbComponentsUrl}">публикации компонентов React в npm</a></b>.
				Его также <b><a href="${nwbAppsUrl}">можно использовать</a></b> и для создания приложений React.
			</p>
		</li>
		
		<li>
			<p>
				<b><a href="${parceljsUrl}">Parcel</a></b> - быстрый сборщик веб-приложений с нулевой
				конфигурацией, <b><a href="${parceljsReactUrl}">работающий с React</a></b>.
			</p>
		</li>
		
		<li>
			<p>
				<b><a href="${razzleUrl}">Razzle</a></b> - это фреймворк для серверной отрисовки, не требующий какой-либо настройки,
				но предлагающий большую гибкость, чем Next.js.
			</p>
		</li>
		
	</ul>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>1.3.3 Создание набора инструментов с нуля</h2>
	
	<br/>
	
	<p>JavaScript набор инструментов для сборки обычно состоит из:</p>
	
	<ul>
		<li>
			<p>
				<b>Менеджера пакетов</b>, такого как <b><a href="${yarnpkgUrl}">Yarn</a></b> или <b><a href="${npmjsUrl}">npm</a></b>.
				Он позволяет вам воспользоваться преимуществом обширной
				экосистемы сторонних пакетов, легко устанавливать и обновлять их.
			</p>
		</li>
		
		<li>
			<p>
				<b>Сборщика</b>, такого как <b><a href="${webpackUrl}">webpack</a></b> или <b><a href="${parceljsUrl}">Parcel</a></b>.
				Он позволяет вам писать модульный код и объединять его в небольшие пакеты для оптимизации времени загрузки.
			</p>
		</li>
		
		<li>
			<p>
				<b>Компилятора</b>, такого как <b><a href="${babeljsUrl}">Babel</a></b>. Он позволяет писать современный JS код,
				который также будет работать и в старых браузерах.
			</p>
		</li>
	</ul>
	
	<p>
		Если вы предпочтёте создать свой собственный JavaScript набор инструментов
		с нуля, ознакомьтесь с <b><a href="${creatingReactAppFromScratchUrl}">данным руководством</a></b>, в котором воссоздаётся
		некоторая функциональность Create React App.
	</p>
	
	<p>
		Не забудьте удостовериться, что ваш кастомный набор инструментов
		правильно <b><a href="${productionUrl}">настроен для продакшена</a></b>.
	</p>
	
	<%--
	<ul>
		<li>
			<p>
			
			</p>
		</li>
	</ul>
	--%>
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>

</div>

<c:url var="prevPageUrl" value="add-react-to-a-web-site"/>
<c:url var="nextPageUrl" value="cdn-links"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>