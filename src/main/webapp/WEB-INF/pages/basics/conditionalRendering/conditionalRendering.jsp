<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/conditional-rendering" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="page hello-world-example-page">
	<h1>2.8	Отрисовка по условию</h1>

	<wg:p>В React вы можете создавать определенные компоненты, которые инкапсулируют то
		поведение, которое вам необходимо. Затем вы можете отрисовывать только некоторые из них,
		в зависимости от состояния вашего приложения.</wg:p>

	<wg:p>Отрисовка по условию в React работает тем же образом, как и условия в JavaScript. Используйте JavaScript
		операторы, такие как <code>if</code> или <code>тернарный оператор</code>, чтобы создавать элементы, представляющие текущее
		состояние, и позвольте React обновить UI, чтобы привести их (состояние и UI) в соответствие.</wg:p>

	<wg:p>Рассмотрим два компонента:</wg:p>

	<ce:code-example-1/>

	<wg:p>Мы создадим компонент <code>Response</code>, который отображает каждый из этих компонентов,
		в зависимости от результата сохранения данных на сервере:</wg:p>

	<ce:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/bRGoeo"/>

	<wg:p>Этот пример отрисовывает сообщения в зависимости от значения свойства <code>isSuccess</code>.</wg:p>

	<br/>
	<h2>2.8.1	Хранение элементов в переменных</h2>

	<wg:p>Вы можете использовать переменные, чтобы хранить элементы. Это может помочь вам отрисовывать
		по условию часть компонента, в то время как оставшаяся часть результата вывода не изменится.</wg:p>

	<wg:p>Пусть у нас есть камин. Рассмотрим два компонента, представляющие
		его <code>SetFire</code> и <code>SnuffOut</code> кнопки:</wg:p>

	<ce:code-example-3/>

	<wg:p>В примере ниже, мы создадим компонент с состоянием, под названием <code>FirePlace</code>.</wg:p>

	<wg:p>Он будет отрисовывать либо <code>&lt;SetFireButton /&gt;</code> либо <code>&lt;SnuffOutButton /&gt;</code> в
		зависимости от его текущего состояния. Также он будет отрисовывать компонент <code>&lt;Indicator /&gt;</code>,
		показывающий сообщения о состоянии нашего камина:</wg:p>

	<ce:code-example-4 codePenUrl="https://codepen.io/stzidane/pen/BZawrJ?editors=0010"/>

	<wg:p>В то время как объявление переменной и использование <code>if</code> оператора – хороший способ
		отрисовывать компонент по условию, иногда вы можете хотеть использовать более короткий синтаксис.
		Есть несколько способов встроить условия в JSX, рассмотрим это ниже.</wg:p>

	<br/>
	<h2>2.8.2	Встроенный If с логическим оператором &&</h2>

	<wg:p>Вы можете встраивать любые выражения в JSX, оборачивая их в фигурные скобки. Это включает
		в себя и логический <code>&&</code> оператор JavaScript. Это может быть удобно для добавления
		элемента по условию:</wg:p>

	<ce:code-example-5/>

	<wg:p>Это работает, потому что в JavaScript  <code>true && выражение</code> всегда
		возвращает <code>выражение</code>, а <code>false && выражение</code> всегда
		возвращает <code>false</code>.</wg:p>

	<wg:p>Следовательно, если условие истинно, элемент появится в результате вывода прямо
		после <code>&&</code>. Если условие ложно, React проигнорирует и пропустит его.</wg:p>

	<br/>
	<h2>2.8.3	Встраивание If-else с помощью условного оператора</h2>

	<wg:p>Другим методом встраиваемой отрисовки элементов по условию является использование
		тернарного оператора JavaScript: <code>условие ? true : false</code></wg:p>

	<wg:p>В примере ниже мы используем его для отрисовки по условию маленького блока текста:</wg:p>

	<ce:code-example-6/>

	<wg:p>Это может быть полезно для более длинных выражений, даже если менее очевидно, что в нем происходит:</wg:p>

	<ce:code-example-7/>

	<c:url var="componentsAndPropsUrl" value="components-and-props"/>
	<wg:p>Как и в JavaScript, выбор подходящего стиля, основанного на том, что вы и ваша команда видит
		наиболее читабельным, остается за вами. Также помните, что как только условия становятся очень
		сложными, возможно наступило отличное время <wg:link href="${componentsAndPropsUrl}#extracting-components">выделить компонент</wg:link>.</wg:p>

	<br/>
	<h2>2.8.4	Предотвращение отрисовки компонента</h2>

	<wg:p>В редких случаях вы можете захотеть, чтобы компонент скрыл себя, даже если он был отрисован
		другим компонентом. Чтобы это сделать, нужно вернуть <code>null</code>, вместо его результата отрисовки.</wg:p>

	<wg:p>В примере ниже, <code>&lt;DangerAlert /&gt;</code> отрисовывается, в зависимости от значения
		переменной <code>isDangerAlertShowed</code> в состоянии. Если её значение равно <code>false</code>, то
		компонент не отрисовывается:</wg:p>

	<ce:code-example-8 codePenUrl="https://codepen.io/stzidane/pen/owgRPg?editors=0010"/>

	<wg:p>Возвращение <code>null</code> из метода <code>render</code> компонента не влияет на срабатывание
		методов жизненного цикла компонента. К примеру, <code>componentWillUpdate</code>
		и <code>componentDidUpdate</code> по-прежнему будут вызываться.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="handling-events"/>
<c:url var="nextPageUrl" value="lists-and-keys"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>