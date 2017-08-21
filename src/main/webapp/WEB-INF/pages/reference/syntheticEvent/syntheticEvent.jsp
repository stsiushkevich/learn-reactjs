<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/synthetic-event" %>

<lt:layout cssClass="page hello-world-example-page">
	<h1>4.6 SyntheticEvent</h1>

	<wg:p>Данное справочное руководство описывает оболочку <code>SyntheticEvent</code>, которая является
		частью системы событий React. Дополнительную информацию см. в руководстве
		«<wg:link href="">обработка событий</wg:link>».</wg:p>

	<br/>
	<h2>4.6.1 Обзор</h2>

	<wg:p>Вашим обработчикам событий будут переданы экземпляры <code>SyntheticEvent</code>,
		который является кросс-браузерной оболочкой вокруг нативного события браузера.
		Он имеет тот же интерфейс, что и нативное событие браузера, включая методы
		<code>stopPropagation()</code> и <code>preventDefault()</code>, и имеет отличие в том, что  работает
		одинаково во всех браузерах.</wg:p>

	<wg:p>Если вы обнаружите, что по какой-то причине вам нужно базовое событие браузера,
		чтобы получить его, просто используйте атрибут <code>nativeEvent</code>. Каждый
		объект <code>SyntheticEvent</code> имеет следующие атрибуты:</wg:p>

	<ce:code-example-1/>

	<app:alert type="warning" title="Замечание.">
		Начиная с версии v0.14, возврат <code>false</code> из обработчика события больше не
		предотвращает распространение события. Вместо этого, если необходимо,
		следует запускать вручную <code>e.stopPropagation()</code> или <code>e.preventDefault()</code>.
	</app:alert>

	<br/>
	<h3>4.5.4.2 Пул событий</h3>

	<wg:p><code>SyntheticEvent</code> помещается в пул. Это означает, что объект <code>SyntheticEvent</code>
		будет повторно использован, и все свойства будут аннулированы после того,
		как отработает коллбэк-обработчик события. Это сделано из соображений
		производительности. Таким образом, вы не можете получить доступ к
		событию асинхронным способом.</wg:p>

	<ce:code-example-2/>

	<app:alert type="warning" title="Замечание.">
		Если вы хотите получить доступ к свойствам событий асинхронным способом,
		вы должны вызвать <code>event.persist()</code> на событии, что приведет к удалению
		синтетического события из пула и позволит ссылке на событие быть
		сохраненной пользовательским кодом.
	</app:alert>

	<br/>
	<h2>4.5.5 Поддерживаемые события</h2>

	<wg:p>React нормализует события, чтобы они имели согласованные свойства в разных браузерах.</wg:p>

	<wg:p>Обработчики событий, приведенные ниже, срабатывают по событию в фазе
		всплытия. Чтобы зарегистрировать обработчик событий для фазы захвата,
		добавьте <code>Capture</code> в имя события. Например, вместо использования <code>onClick</code>
		вы должны использовать <code>onClickCapture</code> для обработки события <code>click</code> в фазе захвата.</wg:p>

	<wg:p>
		<ul>
			<li>Clipboard Events</li>
			<li>Composition Events</li>
			<li>Keyboard Events</li>
			<li>Focus Events</li>
			<li>Form Events</li>
			<li>Mouse Events</li>
			<li>Selection Events</li>
			<li>Touch Events</li>
			<li>UI Events</li>
			<li>Wheel Events</li>
			<li>Media Events</li>
			<li>Image Events</li>
			<li>Animation Events</li>
			<li>Transition Events</li>
		</ul>
	</wg:p>

	<br/>
	<h2>4.5.6 Справка</h2>

	<br/>
	<h3>4.6.3.1 События буфера обмена</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-3/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-4/>

	<br/>
	<h3>4.6.3.2 События композиции</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-5/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-6/>

	<br/>
	<h3>4.6.3.3 События клавиатуры</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-7/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-8/>

	<br/>
	<h3>4.6.3.4	События фокуса</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-9/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-10/>

	<br/>
	<h3>4.6.3.5 События формы</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-11/>

	<br/>
	<h3>4.6.3.6 События мыши</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-12/>

	<wg:p>События <code>onMouseEnter</code> и <code>onMouseLeave</code> распространяются от элемента,
		с которого ушла мышь к элементу, на который она навелась, вместо
		обычного всплытия и не имеют фазы захвата.</wg:p>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-13/>

	<br/>
	<h3>4.6.3.7 События выбора</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-14/>

	<br/>
	<h3>4.6.3.8 События касания</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-15/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-16/>

	<br/>
	<h3>4.6.3.9 События UI</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-17/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-18/>

	<br/>
	<h3>4.6.3.10	События колеса прокрутки</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-19/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-20/>

	<br/>
	<h3>4.6.3.11	События медиа</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-21/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-22/>

	<br/>
	<h3>4.6.3.12	События изображения</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-23/>

	<br/>
	<h3>4.6.3.13	События анимации</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-24/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-25/>

	<br/>
	<h3>4.6.3.14	События перехода</h3>

	<wg:p>Имена событий:</wg:p>

	<ce:code-example-26/>

	<wg:p>Свойства:</wg:p>

	<ce:code-example-27/>
</lt:layout>