<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/shallow-renderer" %>

<a name="pageStart"></a>
<lt:layout cssClass="page hello-world-example-page">
	<h1>4.8 Поверхностная отрисовка</h1>

	<wg:p>Импорт:</wg:p>

	<ce:code-example-1/>

	<br/>
	<h2>4.8.1 Обзор</h2>

	<wg:p>При написании модульных тестов для React может оказаться полезным
		поверхностная(неглубокая) отрисовка. Неглубокая отрисовка позволяет отрисовать
		компонент «на один уровень глубины» и утверждать то, что возвращает его метод
		отрисовки, не беспокоясь о поведении дочерних компонентов, которые не создаются
		или не отображаются. Это не требует DOM.</wg:p>

	<wg:p>Например, если у вас есть следующий компонент:</wg:p>

	<ce:code-example-2/>

	<wg:p>То вы можете утверждать:</wg:p>

	<ce:code-example-3/>

	<wg:p>В настоящее время неглубокое тестирование имеет некоторые
		ограничения: оно не поддерживает ссылки.</wg:p>

	<app:alert title="Замечание." type="warning">
		Мы также рекомендуем посмотреть
		<wg:link href="http://airbnb.io/enzyme/docs/api/shallow.html">Shallow Rendering API</wg:link>. Он обеспечивает более
		удобный высокоуровневый API с той же функциональностью.
	</app:alert>

	<br/>
	<h2>4.8.2 Справка</h2>

	<rf:definition title="shallowRenderer.render()">
		<wg:p>Вы можете подумать о <code>shallowRenderer</code> как о «месте» для отрисовки компонента, который вы
			тестируете, и из которого вы можете извлечь результат вывода этого компонента.</wg:p>

		<wg:p><code>shallowRenderer.render()</code> похож на <code>ReactDOM.render()</code>, но он не требует DOM и
			отрисовывает только один уровень глубины. Это означает, что вы можете тестировать
			компоненты, независимо от того, каким образом реализованы их потомки.</wg:p>
	</rf:definition>

	<rf:definition title="shallowRenderer.getRenderOutput()">
		<wg:p>После вызова функции <code>shallowRenderer.render()</code> вы можете использовать
			<code>shallowRenderer.getRenderOutput()</code>, чтобы получить неглубоко отрисованный вывод.</wg:p>

		<wg:p>Затем вы можете начать утверждать факты о выводе.</wg:p>
	</rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="test-utilities"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"/>