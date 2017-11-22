<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/dom-elements" %>

<c:url var="cssPropsUrl" value="https://github.com/facebook/react/blob/4131af3e4bf52f3a003537ec95a1655147c81270/src/renderers/dom/shared/CSSProperty.js#L15-L59"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>4.5 DOM Elements</h1>

	<wg:p>React реализует независимую от браузера DOM-систему для повышения
		производительности и кросс-браузерной совместимости. Разработчики воспользовались
		возможностью избавиться от нескольких «шераховатостей» в браузерных реализациях DOM.</wg:p>

	<wg:p>В React все свойства и атрибуты DOM (включая обработчики событий) должны
		быть в верблюжьей нотации. Например, атрибут <code>tabindex</code> HTML соответствует атрибуту
		<code>tabIndex</code> в React. Исключение составляют атрибуты <code>aria-*</code> и <code>data-*</code>, которые
		должны быть в нижнем регистре. Например, вы можете оставить <code>aria-label</code> как <code>aria-label</code>.</wg:p>

	<br/>
	<h2>4.5.1 Отличия в атрибутах</h2>

	<wg:p>Существует ряд атрибутов, которые работают по-разному в React и HTML:</wg:p>

	<br/>
	<h3>4.5.1.1 checked</h3>

	<wg:p>Aтрибут <code>checked</code> поддерживается <code>&lt;input&gt;</code> компонентами типа
		<code>checkbox</code> или <code>radio</code>. Вы можете использовать его, чтобы
		установить, выбран ли компонент. Это полезно для создания контролируемых компонентов.
		<code>defaultChecked</code> - это неконтролируемый эквивалент, который устанавливает,
		выбран ли компонент, когда он впервые монтирован.</wg:p>

	<br/>
	<h3>4.5.1.2 className</h3>

	<wg:p>Чтобы указать класс CSS, используйте атрибут <code>className</code>. Это относится ко
		всем обычным элементам DOM и SVG, таким как <code>&lt;div&gt;</code>, <code>&lt;a&gt;</code> и другие.</wg:p>

	<wg:p>Если вы используете React с веб-компонентами (что не типично),
		используйте вместо этого атрибут <code>class</code>.</wg:p>

	<br/>
	<h3>4.5.1.3 dangerouslySetInnerHTML</h3>

	<wg:p><code>dangerouslySetInnerHTML</code> - это React аналог использования <code>innerHTML</code> в DOM браузера.
		Как правило, установка HTML из кода является рискованным, так как можно легко непреднамеренно
		подвергнуть ваших пользователей атаке межсайтового скриптинга (XSS). Таким образом, вы можете
		установить HTML непосредственно из React. Для этого вам нужно использовать
		<code>dangerouslySetInnerHTML</code> и передать объект с помощью <code>__html</code>-ключа, чтобы напомнить
		самому себе, что это небезопасно. Например:</wg:p>

	<ce:code-example-1/>

	<br/>
	<h3>4.5.1.4 htmlFor</h3>

	<wg:p>Поскольку <code>for</code> является зарезервированным словом в JavaScript, вместо него элементы
		React используют <code>htmlFor</code>.</wg:p>

	<br/>
	<h2>4.5.1.5 onChange</h2>

	<wg:p>Событие <code>onChange</code> ведет себя так, как вы ожидаете: всякий раз, когда изменяется
		поле формы, это событие срабатывает. Типовое поведение браузера не используется намерено,
		потому что <code>onChange</code> работает неправильно в отношении своего текущего поведения. React
		полагается на это событие, чтобы обрабатывать ввод пользователя в реальном времени.</wg:p>

	<br/>
	<h3>4.5.1.6 selected</h3>

	<wg:p>Атрибут selected поддерживается компонентами <code>&lt;option&gt;</code>. Вы можете использовать его,
		чтобы установить, выбран ли компонент. Это полезно для создания контролируемых компонентов.</wg:p>

	<br/>
	<h3>4.5.1.7 style</h3>

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

	<wg:p>Начиная с React 16 автоматически к определенным встроенным свойствам стиля
		добавится суффикс <code>px</code>. Например:</wg:p>

	<wg:p>Однако не все свойства стиля преобразуются в пиксельные строки. Некоторые из них
		остаются безразмерными (например, <code>zoom</code>, <code>order</code>, <code>flex</code>).
		<wg:link href="${cssPropsUrl}">Здесь</wg:link> можно увидеть полный список безразмерных свойств.</wg:p>

	<ce:code-example-3.5/>

	<br/>
	<h3>4.5.1.8 suppressContentEditableWarning</h3>

	<wg:p>Обычно, когда элемент с потомками помечен как <code>contentEditable</code>, появляется
		предупреждение, так как он не будет работать. Данный атрибут подавляет это
		предупреждение. Не используйте это, если вы не создаете библиотеку, например
		<code>Draft.js</code>, которая управляет <code>contentEditable</code> вручную.</wg:p>

	<br/>
	<h3>4.5.1.9 value</h3>

	<wg:p>Атрибут <code>value</code> поддерживается компонентами <code>&lt;input&gt;</code> и <code>&lt;textarea&gt;</code>. Вы можете
		использовать его для установки значения компонента. Это полезно для создания
		контролируемых компонентов. <code>defaultValue</code> - это неконтролируемый эквивалент,
		который устанавливает значение компонента, когда он монтируется первый раз.</wg:p>

	<br/>
	<h2>4.5.2 Все поддерживаемые HTML атрибуты</h2>

	<wg:p>Начиная с версии React 16, полностью поддерживаются все стандартные и пользовательские
		атрибуты DOM.</wg:p>

	<wg:p>React всегда предоставлял JavaScript-ориентированный API для DOM.
		Поскольку компоненты React часто принимают как пользовательские, так и связанные
		с DOM свойства, React использует верблюжью нотацию так же, как DOM API:</wg:p>

	<ce:code-example-3.6/>

	<wg:p>Эти свойства работают аналогично соответствующим HTML-атрибутам,
		за исключением особых случаев, описанных выше.</wg:p>

	<wg:p>Атрибуты DOM, поддерживаемые React:</wg:p>

	<ce:code-example-4/>

	<wg:p>В версиях меньше 16, поддерживаются следующие RDFa атрибуты (несколько атрибутов
		RDFa перекрываются со стандартными атрибутами HTML и поэтому исключены из этого списка):</wg:p>

	<ce:code-example-5/>

	<wg:p>В версиях меньше 16, поддерживаются следующие нестандартные атрибуты:</wg:p>

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
	<h2>4.5.3 Все поддерживаемые SVG атрибуты</h2>

	<wg:p>React поддерживает следующие атрибуты SVG:</wg:p>

	<ce:code-example-6/>

</lt:layout>

<c:url var="prevPageUrl" value="react-dom-server"/>
<c:url var="nextPageUrl" value="synthetic-event"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>