<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react-dom-server" %>

<c:url var="iconvLiteUrl" value="https://www.npmjs.com/package/iconv-lite"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>4.4 ReactDOMServer</h1>

	<wg:p>Объект <code>ReactDOMServer</code> позволяет отрисовывать компоненты в статическую разметку.
		Как правило, он используется на сервере Node:</wg:p>

	<ce:code-example-0/>

	<br/>
	<h2>4.3.1 Обзор</h2>

	<wg:p>Следующие методы могут использоваться в средах сервера и браузера.</wg:p>

	<wg:p>
		<ul>
			<li><code>renderToString()</code></li>
			<li><code>renderToStaticMarkup()</code></li>
		</ul>
	</wg:p>

	<wg:p>Следующие дополнительные методы зависят от пакета (<code>stream</code>), который
		<b>доступен только на сервере</b> и не будет работать в браузере.</wg:p>

	<wg:p>
		<ul>
			<li><code>renderToNodeStream()</code></li>
			<li><code>renderToStaticNodeStream()</code></li>
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

		<wg:p>Если вы вызываете <code>ReactDOM.render()</code> в версиях ранее <b>16</b> или <code>ReactDOM.hydrate()</code>
			начиная с <b>16</b> версии на узле, который уже содержит эту отрисованную
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

	<rf:definition title="renderToNodeStream()">
		<ce:code-example-3/>

		<wg:p>Доступен с 16 версии. Отрисовывает элемент React в его исходный HTML. Возвращает поток <code>Readable</code>, который выводит
			строку HTML. Вывод HTML этим потоком в точности равен результату, возвращаемому
			<code>ReactDOMServer.renderToString</code>. Вы можете использовать этот метод для генерации
			HTML-кода на сервере и отправки разметки по первоначальному запросу для более быстрой
			загрузки страниц и для того, чтобы поисковые системы могли сканировать
			ваши страницы для целей SEO.</wg:p>

		<wg:p>Если вы вызываете <code>ReactDOM.hydrate()</code> на узле, который уже имеет эту,
			отрисованную сервером, разметку, React сохранит его и присоединит только обработчики
			событий, позволяя вам иметь очень производительную первоначальную загрузку.</wg:p>

		<app:alert title="Замечание." type="warning">
			<wg:p>Актуально только для сервера.</wg:p>

			<wg:p>Данный API недоступен в браузере. Поток, возвращенный из
				этого метода, вернет поток байтов в кодировке utf-8. Если вам нужен поток в другой кодировке,
				посмотрите проект вроде <wg:link href="">iconv-lite</wg:link>, который предоставляет потоки
				преобразования для перекодирования текста.
			</wg:p>
		</app:alert>
	</rf:definition>

	<rf:definition title="renderToStaticNodeStream()">
		<ce:code-example-4/>

		<wg:p>Доступен с 16 версии. Подобен <code>renderToNodeStream</code>, за исключением того, что это не создает
			дополнительные атрибуты DOM, которые React использует внутренне, такие как
			<code>data-reactroot</code>. Это полезно, если вы хотите использовать React как простой
			генератор статических страниц, так как удаление лишних атрибутов может сэкономить байты.</wg:p>

		<wg:p>HTML вывод этого потока в точности равен результату,
			возвращаемому <code>ReactDOMServer.renderToStaticMarkup</code>.</wg:p>

		<wg:p>Если вы планируете использовать React на клиенте, чтобы сделать разметку
			интерактивной, не используйте этот метод. Вместо этого,
			используйте <code>renderToNodeStream</code> на сервере и <code>ReactDOM.hydrate()</code> на клиенте.</wg:p>

		<app:alert title="Замечание." type="warning">
			<wg:p>Актуально только для сервера.</wg:p>

			<wg:p>Данный API недоступен в браузере. Поток, возвращенный из
				этого метода, вернет поток байтов в кодировке utf-8. Если вам нужен поток в другой кодировке,
				посмотрите проект вроде <wg:link href="${iconvLiteUrl}">iconv-lite</wg:link>, который предоставляет потоки
				преобразования для перекодирования текста.
			</wg:p>
		</app:alert>
	</rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="react-dom"/>
<c:url var="nextPageUrl" value="dom-elements"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>