<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/jsx-in-depth" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<lt:layout cssClass="page hello-world-example-page">
	<wg:head size="3"><b>3.1 JSX изнутри</b></wg:head>

	<wg:p>По существу, JSX просто предоставляет синтаксический сахар для функции
		<code>React.createElement(component, props, ...children)</code>. JSX код:</wg:p>

	<ce:code-example-1/>

	<wg:p>компилируется в:</wg:p>

	<ce:code-example-2/>

	<wg:p>Вы также можете использовать самозакрывающуюся форму тэгов, если у них нет потомков:</wg:p>

	<ce:code-example-3/>

	<wg:p>компилируется в:</wg:p>

	<ce:code-example-4/>

	<wg:p>Если вам нужно проверить как указанный вами JSX конвертируется в JS,
		вы можете попробовать <wg:link href="https://babeljs.io/repl/#?babili=false&evaluate=true&lineWrap=false&presets=es2015%2Creact%2Cstage-0&targets=&browsers=&builtIns=false&debug=false&experimental=false&loose=false&spec=false&playground=true&code_lz=GYVwdgxgLglg9mABAZwIYE8ASBTANruACgEpEBvAKEUQCdsoQakAeAExgDcA-HfORAO5wauVgEJmAenbcA3BQC-QA">компилятор Babel онлайн</wg:link>.</wg:p>

	<br/>
	<wg:head size="4"><b>3.1.1 Указание типа React элемента</b></wg:head>

	<wg:p>Первая часть JSX тэга определяет тип React элемента. Типы записываются с
		большой буквы и указывают, что JSX-тэг ссылается на React-компонент. Эти тэги
		компилируются в прямые ссылки на именованные переменные. Поэтому если вы используете
		выражение <code>&lt;MyComponent /&gt;</code>, <code>MyComponent</code> должен находиться в области видимости.</wg:p>

	<br/>
	<wg:head size="5"><b>3.1.1.1 React должен находиться в области видимости</b></wg:head>

	<wg:p>После того, как JSX скомпилируется в вызовы <code>React.createElement</code>,  библиотека
		React также должна всегда быть в области видимости вашего JSX кода.</wg:p>

	<wg:p>Например, оба импорта необходимы в данном коде, даже если на <code>React</code> и
		<code>Message</code> нет прямых ссылок из JavaScript:</wg:p>

	<ce:code-example-5/>

	<wg:p>Если вы не используете JavaScript сборщик и подгружаете React
		из <code>&lt;script&gt;</code> тэга, то он уже находится в области видимости как глобальный <code>React</code> объект.</wg:p>

	<br/>
	<wg:head size="5"><b>3.1.1.2 Использование записи через точку “.” в JSX</b></wg:head>

	<wg:p>Вы также можете ссыласть на React-компонент используя запись через точку внутри JSX.
		Это удобно, если у вас есть единственный модуль, который експортирует несколько React-компонентов.
		К примеру, если <code>MyComponents.Button</code> – это компонент, вы можете обратиться к
		нему напрямую в JSX, используя точку:</wg:p>

	<ce:code-example-6/>

	<br/>
	<wg:head size="5"><b>3.1.1.3 Названия пользовательских компонентов должны начинаться с большой буквы</b></wg:head>

	<wg:p>Когда название типа элемента начинается с маленькой буквы, он ссылается на встроенный компонент,
		такой как <code>&lt;div&gt;</code> или <code>&lt;span&gt;</code>, обуславливая передачу
		строк “<code>div</code>” или “<code>span</code>” в вызов <code>React.createElement</code>.</wg:p>

	<wg:p>Названия типов, которые начинаются с большой буквы, такие как <code>&lt;MyComponent/&gt;</code> компонент,
		компилируется в <code>React.createElement(MyComponent)</code> и соответствует компоненту, определенному
		или импортированному в ваш JavaScript файл.</wg:p>

	<wg:p>Рекомендуется именовать компоненты с большой буквы. Если у вас есть компонент, названный с
		маленькой буквы, присвойте его переменной, названной с большой буквы, перед тем как использовать его в JSX.</wg:p>

	<wg:p>К примеру, этот код не будет работать как ожидается:</wg:p>

	<ce:code-example-7/>

	<wg:p>Для того, чтобы это исправить, мы переименуем message в <code>Message</code> и станем
		использовать <code>&lt;Message/&gt;</code>, когда будем ссылаться на него:</wg:p>

	<ce:code-example-8/>

	<br/>
	<wg:head size="5"><b>3.1.1.4 Выбор типа во время выполнения</b></wg:head>

	<wg:p>Нельзя использовать выражение как тип React-элемента в JSX. Если вы
		всё же хотите использовать выражение, чтобы указать тип React-элемента,
		сперва назначьте его переменной, названной с большой буквы. Часто это подходит,
		когда вам необходимо отрисовать различные компоненты, в зависимости от свойств <code>prop</code>:</wg:p>

	<ce:code-example-9/>

	<wg:p>Для того, чтобы это исправить, мы должны предворительно
		присвоить тип переменной, названной с большой буквы:</wg:p>

	<ce:code-example-10/>

	<br/>
	<wg:head size="4"><b>3.1.2 Свойства props в JSX</b></wg:head>

	<wg:p>Существует несколько способов указать свойства в JSX.</wg:p>

	<br/>
	<wg:head size="5"><b>3.1.2.1 JavaScript выражения как свойства</b></wg:head>

	<wg:p>Вы можете передавать любые JavaScript-выражения как свойства,
		заключая их в <code>{}</code>. К примеру, в этом JSX:</wg:p>

	<ce:code-example-11/>

	<wg:p>Для <code>MyComponent</code>, значение props.foo будет равно 10,
		так как выражение 1 + 2 + 3 + 4 будет вычислено.</wg:p>

	<wg:p>Оператор <code>if</code> и цикл <code>for</code> не являются выражениями в JavaScript, поэтому
		они не могут быть использованы в JSX напрямую. Вместо этого, вы
		можете их в соседний код. К примеру:</wg:p>

	<ce:code-example-12/>

	<%--todo поставить ссылки на свой сайт--%>
	<wg:p>Вы можете изучить больше об <wg:link href="https://facebook.github.io/react/docs/conditional-rendering.html">условной отрисовке</wg:link>
		и <wg:link href="https://facebook.github.io/react/docs/lists-and-keys.html">циклах</wg:link> в соответствующих разделах.</wg:p>

	<br/>
	<wg:head size="5"><b>3.1.2.2 Строковые литералы</b></wg:head>

	<wg:p>Вы можете передавать строковый литерал как свойство.
		Эти два JSX выражения эквивалентны:</wg:p>

	<ce:code-example-13/>

	<wg:p>Когда вы передаёте строковый литерал, его значение не будет HTML
		экранированным(будет HTML-unescaped). Поэтому следующие два JSX выражения эквивалентны:</wg:p>

	<ce:code-example-14/>

	<wg:p>Такое поведение не является релевантным. Оно здесь упомянуто только для полноты.</wg:p>

</lt:layout>