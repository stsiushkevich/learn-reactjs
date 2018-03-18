<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/event-handling" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>2.7 Обработка событий</h1>

	<wg:p>Обработка событий в React-элементах очень похожа на обработку событий в DOM-элементах.
		Но есть несколько синтаксических отличий:</wg:p>

	<wg:p>
		<ul>
			<li>События React именованы с использованием верблюжьей нотации, вместо нижнего регистра.</li>
			<li>С помощью JSX вы передаете функцию как обработчик события, вместо строки</li>
		</ul>
	</wg:p>

	<wg:p>К примеру, данный HTML:</wg:p>

	<ce:code-example-1/>

	<wg:p>в React немного отличается:</wg:p>

	<ce:code-example-2/>

	<wg:p>Другое отличие состоит в том, что вы не можете возвратить <code>false</code>, чтобы
		предотвратить поведение по умолчанию в React. <b>Вы должны явно вызвать</b> <code>preventDefault()</code>.</wg:p>

	<wg:p>К примеру, для нативного HTML, чтобы предотвратить поведение ссылки по умолчанию – открытие
		новой страницы, вы можете написать: </wg:p>

	<ce:code-example-3/>

	<wg:p>В React это будет выглядеть так:</wg:p>

	<ce:code-example-4/>

	<c:url var="syntheticEventUrl" value="/reference/synthetic-event"/>
	<wg:p>Здесь <code>e</code> – это синтетическое событие. React определяет эти синтетические события в
		соответствии с W3C спецификацией. Поэтому вам нет необходимости волноваться о кросс-браузерной
		совместимости. Посмотрите справочное руководство <wg:link href="${syntheticEventUrl}">SyntheticEvent</wg:link>, чтобы изучить больше.</wg:p>

	<wg:p>Когда используется React вам, как правило, нет необходимости вызывать <code>addEventListener</code>, чтобы
		добавить слушателей в DOM-элемент, после того как он был создан. Вместо этого, просто предоставьте слушателя,
		сразу после того, как элемент отрисован.</wg:p>

	<wg:p>Когда вы определяете компонент, используя ES6 класс, <b>общий паттерн таков: обработчик события
		должен быть методом класса.</b> К примеру, наш компонент <code>Conditioner</code> отрисовывает
		кнопки <code>button</code>, которые позволяют пользователю регулировать текущую температуру:</wg:p>

	<ce:code-example-5 codePenUrl="https://codepen.io/stzidane/pen/mwdMgV?editors=0010"/>

	<wg:p>Вы должны быть внимательны со значением <code>this</code> в JSX-коллбэках. В JavaScript, методы класса не
		привязаны по умолчанию. Если вы забудете привязать <code>this.onIncrease</code> и передать
		его в <code>onClick</code>, <code>this</code> будет <code>undefined</code>, когда функция действительно вызовется.</wg:p>

	<wg:p>Это неспецифическое для React поведение. Это тот случай, когда функции работают как в
		JavaScript. Как правило, если вы ссылаетесь на метод без <code>()</code> после него,
		например, <code>onClick={this.onIncrease}</code>, вам необходимо привязать этот метод.</wg:p>

	<wg:p>Если вызов привязки вас раздражает, существует два способа, как вы можете это обойти. Если вы используете
		экспериментальный <wg:link href="https://babeljs.io/docs/plugins/transform-class-properties/">синтаксис
			инициализатора свойств</wg:link> , вы можете использовать инициализаторы свойств, чтобы правильно привязывать коллбэки:</wg:p>

	<ce:code-example-6/>

	<wg:p>Этот синтаксис разрешен по умолчанию в <wg:link href="https://github.com/facebookincubator/create-react-app">Create React App</wg:link>.</wg:p>

	<wg:p>Если вы не используете <wg:link href="https://babeljs.io/docs/plugins/transform-class-properties/">синтаксис
		инициализатора свойств</wg:link>, вы можете использовать стрелочную функцию в коллбэке:</wg:p>

	<ce:code-example-7/>

	<wg:p>Проблема этого синтаксиса в том, что каждый раз, когда отрисовывается <code>Logger</code>, создается
		новый коллбэк. В большинстве случаев – это нормально. Тем не менее, если этот коллбэк передается как
		свойство в нижние компоненты, эти компоненты могут выполнять дополнительную перерисовку. В большинстве
		случаев, мы рекомендуем делать привязку в конструкторе или использовать синтаксис инициализатора свойств,
		чтобы избежать этого вида проблемы производительности.</wg:p>

	<br/>
	<h1>2.7.1 Передача аргументов в обработчики событий</h1>

	<wg:p>Внутри цикла обычно требуется передать дополнительный параметр обработчику событий.
		Например, если id является идентификатором строки, будут работать следующие варианты:</wg:p>

	<ce:code-example-8/>

	<wg:p>Две вышеуказанные строки эквивалентны и используют стрелочные функции и
		<code>Function.prototype.bind</code> соответственно.</wg:p>

	<wg:p>В обоих случаях аргумент <code>e</code>, представляющий событие React, будет передан как
		второй аргумент после ID. С помощью функции стрелки мы должны передавать его явно,
		но с <code>bind</code> любые дальнейшие аргументы передаются в функцию автоматически.</wg:p>

	<wg:p><b>В случае использования инициализатора свойств</b>, можно использовать и такой вариант:</wg:p>

	<ce:code-example-9/>

	<wg:p>Данный вариант эквивалентен варианту с <code>bind</code> и имеет самую короткую и
		читабельную форму записи, но для его корректной работы вам нужно использовать Babel.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="state-and-lifecycle"/>
<c:url var="nextPageUrl" value="conditional-rendering"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>