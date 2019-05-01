<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/conditional-rendering" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page conditional-rendering-page">
	<h1>2.8	Отрисовка по условию</h1>

	<br/>

	<p class="introduction">
		В React вы можете создавать определенные компоненты, которые инкапсулируют
		необходимое поведение. Далее, в зависимости от состояния вашего приложения,
		можно отрисовывать только некоторые из них.
	</p>

	<br/>

	<p>В React отрисовка по условию работает также, как и условия в JavaScript. Используйте условные операторы JavaScript,
		такие как <code>if</code> или <code>тернарный оператор</code>, чтобы создавать элементы, представляющие текущее
		состояние. Затем позвольте React обновить UI, чтобы привести элементы и состояние в соответствие.</p>

	<p>Рассмотрим два компонента:</p>

	<ce:code-example-1/>

	<p>Давайте создадим компонент <code>Response</code>, который отображает один из этих компонентов,
		в зависимости от результата сохранения данных на сервере:</p>

	<ce:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/bRGoeo"/>

	<p>Этот пример отрисовывает различные сообщения в зависимости от значения свойства <code>isSuccess</code>.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.8.1 Хранение элементов в переменных</h2>
	<br/>

	<p>Вы можете использовать переменные, чтобы хранить элементы. Это позволяет отрисовывать
		по условию только часть компонента, в то время как оставшаяся часть не изменится.</p>

	<p>Пусть у нас есть камин с двумя кнопками управления. Кнопки представим в виде
		компонентов <code>SetFire</code> и <code>SnuffOut</code>:</p>

	<ce:code-example-3/>

	<p>Далее создадим компонент с состоянием под названием <code>FirePlace</code>.</p>

	<p>Он будет отрисовывать либо <code>&lt;SetFireButton /&gt;</code>, либо <code>&lt;SnuffOutButton /&gt;</code> в
		зависимости от его текущего состояния. Также он будет отрисовывать компонент <code>&lt;Indicator /&gt;</code>,
		показывающий сообщения о состоянии нашего камина:</p>

	<ce:code-example-4 codePenUrl="https://codepen.io/stzidane/pen/BZawrJ?editors=0010"/>

	<p>Использование переменной и оператора <code>if</code> – хороший способ
		отрисовывать компонент по условию. Но что если иногда хочется использовать более короткий синтаксис?
		Есть несколько способов встроить условия в JSX, рассмотрим их ниже.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.8.2 Встроенный If с логическим оператором &&</h2>
	<br/>

	<p>Вы можете встраивать любые выражения в JSX, оборачивая их в фигурные скобки. Сюда
		относится и логический оператор <code>&&</code> JavaScript. Это удобно для добавления
		элемента по условию:</p>

	<ce:code-example-5/>

	<p>Этот код работает, потому что в JavaScript <code>true && выражение</code> всегда
		возвращает <code>выражение</code>, а <code>false && выражение</code> всегда
		возвращает <code>false</code>.</p>

	<p>Следовательно, если условие истинно, элемент появится в результате вывода прямо
		после <code>&&</code>. Если условие ложно, React пропустит его.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.8.3 Встраивание If-else с помощью условного оператора</h2>
	<br/>

	<p>Другой метод отрисовать элемент по условию в JSX-выражении - использовать
		тернарный оператор JavaScript: <code>условие ? true : false</code></p>

	<p>В примере ниже мы используем его для отрисовки по условию маленького блока текста:</p>

	<ce:code-example-6/>

	<p>Оператор может оказаться полезным и для более длинных выражений,
		даже если код может показаться менее читабельным:</p>

	<ce:code-example-7/>

	<c:url var="componentsAndPropsUrl" value="components-and-props"/>
	<p>
		Как и в JavaScript, именно вам предстоит выбрать подходящий стиль кода, который будет максимально читабелен
		для всей вашей команды. Также помните, что как только условия становятся слишком
		сложными, возможно, наступило отличное время
		<b><a href="${componentsAndPropsUrl}#extracting-components">выделить компонент</a></b>.
	</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.8.4 Предотвращение отрисовки компонента</h2>
	<br/>

	<p>В редких случаях вам нужно, чтобы компонент себя скрыл, даже если он был отрисован
		другим компонентом. Чтобы это сделать, нужно вернуть <code>null</code>, вместо результата его отрисовки.</p>

	<p>В примере ниже <code>&lt;DangerAlert /&gt;</code> отрисовывается в зависимости от значения
		переменной состояния <code>isDangerAlertShowed</code>. Если её значение равно <code>false</code>, то
		компонент не отрисовывается:</p>

	<ce:code-example-8 codePenUrl="https://codepen.io/stzidane/pen/owgRPg?editors=0010"/>

	<p>
		Когда мы возвращаем <code>null</code> из метода <code>render</code>, это никак не влияет на срабатывание
		методов жизненного цикла. К примеру, по-прежнему будут вызываться <code>componentWillUpdate</code>
		и <code>componentDidUpdate</code>.
	</p>
</lt:layout>

<c:url var="prevPageUrl" value="handling-events"/>
<c:url var="nextPageUrl" value="lists-and-keys"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>