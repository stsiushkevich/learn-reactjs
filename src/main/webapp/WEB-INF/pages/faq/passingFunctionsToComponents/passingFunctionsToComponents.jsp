<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/passing-functions-to-components" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="postUrl" value="https://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/"/>
<c:url var="throttleUrl" value="https://lodash.com/docs/4.17.11#throttle"/>
<c:url var="debounceUrl" value="https://lodash.com/docs/4.17.11#debounce"/>
<c:url var="requestAnimationFrameUrl" value="https://developer.mozilla.org/en-US/docs/Web/API/window/requestAnimationFrame"/>
<c:url var="rafSchdUrl" value="https://github.com/alexreardon/raf-schd"/>
<c:url var="demoUrl" value="http://demo.nimius.net/debounce_throttle/"/>
<c:url var="eventPoolUrl" value="/reference/synthetic-event#event-pool"/>
<c:url var="scrollUrl" value="https://developer.mozilla.org/en-US/docs/Web/Events/scroll"/>
<c:url var="jestjsUrl" value="https://jestjs.io/"/>
<c:url var="timerMocksUrl" value="https://jestjs.io/docs/en/timer-mocks.html"/>
<c:url var="rafStubUrl" value="https://github.com/alexreardon/raf-stub"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
	<h1>Передача функций в компоненты</h1>
	
	<br/>
	<h3>Как передать обработчик события (например, onClick) компоненту?</h3>
	
	<p>
		Передавайте обработчики событий и другие функции дочерним компонентам как <code>props</code>:
	</p>
	
	<ce:code-example-1/>
	
	<p>
		Если вам нужен доступ к родительскому компоненту в обработчике, то
		необходимо привязать функцию к экземпляру компонента (см. ниже).
	</p>
	
	<br/>
	<h3>Как привязать функцию к экземпляру компонента?</h3>
	
	<p>
		Существует несколько способов удостовериться, что функции имеют доступ к
		атрибутам компонента, таким как <code>this.props</code> и <code>this.state</code>, в зависимости от того,
		какой синтаксис и шаги сборки вы используете.
	</p>
	
	<br/>
	
	<h4>Привязка в конструкторе (ES2015)</h4>
	
	<ce:code-example-2/>
	
	<h4>Свойства класса</h4>
	
	<ce:code-example-3/>
	
	<h4>Привязка в методе render</h4>
	
	<ce:code-example-4/>
	
	<app:alert title="Внимание!" type="warning">
		Использование <code>Function.prototype.bind</code> в render создает новую функцию каждый раз при
		отрисовке компонента, что может влиять на производительность (см. ниже).
	</app:alert>
	
	<h4>Стрелочная функция  в методе render</h4>
	
	<ce:code-example-5/>
	
	<app:alert title="Внимание!" type="warning">
		Использование стрелочной функции в <code>render</code> создает новую функцию каждый раз при отрисовке компонента,
		что может влиять на производительность (см. ниже).
	</app:alert>
	
	<br/>
	<h3>Можно ли использовать стрелочные функции в методе render?</h3>
	
	<p>
		В общем, да, это нормально, и часто это самый простой способ
		передать параметры в функции-коллбэки.
	</p>
	
	<p>
		Но если у вас появились проблемы с производительностью,
		обязательно произведите оптимизацию!
	</p>
	
	<br/>
	<h3>Зачем вообще нужна привязка?</h3>
	
	<p>
		В JavaScript эти два фрагмента кода не эквивалентны:
	</p>
	
	<ce:code-example-6/>
	<ce:code-example-7/>
	
	<p>
		Привязка гарантирует, что второй фрагмент работает так же, как и первый.
	</p>
	
	<p>
		Обычно в React вам нужно привязать лишь методы, которые вы передаете
		другим компонентам. Например, здесь <code>&lt;button onClick = {this.handleClick}&gt;</code>
		метод <code>this.handleClick</code> передается в компонент <code>button</code>,
		поэтому вам следует привязать этот метод. Однако не следует привязывать метод <code>render</code> или
		методы жизненного цикла: мы не передаем их другим компонентам.
	</p>
	
	<p>
		Данный <b><a href="${postUrl}">пост от Yehuda Katz</a></b> подробно объясняет, что такое
		привязка и как функции работают в JavaScript.
	</p>
	
	<br/>
	<h3>Почему моя функция вызывается каждый раз, когда отрисовывается компонент?</h3>
	
	<p>
		Убедитесь, что вы не вызываете функцию при передаче ее компоненту:
	</p>
	
	<ce:code-example-8/>
	
	<p>Вместо этого передайте саму функцию:</p>
	
	<ce:code-example-9/>
	
	<br/>
	<h3>Как передать параметр в обработчик событий или коллбэк?</h3>
	
	<p>Вы можете использовать стрелочную функцию, чтобы обернуть
		обработчик события и передать параметры:</p>
	
	<ce:code-example-10/>
	
	<p>Эквивалент с <code>.bind</code>:</p>
	
	<ce:code-example-11/>
	
	<br/>
	<h4>Пример: передача параметров с использованием стрелочных функций</h4>
	
	<ce:code-example-12/>
	
	<br/>
	<h4>Пример: передача параметров с использованием атрибутов <code>data-</code></h4>
	
	<p>
		В качестве альтернативного подхода вы можете использовать DOM API для хранения данных,
		необходимых для обработчиков событий. Рассмотрите данный подход, если вам нужно оптимизировать
		большое количество элементов или иметь отображаемое дерево, которое использует проверки на
		равенство компонента <code>React.PureComponent</code>.
	</p>
	
	<ce:code-example-13/>
	
	<br/>
	<h3>Как предотвратить вызов функции слишком быстро или много раз подряд?</h3>
	
	<p>
		Если у вас есть обработчик событий, например <code>onClick</code> или <code>onScroll</code>, и вы хотите
		предотвратить слишком быстрое срабатывание коллбэка, вы можете ограничить скорость
		выполнения коллбэка. Это можно сделать с помощью:
	</p>
	
	<ul>
		<li>
			<p>
				<b>throttling</b>: производит изменения в зависимости от частоты,
				основанной на времени (<b><a href="${throttleUrl}">_.throttle</a></b>)
			</p>
		</li>
		
		<li>
			<p>
				<b>debouncing</b>: публикует изменения после периода бездействия (<b><a href="${debounceUrl}">_.debounce</a></b>)
			</p>
		</li>
		
		<li>
			<p>
				<b>requestAnimationFrame throttling</b>: производит изменения основываясь
				на <b><a href="${requestAnimationFrameUrl}">requestAnimationFrame</a></b> (<b><a href="${rafSchdUrl}">raf-schd</a></b>)
			</p>
		</li>
		
	</ul>
	
	<p>Посмотрите на <b><a href="${demoUrl}">данную визуализацию</a></b> для сравнения функций
		<code>throttle</code> и <code>debounce</code>.</p>
	
	<app:alert title="Внимание!" type="warning">
		<code>_.debounce</code>, <code>_.throttle</code> и <code>raf-schd</code> предоставляют метод <code>cancel</code> для отмены
		отложенных коллбэков. Вы должны либо вызвать этот метод из <code>componentWillUnmount</code>, либо проверить,
		чтобы компонент был по-прежнему вмонтирован в дерево во время нахождения функции в отложенном состоянии.
	</app:alert>
	
	<br/>
	<h4>Throttle</h4>
	
	<p>
		Throttling не позволяет вызывать функцию более одного раза в течение определенного
		промежутка времени. Приведенный ниже пример задерживает обработчик «click», чтобы не
		вызывать его чаще, чем раз в секунду.
	</p>
	
	<ce:code-example-14/>
	
	<br/>
	<h4>Debounce</h4>
	
	<p>
		Debouncing гарантирует, что функция не будет выполняться до тех пор, пока не пройдет
		определенный промежуток времени с момента ее последнего вызова. Это может быть полезно,
		когда вам нужно выполнить дорогостоящий расчет в ответ на событие, которое может быстро
		повториться (например, события прокрутки или клавиатуры). Пример ниже производит
		ввод текста с задержкой 250 мс.
	</p>
	
	<ce:code-example-15/>
	
	<br/>
	<h4>requestAnimationFrame throttling</h4>
	
	<p>
		<code>requestAnimationFrame</code> - это способ поставить в очередь функцию, которая будет
		выполнена в браузере в оптимальное время для минимизации влияния на производительность
		отрисовки. Функция, поставленная в очередь с помощью <code>requestAnimationFrame</code>, сработает в
		следующем кадре. Браузер будет усердно работать, чтобы обеспечить 60 кадров в секунду (60 fps).
	</p>
	
	<p>
		Однако, если браузер не в состоянии, он естественным образом ограничит fps. Например,
		если устройство имеет 30 fps, вы получите от браузера только 30 кадров в секунду.
	</p>
	
	<p>
		Использование <code>requestAnimationFrame</code> является полезным методом, поскольку он не позволяет
		выполнять более 60 обновлений в секунду. Если вы делаете 100 обновлений в секунду, это
		создает дополнительную работу для браузера, но пользователь все равно это не заметит.
	</p>
	
	<app:alert title="Внимание!" type="warning">
		Использование этого метода будет захватывать в кадр только последнее опубликованное значение.
		Вы можете увидеть пример того, как эта оптимизация работает на <b><a href="${scrollUrl}">MDN</a></b>.
	</app:alert>
	
	<ce:code-example-16/>
	
	<br/>
	<h4>Тестирование вашего ограничения скорости</h4>
	
	<p>
		Когда тестирование вашего кода ограничения скорости работает правильно,
		полезно иметь возможность быстрой перемотки времени. Если вы используете <b><a href="${jestjsUrl}">jest</a></b>, вы можете
		использовать <b><a href="${timerMocksUrl}">mock timers</a></b>. Если вы используете
		<code>requestAnimationFrame</code>, то <b><a href="${rafStubUrl}">raf-stab</a></b> может
		оказаться для вас полезным инструментом для управления сменой кадров анимации.
	</p>
	
	<%--
	<ul>
		<li>
			<p>
			
			</p>
		</li>
	</ul>
	--%>
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>

</div>

<c:url var="prevPageUrl" value="babel-and-jsx"/>
<c:url var="nextPageUrl" value="component-state"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>