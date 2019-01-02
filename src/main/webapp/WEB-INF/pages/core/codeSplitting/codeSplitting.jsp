<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/code-splitting" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="webpackUrl" value="https://webpack.js.org/"/>
<c:url var="browserifyUrl" value="http://browserify.org/"/>
<c:url var="createReactAppUrl" value="https://github.com/facebook/create-react-app"/>
<c:url var="nextJsUrl" value="https://github.com/zeit/next.js/"/>
<c:url var="gatsbyJsUrl" value="https://www.gatsbyjs.org/"/>
<c:url var="installationUrl" value="https://webpack.js.org/guides/installation/"/>
<c:url var="gettingStartedUrl" value="https://webpack.js.org/guides/getting-started/"/>
<c:url var="webpackCodeSplittingUrl" value="https://webpack.js.org/guides/code-splitting/"/>
<c:url var="browserifyFactorBundleUrl" value="https://github.com/browserify/factor-bundle"/>
<c:url var="createReactAppCodeSplittingUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#code-splitting"/>
<c:url var="webpackConfigJsUrl" value="https://gist.github.com/gaearon/ca6e803f5c604d37468b0091d9959269"/>
<c:url var="babelPluginSyntaxDynamicImportUrl" value="https://yarnpkg.com/en/package/babel-plugin-syntax-dynamic-import"/>
<c:url var="babelUrl" value="https://babeljs.io/"/>
<c:url var="loadableСomponentsUrl" value="https://github.com/smooth-code/loadable-components"/>
<c:url var="loadableСomponentsDocsUrl" value="https://github.com/smooth-code/loadable-components/blob/master/packages/server/README.md"/>
<c:url var="errorBoundariesUrl" value="error-boundaries"/>
<c:url var="reactRouterUrl" value="https://reacttraining.com/react-router/"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page react-v16.7">
	<h1>3.14 Разбиение кода</h1>
	
	<h2>3.14.1 Сборка</h2>
	
	<br/>
	
	<p>
		Большинство приложений React будут создавать бандлы своих файлов с помощью
		таких инструментов, как <b><a href="${webpackUrl}">Webpack</a></b> или
		<b><a href="${browserifyUrl}">Browserify</a></b>. Бандлинг(объединение) - это процесс
		отслеживания импортированных файлов и их объединения в один файл: «бандл». Такой бандл затем
		может быть включен в веб-страницу для загрузки всего приложения за раз.
	</p>
	
	<p>Пример:</p>
	
	<p><b>App:</b></p>
	
	<ce:code-example-1/>
	
	<ce:code-example-2/>
	
	<p><b>Бандл:</b></p>
	
	<ce:code-example-3/>
	
	<br/>
	
	<app:alert type="warning" title="Внимание!">
		Ваши бандлы будут выглядеть совсем иначе, чем этот.
	</app:alert>
	
	<p>Если вы используете <b><a href="${createReactAppUrl}">Create React App</a></b>,
		<b><a href="${nextJsUrl}">Next.js</a></b>, <b><a href="${gatsbyJsUrl}">Gatsby</a></b> или аналогичный
		инструмент, у вас будет готовая конфигурация Webpack для получения
		бандла вашего приложения.</p>
	
	<p>В противном случае, вам нужно настроить построение бандла самостоятельно.
		Для примера, познакомьтесь с руководствами по <b><a href="${installationUrl}">установке</a></b> и
		<b><a href="${gettingStartedUrl}">началу работы</a></b> в документации по Webpack.</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>3.14.2 Разбиение кода</h2>
	
	<br/>
	
	<p>Построение бандла это конечно замечательно, но по мере роста вашего приложения ваш бандл
		также будет расти. Особенно, если вы подключаете большие сторонние библиотеки. Вам нужно
		постоянно следить за кодом, который вы включаете в свой бандл, чтобы случайно не сделать его
		настолько большим, что загрузка вашего приложения начнет занимать слишком много времени.</p>
	
	<p>Чтобы избежать создания огромного бандла, следует опередить проблему и начать
		«разбивать» свой бандл. <b><a href="${webpackCodeSplittingUrl}">Разбиение кода</a></b> - это функция, поддерживаемая сборщиками, такими
		как Webpack и Browserify (через <b><a href="${browserifyFactorBundleUrl}">factor-bundle</a></b>).
		Они могут создавать несколько бандлов, которые затем можно динамически подгружать во время выполнения.</p>
	
	<p>Разбиение кода вашего приложения может помочь вам «лениво подгружать» только то,
		что в данный момент требуется пользователю, что может значительно повысить производительность
		вашего приложения. Хотя вы не сократили общий объем кода в своем приложении, вы избежали
		загрузки кода, который может никогда не потребоваться пользователю, а также сократили объем кода,
		необходимый для первоначальной загрузки.</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>3.14.3 import()</h2>
	
	<br/>
	
	<p>Лучший способ внедрить разбиение кода в ваше приложение - использовать синтаксис
		динамического импорта: <code>import()</code>.</p>
	
	<p><b>До:</b></p>
	
	<ce:code-example-4/>
	
	<p><b>После:</b></p>
	
	<ce:code-example-5/>
	
	<br/>
	
	<app:alert type="warning" title="Внимание!">
		Синтаксис динамического импорта <code>import()</code> - это предложение ECMAScript (JavaScript), которое в
		настоящее время не является частью языкового стандарта. Ожидается, что он
		будет принят в ближайшее время.
	</app:alert>
	
	<p>Когда Webpack видит данный синтаксис, он автоматически начинает разбивать код вашего приложения.
		Если вы используете приложение Create React App, оно уже сконфигурировано, и вы
		можете <b><a href="${createReactAppCodeSplittingUrl}">сразу начать использовать</a></b> такой синтаксис.
		Он также поддерживается из коробки в Next.js<b><a href="${nextJsUrl}"></a></b>.</p>
	
	<p>Если вы настраиваете Webpack самостоятельно, вам, вероятно, следует изучить руководство
		Webpack <b><a href="${webpackCodeSplittingUrl}">по разбиению кода</a></b>. Ваша конфигурация Webpack
		должна выглядеть <b><a href="${webpackConfigJsUrl}">примерно так</a></b>.</p>
	
	<p>При использовании <b><a href="${babelUrl}">Babel</a></b> вам необходимо убедиться, что Babel в состоянии анализировать
		синтаксис динамического импорта и не преобразовывать его. Для этого вам
		понадобится <b><a href="${babelPluginSyntaxDynamicImportUrl}">babel-plugin-syntax-dynamic-import</a></b>.</p>

	<a name="react.lazy"></a>
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>3.14.4 React.lazy</h2>
	
	<br/>
	
	<app:alert type="warning" title="Внимание!">
		<code>React.lazy</code> и <code>Suspense</code> пока недоступны для отрисовки на стороне сервера.
		Если вы хотите выполнить разбиение кода в приложении, отрисовываемом на сервере,
		мы рекомендуем использовать <b><a href="${loadableСomponentsUrl}">Loadable Components</a></b>.
		У них есть <b><a href="${loadableСomponentsDocsUrl}">хорошее руководство
		по разбиению бандла с отрисовкой на стороне сервера</a></b>.
	</app:alert>
	
	<p>Функция <code>React.lazy</code> позволяет отрисовывать динамический импорт как обычный компонент.</p>
	
	<p><b>До:</b></p>
	
	<ce:code-example-6/>
	
	<p><b>После:</b></p>
	
	<ce:code-example-7/>
	
	<br/>
	
	<p>Она автоматически загрузит бандл, содержащий <code>OtherComponent</code>, когда этот компонент будет отрисовываться.</p>
	
	<p><code>React.lazy</code> принимает функцию, которая должна вызывать динамический импорт: <code>import()</code>. Он
		должен вернуть <code>Promise</code>, который разрешается в модуль с <code>default</code> экспортом
		компонента React.</p>
	
	<br/>
	<br/>
	<h3>3.14.4.1 Приостановка</h3>
	
	<br/>
	
	<p>Если модуль, содержащий <code>OtherComponent</code>, еще не загружен к моменту отрисовки <code>MyComponent</code>,
		мы должны показать некий резервный контент во время ожидания - например, индикатор
		загрузки. Это делается с помощью компонента <code>Suspense</code>.</p>
	
	<br/>
	
	<ce:code-example-8/>
	
	<br/>
	
	<p>Свойство <code>fallback</code> принимает любые элементы React, которые вы хотите отобразить,
		ожидая загрузки компонента. Вы можете разместить компонент <code>Suspense</code> в любом месте
		над ленивым компонентом. Кроме того, Вы даже можете обернуть несколько ленивых компонентов в
		один <code>Suspense</code>.</p>
	
	<br/>
	
	<ce:code-example-9/>
	
	<br/>
	<br/>
	<h3>3.14.4.2 Границы ошибок</h3>
	
	<br/>
	
	<p>Если какой-либо модуль не может быть загружен (например, из-за сбоя сети), он вызовет ошибку.
		Вы можете обрабатывать такие ошибки, чтобы показать резервный UI пользователю и управлять восстановлением с
		помощью <b><a href="${errorBoundariesUrl}">границ ошибок</a></b>. Создав границу ошибки, вы можете
		использовать ее в любом месте над ленивыми компонентами для отображения состояния ошибки.</p>
	
	<br/>
	
	<ce:code-example-10/>
	
	<br/>
	<br/>
	<h3>3.14.4.3 Разбиение кода, основанное на маршрутах</h3>
	
	<br/>
	
	<p>Может оказаться сложным определить, где в вашем приложении следует произвести разбиение кода.
		Вам нужно убедиться, что вы выбираете места, которые будут равномерно разделять бандлы,
		но не будут мешать работе пользователя.</p>
	
	<p>Хороший путь - начать с маршрутов. Большинство людей в Интернете привыкли к переходам
		по страницам, ожидая некоторое время их загрузки. Вы также склонны перерисовывать всю
		страницу сразу, так что ваши пользователи вряд ли будут взаимодействовать с другими
		элементами на странице одновременно.</p>
	
	<p>Вот пример того, как настроить разбиение кода на основе маршрутов в вашем приложении,
		используя такие библиотеки, как <b><a href="${reactRouterUrl}">React Router</a></b> и
		<code>React.lazy</code>.</p>
	
	<br/>
	
	<ce:code-example-11/>
	
	<br/>
	<br/>
	<h3>3.14.4.4 Именованные экспорты</h3>
	
	<br/>
	
	<p><code>React.lazy</code> в настоящее время поддерживает только экспорт по умолчанию. Если модуль,
		который вы хотите импортировать, использует именованные экспорты, вы можете создать
		промежуточный модуль, который реэкспортирует его по умолчанию. Это гарантирует, что
		treeshaking продолжает работать и вы не вытягиваете неиспользуемые компоненты.</p>
	
	<br/>
	
	<ce:code-example-12/>
	<ce:code-example-13/>
	<ce:code-example-14/>
</div>

<c:url var="prevPageUrl" value="error-boundaries"/>
<c:url var="nextPageUrl" value="web-components"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>