<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/dom-elements" %>

<lt:layout cssClass="page hello-world-example-page">
	<wg:head size="3"><b>4.5 DOM Elements</b></wg:head>

	<wg:p>React реализует независимую от браузера DOM-систему для повышения
		производительности и кросс-браузерной совместимости. Разработчики воспользовались
		возможностью избавиться от нескольких «шераховатостей» в браузерных реализациях DOM.</wg:p>

	<wg:p>В React все свойства и атрибуты DOM (включая обработчики событий) должны
		быть в верблюжьей нотации. Например, атрибут <code>tabindex</code> HTML соответствует атрибуту
		<code>tabIndex</code> в React. Исключение составляют атрибуты <code>aria-*</code> и <code>data-*</code>, которые
		должны быть в нижнем регистре. Например, вы можете оставить <code>aria-label</code> как <code>aria-label</code>.</wg:p>

	<br/>
	<wg:head size="4"><b>4.5.1 Отличия в атрибутах</b></wg:head>

	<wg:p>Существует ряд атрибутов, которые работают по-разному в React и HTML:</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.1 checked</b></wg:head>

	<wg:p>Aтрибут <code>checked</code> поддерживается <code>&lt;input&gt;</code> компонентами типа
		<code>checkbox</code> или <code>radio</code>. Вы можете использовать его, чтобы
		установить, выбран ли компонент. Это полезно для создания контролируемых компонентов.
		<code>defaultChecked</code> - это неконтролируемый эквивалент, который устанавливает,
		выбран ли компонент, когда он впервые монтирован.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.2 className</b></wg:head>

	<wg:p>Чтобы указать класс CSS, используйте атрибут <code>className</code>. Это относится ко
		всем обычным элементам DOM и SVG, таким как <code>&lt;div&gt;</code>, <code>&lt;a&gt;</code> и другие.</wg:p>

	<wg:p>Если вы используете React с веб-компонентами (что не типично),
		используйте вместо этого атрибут <code>class</code>.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.3 dangerouslySetInnerHTML</b></wg:head>

	<wg:p><code>dangerouslySetInnerHTML</code> - это React аналог использования <code>innerHTML</code> в DOM браузера.
		Как правило, установка HTML из кода является рискованным, так как можно легко непреднамеренно
		подвергнуть ваших пользователей атаке межсайтового скриптинга (XSS). Таким образом, вы можете
		установить HTML непосредственно из React. Для этого вам нужно использовать
		<code>dangerouslySetInnerHTML</code> и передать объект с помощью <code>__html</code>-ключа, чтобы напомнить
		самому себе, что это небезопасно. Например:</wg:p>

	<ce:code-example-1/>

	<br/>
	<wg:head size="5"><b>4.5.1.4 htmlFor</b></wg:head>

	<wg:p>Поскольку <code>for</code> является зарезервированным словом в JavaScript, вместо него элементы
		React используют <code>htmlFor</code>.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.5 onChange</b></wg:head>

	<wg:p>Событие <code>onChange</code> ведет себя так, как вы ожидаете: всякий раз, когда изменяется
		поле формы, это событие срабатывает. Типовое поведение браузера не используется намерено,
		потому что <code>onChange</code> работает неправильно в отношении своего текущего поведения. React
		полагается на это событие, чтобы обрабатывать ввод пользователя в реальном времени.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.6 selected</b></wg:head>

	<wg:p>Атрибут selected поддерживается компонентами <code>&lt;option&gt;</code>. Вы можете использовать его,
		чтобы установить, выбран ли компонент. Это полезно для создания контролируемых компонентов.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.7 style</b></wg:head>

	<wg:p>Атрибут <code>style</code> принимает объект JavaScript с свойствами в «верблюжбей нотации», а
		строкой CSS. Это соответствует DOM JavaScript свойству <code>style</code>, является более
		эффективным и предотвращает дыры в безопасности XSS. Например:</wg:p>

	<ce:code-example-2/>

	<wg:p>Обратите внимание, что к стилям префиксы автоматически не добавляются. Чтобы поддерживать
		старые браузеры, вам необходимо предоставить соответствующие свойства стиля:</wg:p>

	<ce:code-example-3/>

	<wg:p>Свойства стиля записываются в «верблюжьей нотации», чтобы быть совместимыми с
		доступом к аналогичным свойствам на узлах DOM из JS (например, <code>node.style.backgroundImage</code>).
		Префиксы поставщиков, отличные от <code>ms</code>, начинаются с заглавной буквы. Вот почему
		<code>WebkitTransition</code> имеет заглавную букву «W».</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.8 suppressContentEditableWarning</b></wg:head>

	<wg:p>Обычно, когда элемент с потомками помечен как <code>contentEditable</code>, появляется
		предупреждение, так как он не будет работать. Данный атрибут подавляет это
		предупреждение. Не используйте это, если вы не создаете библиотеку, например
		<code>Draft.js</code>, которая управляет <code>contentEditable</code> вручную.</wg:p>

	<br/>
	<wg:head size="5"><b>4.5.1.9 value</b></wg:head>

	<wg:p>Атрибут <code>value</code> поддерживается компонентами <code>&lt;input&gt;</code> и <code>&lt;textarea&gt;</code>. Вы можете
		использовать его для установки значения компонента. Это полезно для создания
		контролируемых компонентов. <code>defaultValue</code> - это неконтролируемый эквивалент,
		который устанавливает значение компонента, когда он монтируется первый раз.</wg:p>

	<br/>
	<wg:head size="4"><b>4.5.2 Все поддерживаемые HTML атрибуты</b></wg:head>

	<wg:p>React поддерживает все атрибуты <code>data-*</code> и <code>aria-*</code>, а также эти атрибуты:</wg:p>

	<ce:code-example-4/>

	<wg:p>Эти RDFa атрибуты также поддерживаются (несколько атрибутов
		RDFa перекрываются со стандартными атрибутами HTML и поэтому исключены из этого списка):</wg:p>

	<ce:code-example-5/>

	<wg:p>Кроме того, поддерживаются следующие нестандартные атрибуты:</wg:p>

	<wg:p>
		<ul>
			<li><code>autoCapitalize autoCorrect</code> для Mobile Safari.</li>
			<li><code>color</code> для <code>&lt;link rel="mask-icon" /&gt;</code> в Safari.</li>
			<li><code>itemProp itemScope itemType itemRef itemID</code> для <wg:link href="http://schema.org/docs/gs.html">HTML5 microdata</wg:link>.</li>
			<li><code>security</code> для более старых версий Internet Explorer.</li>
			<li><code>unselectable</code> для Internet Explorer.</li>
			<li><code>results autoSave</code> для полей ввода WebKit / Blink типа <code>search</code>.</li>
		</ul>
	</wg:p>

	<br/>
	<wg:head size="4"><b>4.5.3 Все поддерживаемые SVG атрибуты</b></wg:head>

	<wg:p>React поддерживает следующие атрибуты SVG:</wg:p>

	<ce:code-example-6/>

</lt:layout>