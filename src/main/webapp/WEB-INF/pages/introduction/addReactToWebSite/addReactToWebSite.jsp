<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/add-react-to-web-site" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="addReactInOneMinuteUrl" value="#add-react-in-one-minute"/>
<c:url var="optionalTryReactWithJsxUrl" value="#optional-try-react-with-jsx"/>
<c:url var="zipUrl" value="https://gist.github.com/gaearon/6668a1f6986742109c00a581ce704605/archive/f6c882b6ae18bde42dcf6fdb751aae93495a2275.zip"/>
<c:url var="likeButtonUrl" value="https://cdn.rawgit.com/gaearon/0b180827c190fe4fd98b4c7f570ea4a8/raw/b9157ce933c79a4559d2aa9ff3372668cce48de7/LikeButton.js"/>
<c:url var="tutorialUrl" value="https://reactjs.org/tutorial/tutorial.html"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="exViewUrl" value="https://gist.github.com/gaearon/6668a1f6986742109c00a581ce704605"/>
<c:url var="zip2Url" value="https://gist.github.com/gaearon/6668a1f6986742109c00a581ce704605/archive/f6c882b6ae18bde42dcf6fdb751aae93495a2275.zip"/>
<c:url var="exView2Url" value="https://gist.github.com/gaearon/faa67b76a6c47adbab04f739cba7ceda"/>
<c:url var="zip3Url" value="https://gist.github.com/gaearon/faa67b76a6c47adbab04f739cba7ceda/archive/9d0dd0ee941fea05fd1357502e5aa348abb84c12.zip"/>
<c:url var="compositionUrl" value="/basics/components-and-props#composition"/>
<c:url var="jsMinUrl" value="https://gist.github.com/gaearon/42a2ffa41b8319948f9be4076286e1f3"/>
<c:url var="jsxUrl" value="/basics/introduction-to-jsx"/>
<c:url var="withoutJsxUrl" value="/core/react-without-jsx"/>
<c:url var="babelJsxUrl" value="http://babeljs.io/repl#?babili=false&browsers=&build=&builtIns=false&spec=false&loose=false&code_lz=Q&debug=false&forceAllTransforms=false&shippedProposals=false&circleciRepo=&evaluate=false&fileSize=false&sourceType=module&lineWrap=true&presets=es2015%2Creact%2Cstage-2%2Cstage-3&prettier=true&targets=Node-6.12&version=6.26.0&envVersion="/>
<c:url var="jsxSingleFileExampleUrl" value="https://raw.githubusercontent.com/reactjs/reactjs.org/master/static/html/single-file-example.html"/>
<c:url var="nodejsUrl" value="https://nodejs.org/en/"/>
<c:url var="fixUrl" value="https://gist.github.com/gaearon/246f6380610e262f8a648e3e51cad40d"/>
<c:url var="npxUrl" value="https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b"/>
<c:url var="like_buttonUrl" value="https://cdn.rawgit.com/gaearon/c8e112dc74ac44aac4f673f2c39d19d1/raw/09b951c86c1bf1116af741fa4664511f2f179f0a/like_button.js"/>
<c:url var="babelСliUrl" value="https://babeljs.io/docs/en/babel-cli/"/>
<c:url var="createNewReactAppUrl" value="create-a-new-react-app"/>


