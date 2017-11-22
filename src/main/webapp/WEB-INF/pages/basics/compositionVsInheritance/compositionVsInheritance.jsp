<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/composition-vs-inheritance" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>2.12	Композиция вместо наследования</h1>

	<wg:p>React имеет мощную модель композиции, и мы рекомендуем использовать композицию вместо
		наследования для повторного использования кода между компонентами.</wg:p>

	<wg:p>В этом разделе мы рассмотрим несколько проблем, когда разработчики, являющиеся новичками
		в React, часто стремятся к наследованию, и покажем, как мы можем решить их с помощью композиции.</wg:p>

	<br/>
	<h2>2.12.1	Вмещаемость</h2>

	<wg:p>Некоторые компоненты могут не знать заранее о своих потомках. Это особенно характерно для таких
		компонентов, как боковое меню (<code>Sidebar</code>) или диалог (<code>Dialog</code>), которые представляют
		собой общие контейнеры.</wg:p>

	<wg:p>Рекомендуется, чтобы такие компоненты использовали специальное свойство <code>children</code>,
		чтобы передавать дочерние элементы непосредственно в их результирующий вывод:</wg:p>

	<ce:code-example-1/>

	<wg:p>Это позволяет другим компонентам передавать произвольные потомки, используя JSX вложение:</wg:p>

	<ce:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/mwpyWr?editors=0110"/>

	<wg:p>Все, что находится внутри JSX тега <code>&lt;SuccessMessage&gt;</code>, передается в компонент
		<code>MessageContent</code> как свойство <code>children</code>. Поскольку MessageContent отрисовывает
		<code>{props.children}</code> внутри <code>&lt;p&gt;</code>, в результирующем выводе отображаются
		все переданные элементы.</wg:p>

	<wg:p>Хотя это и менее распространено, иногда вам может понадобиться несколько «точек крепления»
		элементов в компоненте. В таких случаях вы можете придумать свое собственное соглашение и
		не использовать <code>children</code>:</wg:p>

	<ce:code-example-3 codePenUrl="https://codepen.io/stzidane/pen/eRyNRp?editors=0110"/>

	<wg:p>Элементы React, такие как <code>&lt;NavButtons /&gt;</code> и <code>&lt;BackButton /&gt;</code>, - являются
		обычными объектами, поэтому вы можете передавать их как свойства компонентов, как и любые другие данные.</wg:p>

	<br/>
	<h2>2.12.2	Специализация</h2>

	<wg:p>Иногда мы рассматриваем компоненты как «<b>частные случаи</b>» других компонентов.
		Например, мы можем сказать, что <code>SuccessMessage</code> - это частный случай <code>Message</code>.</wg:p>

	<wg:p>В React это достигается композицией, где более «<b>конкретный</b>» компонент отображает более
		«<b>общий</b>» и настраивает его с помощью свойства:</wg:p>

	<ce:code-example-4/>

	<wg:p>Композиция работает одинаково хорошо для компонентов, определенных как классы.</wg:p>

	<br/>
	<h2>2.12.3 Что насчет наследования?</h2>

	<wg:p>В Facebook React используется в тысячах компонентов, но не было обнаружено
		каких-либо ситуаций, где разработчики рекомендовали бы создавать иерархии наследования компонентов.</wg:p>

	<wg:p>Свойства <code>props</code> и композиция дают вам всю необходимую вам гибкость, чтобы индивидуально
		подобрать внешний вид и поведение компонента. Помните, что компоненты могут принимать произвольные
		свойства, включая примитивные значения, элементы React или функции.</wg:p>

	<wg:p>Если вы хотите повторно использовать функциональность, не относящуюся к UI, между компонентами,
		предлагается извлечь её в отдельный модуль JavaScript. Компоненты могут импортировать его и
		использовать эту функциональность (а также объект или класс), не расширяя её.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="lifting-state-up"/>
<c:url var="nextPageUrl" value="/core/topics"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
									 pageStartAncor="pageStart"
									 nextPageUrl="${nextPageUrl}"/>