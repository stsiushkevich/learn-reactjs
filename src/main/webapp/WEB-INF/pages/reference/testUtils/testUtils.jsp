<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/test-utils" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>4.7 Тестовые утилиты</h1>

	<wg:p>Импорт:</wg:p>

	<ce:code-example-1/>

	<br/>
	<h2>4.7.1 Обзор</h2>

	<wg:p><code>ReactTestUtils</code> упрощает тестирование компонентов React в
		выбранном вами фрэймворке тестирования. В Facebook используется
		<code>Jest</code> для безболезненного тестирования JavaScript. Узнайте, как
		начать работу с <code>Jest</code> на сайте
		<wg:link href="http://facebook.github.io/jest/docs/tutorial-react.html#content">Jest React Tutorial</wg:link>.</wg:p>

	<app:alert type="warning" title="Замечание.">
		Airbnb выпустила утилиту тестирования <b>Enzyme</b>, которая позволяет легко
		утверждать, манипулировать и перемещать выходные данные React-компонентов.
		Если вы решили, что применение модульного тестирования с использованием Jest
		или любого другого инструмента окажется полезным, вам стоит посмотреть:
		<wg:link href="http://airbnb.io/enzyme/">http://airbnb.io/enzyme/</wg:link>
	</app:alert>

	<wg:p>
		<ul>
			<li><code>Simulate</code></li>
			<li><code>renderIntoDocument()</code></li>
			<li><code>mockComponent()</code></li>
			<li><code>isElement()</code></li>
			<li><code>isElementOfType()</code></li>
			<li><code>isDOMComponent()</code></li>
			<li><code>isCompositeComponent()</code></li>
			<li><code>isCompositeComponentWithType()</code></li>
			<li><code>findAllInRenderedTree()</code></li>
			<li><code>scryRenderedDOMComponentsWithClass()</code></li>
			<li><code>findRenderedDOMComponentWithClass()</code></li>
			<li><code>scryRenderedDOMComponentsWithTag()</code></li>
			<li><code>findRenderedDOMComponentWithTag()</code></li>
			<li><code>scryRenderedComponentsWithType()</code></li>
			<li><code>findRenderedComponentWithType()</code></li>
		</ul>
	</wg:p>

	<br/>
	<h2>4.7.2 Справка</h2>

	<br/>
	<h3>4.7.2.1 Поверхностный отрисовщик</h3>

	<wg:p>При написании модульных тестов для React может оказаться полезным неглубокая отрисовка.
		Неглубокая отрисовка позволяет отрисовывать компонент «на один уровень глубины» и утверждать
		то, что возвращает его метод отрисовки, не беспокоясь о поведении дочерних компонентов,
		которые не создаются или не отображаются. Это не требует DOM.</wg:p>

	<c:url var="shallowRendererUrl" value="shallow-renderer"/>
	<app:alert title="Замечание." type="warning">
		Неглубокая отрисовка перемещена в <code>react-test-renderer/shallow</code>. Подробнее о поверхностной
		отрисовке читайте <wg:link href="${shallowRendererUrl}">на странице справки</wg:link> .
	</app:alert>

	<br/>
	<h3>4.7.2.2 Другие утилиты</h3>

	<rf:definition title="Simulate">
		<ce:code-example-2/>

		<wg:p>Имитирует отправку событий на узле DOM с дополнительными данными события <code>eventData</code>.
			У <code>Simulate</code> есть метод для каждого события, которое понимает React.</wg:p>

		<wg:p><b>Клик события</b></wg:p>

		<ce:code-example-3/>

		<wg:p><b>Изменения значения текстового поля ввода и последующее нажатие ENTER</b></wg:p>

		<ce:code-example-4/>

		<app:alert type="warning" title="Замечание.">
			Вам необходимо будет предоставить любое свойство события, которое вы используете
			в своем компоненте (например, <code>keyCode</code>, <code>which</code> и т. Д.), поскольку React
			не создает для вас никакие из них.
		</app:alert>
	</rf:definition>

	<rf:definition title="renderIntoDocument()">
		<ce:code-example-5/>

		<wg:p>Отрисовывает элемент React в отдельный узел DOM в документе. <b>Для этой функции требуется DOM.</b></wg:p>

		<app:alert type="warning" title="Замечание.">
			Вам нужно будет иметь window, <code>window.document</code> и <code>window.document.createElement</code>
			доступными глобально перед импортом <code>React</code>. В противном случае React будет думать,
			что он не может получить доступ к DOM, и методы, подобные <code>setState</code>, не будут работать.
		</app:alert>
	</rf:definition>

	<rf:definition title="mockComponent()">
		<ce:code-example-6/>

		<wg:p>Передайте mock-компонент в этот метод, чтобы расширить его с помощью
			полезных методов, которые позволяют использовать его в качестве фиктивного
			компонента React. Вместо отрисовки, как обычно, компонент станет простым
			<code>&lt;div&gt;</code> (или другим тегом, если предоставляется <code>mockTagName</code>), содержащим
			все предоставленные потомки.</wg:p>

		<app:alert type="warning" title="Замечание.">
			<code>mockComponent()</code> - устаревший API. Вместо этого рекомендуем использовать
			<d>поверхностную отрисовку</d> или <code>jest.mock()</code>.
		</app:alert>
	</rf:definition>

	<rf:definition title="isElement()">
		<ce:code-example-7/>

		<wg:p>Возвращает <code>true</code>, если <code>element</code> является элементом React.</wg:p>
	</rf:definition>

	<rf:definition title="isElementOfType()">
		<ce:code-example-8/>

		<wg:p>Возвращает <code>true</code>, если <code>element</code> является элементом React,
			тип которого является <code>componentClass</code>.</wg:p>
	</rf:definition>

	<rf:definition title="isDOMComponent()">
		<ce:code-example-9/>

		<wg:p>Возвращает <code>true</code>, если <code>instance</code> является компонентом
			DOM (например, <code>&lt;div&gt;</code> или <code>&lt;span&gt;</code>).</wg:p>
	</rf:definition>

	<rf:definition title="isCompositeComponent()">
		<ce:code-example-10/>

		<wg:p>Возвращает <code>true</code>, если <code>instance</code> является определённым пользователем
			компонентом, таким как класс или функция.</wg:p>
	</rf:definition>

	<rf:definition title="isCompositeComponentWithType()">
		<ce:code-example-11/>

		<wg:p>Возвращает <code>true</code>, если <code>instance</code> - это компонент, тип которого
			относится к <code>componentClass</code>.</wg:p>
	</rf:definition>

	<rf:definition title="findAllInRenderedTree()">
		<ce:code-example-12/>

		<wg:p>Проходит все компоненты в <code>tree</code> и аккумулирует все компоненты, где <code>test(component)</code>
			является <code>true</code>. Это не так полезно само по себе, но используется для других тестовых утилит.</wg:p>
	</rf:definition>

	<rf:definition title="scryRenderedDOMComponentsWithClass()">
		<ce:code-example-13/>

		<wg:p>Находит все DOM-элементы компонентов в отрисованном дереве, которые
			являются компонентами DOM с именем класса, соответствующим <code>className</code>.</wg:p>
	</rf:definition>

	<rf:definition title="findRenderedDOMComponentWithClass()">
		<ce:code-example-14/>

		<wg:p>Подобно <code>scryRenderedDOMComponentsWithClass()</code>, но ожидает, что будет
			один результат, и вернет его или выдаст исключение, если количество совпадений больше одного.</wg:p>
	</rf:definition>

	<rf:definition title="scryRenderedDOMComponentsWithTag()">
		<ce:code-example-15/>

		<wg:p>Находит все DOM-элементы компонентов в отрисованном дереве,
			которые являются компонентами DOM с именем тега, соответствующим <code>tagName</code>.</wg:p>
	</rf:definition>

	<rf:definition title="findRenderedDOMComponentWithTag()">
		<ce:code-example-16/>

		<wg:p>Подобно <code>scryRenderedDOMComponentsWithTag()</code>, но ожидает, что будет один результат, и вернет
			его или выдаст исключение, если количество совпадений больше одного.</wg:p>
	</rf:definition>

	<rf:definition title="scryRenderedDOMComponentsWithType()">
		<ce:code-example-17/>

		<wg:p>Находит все экземпляры компонентов с типом, равным <code>componentClass</code>.</wg:p>
	</rf:definition>

	<rf:definition title="findRenderedDOMComponentWithType()">
		<ce:code-example-18/>

		<wg:p>Подобно <code>scryRenderedDOMComponentsWithType()</code>, но ожидает, что будет один результат,
			и вернет его или выдаст исключение, если количество совпадений больше одного.</wg:p>
	</rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="synthetic-event"/>
<c:url var="nextPageUrl" value="shallow-renderer"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>