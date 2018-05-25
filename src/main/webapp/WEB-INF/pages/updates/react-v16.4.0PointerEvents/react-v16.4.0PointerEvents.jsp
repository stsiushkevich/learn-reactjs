<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.4.0-pointer-events" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="contextUrl" value="/core/context"/>
<c:url var="refsAndTheDomUrl" value="/core/refs-and-the-dom"/>
<c:url var="pointerEventsSpecUrl" value="https://developer.mozilla.org/en-US/docs/Web/API/Pointer_events"/>
<c:url var="pointerEventsExampleUrl" value="https://codesandbox.io/s/q83r7nrwv6"/>
<c:url var="philippSpiessUrl" value="https://github.com/philipp-spiess"/>
<c:url var="installationUrl" value="/introduction/installation"/>
<c:url var="pr12745Url" value="https://github.com/facebook/react/pull/12745"/>
<c:url var="pr12507Url" value="https://github.com/facebook/react/pull/12507"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page react-v16_3_0-page">
	
	<h1>React v16.4.0: события указателя</h1>
	
	<wg:p><b>23 Мая, 2018. Andrew Clark (Эндрю Кларк)</b></wg:p>
	
	<wg:p><b>Последний релиз добавляет поддержку часто запрашиваемой функции: события указателя!</b></wg:p>
	
	<wg:p>Он также включает исправление багов для <code>getDerivedStateFromProps</code>. Ознакомьтесь
		с полным списком изменений ниже.</wg:p>
	
	<br/>
	<h3>События указателя</h3>
	
	<wg:p>В React DOM теперь доступны следующие типы событий:</wg:p>
	
	<wg:p>
		<ul>
			<li><code>onPointerDown</code></li>
			<li><code>onPointerMove</code></li>
			<li><code>onPointerUp</code></li>
			<li><code>onPointerCancel</code></li>
			<li><code>onGotPointerCapture</code></li>
			<li><code>onLostPointerCapture</code></li>
			<li><code>onPointerEnter</code></li>
			<li><code>onPointerLeave</code></li>
			<li><code>onPointerOver</code></li>
			<li><code>onPointerOut</code></li>
		</ul>
	</wg:p>
	
	<wg:p>
		Обратите внимание, что данные события будут работать только в браузерах,
		поддерживающих <wg:link href="${pointerEventsSpecUrl}">спецификацию указателя событий</wg:link>. (На момент написания данной статьи,
		её поддерживают последние версии Chrome, Firefox, Edge и Internet Explorer.) Если ваше
		приложение зависит от указанных выше событий, мы рекомендуем использовать полифил событий указателя.
		Мы решили не включать такой полифил в React DOM, чтобы избежать увеличения размера пакета.
	</wg:p>
	
	<wg:p>
		<wg:link href="${pointerEventsExampleUrl}">Ознакомьтесь с данным примером в CodeSandbox.</wg:link>
	</wg:p>
	
	<wg:p>Огромное спасибо <wg:link href="${philippSpiessUrl}">Филиппу Списсу</wg:link> за содействие!</wg:p>
	
	<br/>
	<h3>Исправление багов, связанных с getDerivedStateFromProps</h3>
	
	<wg:p>
		<code>getDerivedStateFromProps</code> теперь вызывается каждый раз, когда отрисовывается
		компонент, независимо от причины обновления. Раньше он вызывался только
		в том случае, если компонент был повторно отрисован его родителем и не срабатывал
		в результате вызова <code>setState</code>. Это был дефект в первоначальной реализации, который
		теперь исправлен. Предыдущее поведение было больше похоже на <code>componentWillReceiveProps</code>,
		тогда как улучшенное поведение обеспечивает совместимость с предстоящим асинхронным
		режимом отрисовки React.
	</wg:p>
	
	<wg:p>
		<b>Данное исправление исправление дефекта не повлияет на большинство приложений</b>,
		но может вызвать проблемы в небольшом множестве компонентов. Редкие случаи, когда
		это имеет значение, относятся к одной из двух категорий:
	</wg:p>
	
	<br/>
	<h4>1. Избежание побочных эффектов в getDerivedStateFromProps</h4>
	
	<wg:p>
		Как и метод render, <code>getDerivedStateFromProps</code> должен быть чистой функцией <code>props</code> и <code>state</code>.
		Побочные эффекты в <code>getDerivedStateFromProps</code> никогда не поддерживались, но поскольку он
		теперь срабатывает чаще, недавнее исправление может выявить ранее не обнаруженные ошибки.
	</wg:p>
	
	<wg:p>
		Код с побочными эффектами следует перенести в другие методы: например, диспетчеры Flux
		обычно располагаются в обработчике происходящего события, а ручные DOM-мутации находятся
		внутри <code>componentDidMount</code> или <code>componentDidUpdate</code>. Об этом вы можете прочитать в нашей недавней
		публикации о подготовке к асинхронной отрисовке.
	</wg:p>
	
	<br/>
	<h4>2. Сравнение приходящих свойств с предыдущими свойствами во
		время вычисления контролируемых значений</h4>
	
	<wg:p>Следующий код предполагает, что <code>getDerivedStateFromProps</code>
		срабатывает только тогда, когда изменяются свойства:</wg:p>
	
	<ce:code-example-1/>
	
	<wg:p>Один из возможных способов исправить это - сравнить входящее значение с
		предыдущим значением, путем сохранения предыдущих свойств в состояние:</wg:p>
	
	<ce:code-example-2/>
	
	<wg:p>
		Тем не менее старайтесь избегать смешивания свойств и состояния подобным образом.
		Редко случается ситуация, в которой состояние должно дублировать значение,
		существующее в свойствах. Это может привести к трудно обнаружимым ошибкам.
		Предпочитайте иметь один достоверный источник для любого значения и, при
		необходимости, поднимать состояние, чтобы использовать его совместно между
		несколькими компонентами. В большинстве случаев от применения
		<code>getDerivedStateFromProps</code> (и его предшественника <code>componentWillReceiveProps</code>)
		можно избавиться, перемещая управление состоянием в родительский компонент.
	</wg:p>
	
	<wg:p>
		Помните, что большинство компонентов <b>не нуждаются в <code>getDerivedStateFromProps</code></b>. Он не
		предназначен для использования точь в точь, как <code>componentWillReceiveProps</code>. В ближайшие недели мы выпустим
		последующую публикацию с дополнительными рекомендациями о том, как
		использовать (и не использовать) <code>getDerivedStateFromProps</code>.
	</wg:p>
	
	<br/>
	<h3>Установка</h3>
	
	<wg:p>React v16.4.0 доступен в реестре npm.</wg:p>
	
	<wg:p>Чтобы установить React 16 с помощью Yarn, выполните:</wg:p>
	
	<ce:code-example-3/>
	
	<wg:p>Чтобы установить React 16 с помощью npm, выполните:</wg:p>
	
	<ce:code-example-4/>
	
	<wg:p>Мы также предоставляем UMD-сборки React в CDN:</wg:p>
	
	<ce:code-example-5/>
	
	<wg:p>Подробные инструкции по установке см. <wg:link href="${installationUrl}">в документации</wg:link>.</wg:p>
	
	
	<br/>
	<h3>Лог изменений</h3>
	
	<br/>
	<h4>React</h4>
	
	<wg:p>
		<ul>
			<li>Добавлен новый экспериментальный <code>React.unstable_Profiler</code> компонент
				для измерения производительности.(<wg:link href="${pr12745Url}">#12745</wg:link>)</li>
		</ul>
	</wg:p>
	
	<br/>
	<h4>React DOM</h4>
	
	<wg:p>
		<ul>
			<li>Добавлена поддержка спецификации событий указателя.(<wg:link href="${pr12507Url}">#12745</wg:link>)</li>
			<li>Добавлена поддержка спецификации событий указателя.(<wg:link href="${pr12507Url}">#12745</wg:link>)</li>
		</ul>
	</wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>
	<wg:p></wg:p>

</lt:layout>

<c:url var="prevPageUrl" value="react-v16.2.0-fragments-improved-support"/>
<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"/>