<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page add-react-to-web-site">
	<h1>1.2 Добавить React на веб-сайт</h1>
	
	<br/>
	
	<p class="introduction">
		Используйте React в том объеме, в котором вам это необходимо.
	</p>
	
	<br/>
	
	<p>React с самого начала был разработан для постепенного внедрения. <b>Вы можете использовать
		React в том объеме, в котором вам это необходимо</b>. Возможно, вы просто хотите добавить немного
		интерактивности на существующую страницу, в этом случае компоненты React - отличный способ это осуществить.</p>
		
	<p>
		Большинство веб-сайтов не являются или не должны быть одностраничными приложениями. С несколькими
		строками кода и без инструментов для сборки попробуйте использовать React в небольшой части вашего
		сайта. Затем вы можете либо постепенно расширить его присутствие, либо сохранить в нескольких
		динамических виджетах.
	</p>
	
	<br/>
	
	<ul>
		<li><p><b><a href="${addReactInOneMinuteUrl}">1.2.1 Добавить React за одну минуту</a></b></p></li>
		<li><p><b><a href="${optionalTryReactWithJsxUrl}">1.2.2 Дополнительно: попробовать React с JSX (сборщик необязателен!)</a></b></p></li>
	</ul>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<a name="add-react-in-one-minute"></a>
	<h2>1.2.1 Добавить React за одну минуту</h2>
	
	<br/>
	
	<p>В данном разделе мы покажем, как добавить компонент React в существующую HTML-страницу.
		Вы можете использовать как свой собственный веб-сайт, так и создать пустой HTML-файл для практики.</p>
	
	<p>
		Не будет никаких сложных инструментов или требований к установке - <b>чтобы освоить данный раздел,
		вам нужно только подключение к Интернету, и минута времени.</b>
	</p>
	
	<p>
		По желанию: <b><a href="${zipUrl}">скачать полный пример (2 КБ сжатый)</a></b>
	</p>
	
	<br/>
	<h3>1.2.1.1 Шаг 1. Добавьте DOM-контейнер в HTML</h3>
	
	<br/>
	
	<p>Сначала откройте HTML-страницу, которую вы хотите редактировать. Добавьте пустой
		тег <code>&lt;div&gt;</code>, чтобы отметить место, где вы хотите что-либо отобразить с помощью React.
	Например:</p>
	
	<ce:code-example-1/>
	
	<p>
		Мы дали данному тегу <code>&lt;div&gt;</code> уникальный HTML-атрибут <code>id</code>. Позже это позволит нам найти
		его из кода JavaScript и отобразить внутри него компонент React.
	</p>
	
	<br/>
	
	<app:alert title="Подсказка!" type="success">
		Вы можете поместить <b>контейнер</b> <code>&lt;div&gt;</code> в любом месте внутри тега
		<code>&lt;body&gt;</code>. На одной странице
		может быть любое количество независимых контейнеров DOM. Обычно они пусты - React заменяет
		любой существующий контент внутри DOM-контейнеров.
	</app:alert>
	
	<br/>
	<h3>1.2.1.2 Шаг 2. Добавьте теги script</h3>
	
	<br/>
	
	<p>Затем добавьте на страницу HTML три тега <code>&lt;script&gt;</code> прямо перед
		закрывающим тегом <code>&lt;/body&gt;</code>:</p>
	
	<ce:code-example-2/>
	
	<p>Первые два тега загружают React. Третий загрузит код вашего компонента.</p>
	
	<br/>
	<h3>1.2.1.3 Шаг 3. Создайте компонент React</h3>
	
	<br/>
	
	<p>Создайте файл с именем <code>like_button.js</code> рядом с вашей HTML-страницей.</p>
	
	<p>Откройте <b><a href="${likeButtonUrl}">этот стартовый код</a></b> и вставьте его в созданный вами файл.</p>
	
	<br/>
	
	<app:alert title="Подсказка!" type="success">
		Данный код определяет компонент React с именем <code>LikeButton</code>. Не беспокойтесь, если он
		вам непонятен - мы расскажем о строительных блоках React позже в нашем
		<b><a href="${tutorialUrl}">практическом руководстве</a></b> и <b><a href="${basicsUrl}">основных концепциях</a></b>. А пока давайте просто
		покажем его на экране!
	</app:alert>
	
	<ce:code-example-3/>
	
	<p>
		Эти две строки кода находят <code>&lt;div&gt;</code>, который мы добавили в
		наш HTML на первом шаге, а затем отображают React-компонент-кнопку «Like», внутри него.
	</p>
	
	<br/>
	<h3>1.2.1.4 Вот и всё!</h3>
	
	<br/>
	
	<p>
		Четвертого шага нет. <b>Вы только что добавили первый компонент React на свой сайт.</b>
	</p>
	
	<p>
		В следующих разделах вы найдете дополнительные советы по интеграции React.
	</p>
	
	<p><b><a href="${exViewUrl}">Посмотреть полный пример исходного кода.</a></b></p>
	
	<p><b><a href="${zip2Url}">Скачать полный пример (2KБ сжатый)</a></b></p>
	
	<br/>
	<h3>1.2.1.5 Подсказка: используйте компонент повторно</h3>
	
	<br/>
	
	<p>
		Часто вам может потребоваться отобразить компоненты React в нескольких местах
		на странице. Здесь представлен пример, который отображает кнопку «Like» три раза
		и передает ей некоторые данные:
	</p>
	
	<p><b><a href="${exView2Url}">Посмотреть полный пример исходного кода.</a></b></p>
	
	<p><b><a href="${zip3Url}">Скачать полный пример (2KБ сжатый)</a></b></p>
	
	<br/>
	
	<app:alert title="Внимание!" type="warning">
		Такая стратегия в основном полезна в тех случаях, когда части страницы, использующие на React,
		изолированы друг от друга. Однако внутри кода React проще использовать
		<b><a href="${compositionUrl}">композицию компонентов</a></b>.
	</app:alert>
	
	<br/>
	<h3>1.2.1.6 Подсказка: минимизируйте JavaScript для продакшен</h3>
	
	<br/>
	
	<p>Перед развертыванием вашего веб-сайта на продакшене, имейте в виду, что не минимизированный
		JavaScript может значительно замедлить страницу.</p>
	
	<ad:ad-content-banner-1/>
		
	<p>
		Если вы уже минимизировали код, ваш сайт будет готов к продакшену, если вы убедитесь,
		что развернутый HTML загружает версии React, заканчивающиеся на production.min.js:
	</p>
	
	<ce:code-example-4/>
	
	<p>
		Если у вас пока нет шага минимизации вашего кода JavaScript,
		<b><a href="${jsMinUrl}">вот один из способов его настройки</a></b>.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<a name="optional-try-react-with-jsx"></a>
	<h2>1.2.2 Дополнительно: попробовать React с JSX</h2>
	
	<br/>
	
	<p>
		В приведенных выше примерах мы использовали только те функции, которые изначально
		поддерживаются браузерами. Вот почему мы использовали вызов функции JavaScript
		для сообщения библиотеке React, что именно необходимо отображать:
	</p>
	
	<ce:code-example-5/>
	
	<p>Однако React также предлагает вариант использования <b><a href="${jsxUrl}">JSX</a></b>:</p>
	
	<ce:code-example-6/>
	
	<p>
		Эти два фрагмента кода эквивалентны. Хотя <b><a href="${withoutJsxUrl}">JSX не является обязательным</a></b>, многие
		считают его полезным для написания кода UI - как с React,
		так и с другими библиотеками.
	</p>
	
	<p>
		Вы можете поиграть с JSX, используя данный <b><a href="${babelJsxUrl}">онлайн-конвертер</a></b>.
	</p>
	
	<br/>
	<h3>1.2.2.1 Быстро попробовать JSX</h3>
	
	<br/>
	
	<p>
		Самый быстрый способ попробовать JSX в вашем проекте - добавить на страницу этот
		тег <code>&lt;script&gt;</code>:
	</p>
	
	<ce:code-example-7/>
	
	<p>
		Теперь вы можете использовать JSX в любом теге <code>&lt;script&gt;</code>, добавив к нему
		атрибут <code>type="text/babel"</code>. <b><a href="${jsxSingleFileExampleUrl}">Вот пример HTML-файла
		с JSX</a></b>, который вы можете скачать и поиграться.
	</p>
	
	<p>
		Такой подход хорош для изучения и создания простых демонстраций. Тем не менее,
		он делает ваш сайт медленным и <b>не подходит для продакшен</b>. Когда вы будете готовы
		двигаться дальше, удалите этот новый тег <code>&lt;script&gt;</code> и добавленные вами
		атрибуты <code>type="text/babel"</code>. Вместо этого в следующем разделе вы настроите
		препроцессор JSX для автоматического преобразования всех ваших тегов <code>&lt;script&gt;</code>.
	</p>
	
	<br/>
	<a name="add-jsx-to-project"></a>
	<h3>1.2.2.2 Добавить JSX в проект</h3>
	
	<br/>
	
	<p>
		Для добавления JSX в проект не требуются сложные инструменты, такие как сборщик
		или сервер разработки. По сути, добавление JSX <b>очень похоже на добавление препроцессора CSS</b>.
		Единственное требование - наличие <b><a href="${nodejsUrl}">Node.js</a></b> на вашем компьютере.
	</p>
	
	<p>
		Перейдите в папку вашего проекта в и вставьте эти две команды:
	</p>
	
	<ul>
		<li><p>Шаг 1: выполните <code>npm init -y</code> (если не сработает, <b><a href="${fixUrl}">здесь исправление</a></b>)</p></li>
		<li><p>Шаг 2: выполните <code>npm install babel-cli@6 babel-preset-react-app@3</code></p></li>
	</ul>
	
	<br/>
	
	<app:alert title="Подсказка" type="success">
		Здесь мы используем <code>npm</code> только для установки препроцессора JSX, ни
		для чего больше. И React, и код приложения могут оставаться в виде
		тегов <code>&lt;script&gt;</code> без изменений.
	</app:alert>
	
	<p>
		Поздравляем! Вы только что добавили в свой проект готовую к продакшену настройку JSX.
	</p>
	
	<br/>
	<h3>1.2.2.3 Запустить JSX препроцессор</h3>
	
	<br/>
	
	<p>Создайте папку с названием <code>src</code> и выполните следующую команду терминала:</p>
	
	<ce:code-example-8/>
	
	<br/>
	
	<app:alert title="Внимание!" type="warning">
		<code>npx</code> - это не опечатка - это <b><a href="${npxUrl}">инструмент для запуска пакетов,
		который поставляется с npm 5.2+</a></b>.
		
		<br/>
		
		Если вы видите сообщение об ошибке «You have mistakenly installed the babel package», возможно,
		вы пропустили <b><a href="#add-jsx-to-project">предыдущий шаг</a></b>. Выполните его в той же папке,
		а затем повторите попытку.
	</app:alert>
	
	<p>
		Не ожидайте её завершения - эта команда запускает автоматический наблюдатель для JSX.
	</p>
	
	<p>
		Если теперь вы создадите файл с названием <code>src/like_button.js</code> с <b><a href="${like_buttonUrl}">этим стартовым кодом JSX</a></b>,
		наблюдатель создаст предварительно обработанный <code>like_button.js</code> с нативным кодом JavaScript,
		понимаемым браузером. Когда вы редактируете исходный файл с JSX, преобразование
		будет перезапущено автоматически.
	</p>
	
	<p>
		В качестве бонуса это преобразование также позволяет вам использовать современные функции
		синтаксиса JavaScript, такие как классы, не беспокоясь о поломке старых браузеров.
		Инструмент, который мы только что использовали, называется <b>Babel</b>, и вы можете
		узнать о нем больше <b><a href="${babelСliUrl}">из документации</a></b>.
	</p>
	
	<p>
		Если вы почувствовали, что хорошо ознакомились с инструментами сборки и хотите получить от них больше,
		в <b><a href="${createNewReactAppUrl}">следующем разделе</a></b> описаны некоторые из самых популярных и доступных наборов инструментов.
		Если нет - представленные <code>script</code> теги также являются отличным решением!
	</p>
	
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>
	
</div>

<c:url var="prevPageUrl" value="getting-started"/>
<c:url var="nextPageUrl" value="create-a-new-react-app"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>
