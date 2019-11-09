<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/event-handling" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page handling-events-page">
	<h1>2.7 Обработка событий</h1>

	<br/>

	<p class="introduction">
		Обработка событий в React-элементах очень похожа на обработку событий в DOM-элементах.
		Но есть несколько синтаксических отличий:
	</p>

	<br/>

	<ul>
		<li>События React именованы с использованием верблюжьей нотации вместо нижнего регистра.</li>
		<li>С помощью JSX в качестве обработчика события вы передаете функцию, а не строку</li>
	</ul>

	<br/>

	<p>К примеру, данный HTML:</p>

	<ce:code-example-1/>

	<p>в React немного отличается:</p>

	<ce:code-example-2/>

	<p>Другое отличие состоит в том, что в React вы не можете возвратить <code>false</code>, чтобы
		предотвратить поведение по умолчанию. <b>Вы должны явно вызывать</b> <code>preventDefault()</code>.</p>

	<p>К примеру, для нативного HTML, чтобы предотвратить поведение ссылки по умолчанию – открытие
		новой страницы, вы можете написать: </p>

	<ce:code-example-3/>

	<p>В React это будет выглядеть так:</p>

	<ce:code-example-4/>

	<c:url var="syntheticEventUrl" value="/reference/synthetic-event"/>
	<p>
		Здесь <code>e</code> – это синтетическое событие. React определяет такие синтетические события в
		соответствии со спецификацией W3C. Поэтому о кросс-браузерной
		совместимости переживать не стоит. Изучите справочное руководство
		<b><a href="${syntheticEventUrl}">SyntheticEvent</a></b>, чтобы узнать больше.
	</p>

	<p>Как правило, в React не нужно вызывать <code>addEventListener</code>, чтобы
		добавить слушателей в DOM-элемент, после того как он был создан. Вместо этого, просто передайте слушатель
		элементу в методе отрисовки.</p>

	<p>Когда вы определяете компонент, используя ES6-класс, <b>общий паттерн таков: обработчик события
		должен быть методом класса.</b> К примеру, наш компонент <code>Conditioner</code> отрисовывает
		кнопки <code>button</code>, которые позволяют пользователю регулировать текущую температуру:</p>

	<ce:code-example-5 codePenUrl="https://codepen.io/stzidane/pen/mwdMgV?editors=0010"/>

	<p>Вы должны быть внимательны со значением <code>this</code> в JSX-коллбэках. В JavaScript, методы класса не
		привязаны по умолчанию. Если вы забудете привязать функцию <code>this.onIncrease</code> и передать
		её в <code>onClick</code>, то, когда эта функция будет вызвана, <code>this</code> будет <code>undefined</code>.</p>

	<p>Это неспецифическое поведение для React. Это тот случай, когда функции работают как в
		JavaScript. Как правило, если вы ссылаетесь на метод без <code>()</code> после него,
		например, <code>onClick={this.onIncrease}</code>, вам необходимо привязать этот метод.</p>

	<p>Если синтаксис привязки вас раздражает, есть два способа, как это обойти. <b>Первый способ</b>: использовать
		экспериментальный <b><a href="https://babeljs.io/docs/plugins/transform-class-properties/">синтаксис
			инициализатора свойств</a></b>, помогающий правильно привязывать коллбэки:</p>

	<ce:code-example-6/>

	<p>Этот синтаксис разрешен по умолчанию в <b><a href="https://github.com/facebookincubator/create-react-app">Create React App</a></b>.</p>

	<p>Если вы не используете <b><a href="https://babeljs.io/docs/plugins/transform-class-properties/">синтаксис
		инициализатора свойств</a></b>, есть <b>второй способ</b>: передавать стрелочную функцию-коллбэк как свойство элемента:</p>

	<ce:code-example-7/>

	<p>Однако у этого синтаксиса есть одна проблема: при каждой отрисовке <code>Logger</code>, создается
		новый коллбэк. В большинстве случаев – всё будет в порядке. Тем не менее, если этот коллбэк передается как
		свойство в нижние компоненты, последние могут выполнять дополнительную перерисовку, что может снизить
		производительность. Чтобы этого избежать мы рекомендуем делать привязку в конструкторе или
		использовать синтаксис инициализатора свойств.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.7.1 Передача аргументов в обработчики событий</h2>
	<br/>

	<p>Часто внутри цикла обработчику событий нужно передать дополнительный параметр.
		Например, если <code>id</code> является идентификатором строки, рабочими будут следующие варианты:</p>

	<ce:code-example-8/>

	<p>Две вышеуказанные строки эквивалентны. Первая использует стрелочную функцию, а вторая
		<code>Function.prototype.bind</code>.</p>

	<p>В обоих случаях аргумент <code>e</code>, представляющий событие React, будет передан как
		второй аргумент после <code>id</code>. В стрелочной функции мы должны передавать его явно,
		а с <code>bind</code> любые дальнейшие аргументы передаются в функцию автоматически.</p>
</lt:layout>

<c:url var="prevPageUrl" value="state-and-lifecycle"/>
<c:url var="nextPageUrl" value="conditional-rendering"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>