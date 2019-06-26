<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/composition-vs-inheritance" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>2.12 Композиция вместо наследования</h1>

	<br/>

	<p class="introduction">
		React имеет мощную модель композиции. Поэтому, чтобы повторно использовать код
		в компонентах, мы рекомендуем использовать именно её, а не наследование.
	</p>

	<br/>

	<p>В этом разделе мы рассмотрим несколько проблем, возникающих, когда разработчики-новички
		тяготеют к наследованию. Также мы покажем, как их разрешить с помощью композиции.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.12.1 Вмещаемость</h2>
	<br/>

	<p>
		Некоторые компоненты могут не знать заранее о своих потомках. Особенно это характерно для таких
		компонентов, как боковое меню (<code>Sidebar</code>) или диалог (<code>Dialog</code>), которые
		часто представляют собой общие контейнеры.
	</p>

	<p>Мы рекомендуем, чтобы такие компоненты использовали специальное свойство <code>children</code>.
		Оно позволяет передавать дочерние элементы извне непосредственно в результирующий вывод:</p>

	<ce:code-example-1/>

	<p>С помощью этого свойства другие компоненты могут передавать произвольные потомки, используя JSX-вложение:</p>

	<ce:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/mwpyWr?editors=0110"/>

	<p>Все, что находится внутри JSX-тега <code>&lt;SuccessMessage&gt;</code>, передается в компонент
		<code>MessageContent</code> как свойство <code>children</code>. Поскольку <code>MessageContent</code> отрисовывает
		<code>{props.children}</code> внутри <code>&lt;p&gt;</code>, в результирующем выводе отображаются
		все элементы, переданные компоненту <code>&lt;SuccessMessage&gt;</code>.</p>

	<p>
		Иногда, хоть и не так часто, встречается ситуация, когда вам нужно иметь несколько «точек крепления»
		элементов в компоненте. В таких случаях вы можете придумать свое собственное соглашение и
		не использовать <code>children</code>:
	</p>

	<ce:code-example-3 codePenUrl="https://codepen.io/stzidane/pen/eRyNRp?editors=0110"/>

	<p>Элементы React, такие как <code>&lt;NavButtons /&gt;</code> и <code>&lt;BackButton /&gt;</code>, - являются
		обычными объектами, поэтому вы можете передавать их в качестве свойств компонентов, как и любые другие данные.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.12.2 Специализация</h2>
	<br/>

	<p>Иногда мы рассматриваем компоненты как «<b>частные случаи</b>» других компонентов.
		Например, мы можем сказать, что <code>SuccessMessage</code> - это частный случай <code>Message</code>.</p>

	<p>В React это достигается композицией, где более «<b>конкретный</b>» компонент отображает более
		«<b>общий</b>» и настраивает его с помощью свойств:</p>

	<ce:code-example-4/>

	<p>Композиция работает точно также для компонентов, которые определены как классы.</p>

	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>2.12.3 Что насчет наследования?</h2>
	<br/>

	<p>В Facebook мы используем библиотеку React в тысячах компонентов. За это время мы не обнаружили
		ситуаций, где порекомендовали бы создавать иерархии наследования компонентов.</p>

	<p>Свойства <code>props</code> и <b>композиция</b> дают вам всю необходимую вам гибкость, чтобы индивидуально
		подобрать внешний вид и поведение компонента. Помните, что компоненты могут принимать любые
		свойства, включая примитивные значения, элементы React и функции.</p>

	<p>Если вы хотите повторно использовать не относящийся к UI функционал между компонентами,
		предлагаем вынести его в отдельный модуль JavaScript. Компоненты смогут импортировать этот модуль и
		использовать ваш функционал (а также объект или класс), избегая наследования.</p>
</lt:layout>

<c:url var="prevPageUrl" value="lifting-state-up"/>
<c:url var="nextPageUrl" value="thinking-in-react"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>
