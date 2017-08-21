<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react-dom-server" %>

<lt:layout cssClass="page hello-world-example-page">
	<h1>4.4 ReactDOMServer</h2>

	<wg:p>Если вы загружаете React c помощью тега <code>&lt;script&gt;</code>, эти API верхнего уровня
		доступны в глобальном <code>ReactDOMServer</code>. Если вы используете ES6 с <b>npm</b>, вы можете
		написать <code>import ReactDOMServer from 'react-dom/server'</code>. Если вы используете ES5 с <b>npm</b>, вы
		можете написать <code>var ReactDOMServer = require ('react -dom/server')</code>.</wg:p>

	<br/>
	<h2>4.3.1 Обзор</h2>

	<wg:p>Класс <code>ReactDOMServer</code> позволяет отрисовывать ваши компоненты на сервере.</wg:p>

	<wg:p>
		<ul>
			<li>renderToString()</li>
			<li>renderToStaticMarkup()</li>
		</ul>
	</wg:p>

	<br/>
	<h2>4.3.3 Справка</h2>

	<rf:definition title="renderToString()">
		<ce:code-example-1/>

		<wg:p>Отрисовывает элемент React в его исходный HTML. Это следует использовать
			только на сервере. React вернет HTML строку. Вы можете использовать этот метод
			для генерации HTML-кода на сервере и отправки разметки по первоначальному запросу
			для более быстрой загрузки страниц и для того, чтобы поисковые системы могли
			сканировать ваши страницы для целей SEO.</wg:p>

		<wg:p>Если вы вызываете <code>ReactDOM.render()</code> на узле, который уже содержит эту отрисованную
			сервером разметку, React сохранит его и только присоединит обработчики событий,
			позволяя вам получить очень производительную первую загрузку.</wg:p>
	</rf:definition>

	<rf:definition title="renderToStaticMarkup()">
		<ce:code-example-2/>

		<wg:p>Подобен <code>renderToString</code>, за исключением того, что это не создает дополнительных
			атрибутов DOM, таких как <code>data-reactid</code>, которые React использует внутри. Он полезен,
			если вы хотите использовать React как простой статический генератор страниц, так
			как удаление лишних атрибутов может сэкономить множество байт.</wg:p>
	</rf:definition>
</lt:layout>