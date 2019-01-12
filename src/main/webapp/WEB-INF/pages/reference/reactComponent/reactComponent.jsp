<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react-component" %>

<c:url var="componentsAndPropsUrl" value="/basics/components-and-props"/>
<c:url var="stateAndLifecycleUrl" value="/basics/state-and-lifecycle"/>
<c:url var="compositionVsInheritanceUrl" value="/basics/composition-vs-inheritance"/>
<c:url var="reactWithoutES6Url" value="/core/react-without-es6"/>
<c:url var="lifecycleDiagramUrl" value="http://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/"/>
<c:url var="fragmentsUrl" value="/core/fragments"/>
<c:url var="handlingEventsUrl" value="/basics/handling-events"/>
<c:url var="fullyUncontrolledComponentUrl" value="/updates/derived-state-necessity#fully-uncontrolled-component"/>
<c:url var="derivedStateNecessityUrl" value="/updates/derived-state-necessity"/>
<c:url var="optimizingPerformanceUrl" value="/core/optimizing-performance"/>
<c:url var="derivedStateNecessity1Url" value="/updates/derived-state-necessity#1"/>
<c:url var="derivedStateNecessity4Url" value="/updates/derived-state-necessity#4"/>
<c:url var="fullyControlledComponentUrl" value="/updates/derived-state-necessity#fully-controlled-component"/>
<c:url var="errorBoundariesUrl" value="/core/error-boundaries"/>
<c:url var="errorStackTraceUrl" value="/core/error-boundaries#stack-trace"/>
<c:url var="asyncRenderingUrl" value="/updates/update-on-async-rendering"/>
<c:url var="codemodUrl" value="https://github.com/reactjs/react-codemod#rename-unsafe-lifecycles"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
	<h1>4.2 React.Component</h1>
	
	<br/>
	
	<p class="introduction">
		Данный раздел содержит подробную справку по API для компонента-класса
		React. Предполагается, что вы знакомы с основными понятиями React,
		такими как <b><a href="${componentsAndPropsUrl}">компоненты и свойства</a></b>,
		<b><a href="${stateAndLifecycleUrl}">состояние и жизненный цикл</a></b>. Если
		нет, сперва ознакомьтесь с ними.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>4.2.1 Обзор</h2>
	<br/>
	
	<p>
		React позволяет вам определять компоненты как классы или функции.
		Компоненты, определенные как классы, в настоящее время предоставляют
		больше возможностей, которые подробно описаны в этом разделе. Чтобы
		определить класс компонента React, вам нужно расширить <code>React.Component</code>:
	</p>
	
	<ce:code-example-1/>
	
	<p>
		Единственный метод, который вы должны определить в подклассе <code>React.Component</code>,
		называется <code>render()</code>. Все остальные методы, описанные в этом разделе,
		являются необязательными.
	</p>
	
	<p>
		<b>Мы настоятельно рекомендуем не создавать свои собственные базовые классы компонентов.</b>
		В компонентах React повторное использование кода приемущественно достигается с помощью
		<b><a href="${compositionVsInheritanceUrl}">композиции, а не наследования</a></b>.
	</p>
	
	<app:alert title="Внимание!" type="warning">
		React не принуждает вас использовать синтаксис классов ES6. Если вы
		предпочитаете избегать его, то можете использовать модуль
		<code>create-react-class</code> или аналогичную пользовательскую абстракцию.
		Изучите раздел "<b><a href="${reactWithoutES6Url}">React без ES6</a></b>", чтобы узнать больше.
	</app:alert>
	
	<br/>
	<h3>4.2.1.1 Жизненный цикл компонента</h3>
	
	<wg:p>Каждый компонент имеет несколько «методов жизненного цикла», которые
		вы можете переопределить для запуска кода в определенное время в процессе
		работы приложения. <b>Вы можете использовать <b><a href="${lifecycleDiagramUrl}">эту
			диаграмму жизненного цикла</a></b> как шпаргалку</b>. В приведенном ниже списке часто
		используемые методы жизненного цикла отмечены <b>жирным шрифтом</b>. Остальные
		из существуют для относительно редких случаев использования.</wg:p>
	
	<br/>
	<h4>4.2.1.1.1 Монтирование</h4>
	
	<wg:p>Эти методы вызываются в следующем порядке, когда
		экземпляр компонента создается и вставляется в DOM:</wg:p>
	
	<wg:p>
		<ul>
			<li><p><b><a href="#constructor">constructor()</a></b></p></li>
			<li><p><a href="#get-derived-state-from-props">static getDerivedStateFromProps()</a></p></li>
			<li><p><b><a href="#render">render()</a></b></p></li>
			<li><p><b><a href="#component-did-mount">componentDidMount()</a></b></p></li>
		</ul>
	</wg:p>
	
	<app:alert title="Внимание!" type="warning">
		Эти методы считаются устаревшими, и вам следует избегать их в новом коде:
		<br/>
		<br/>
		<ul>
			<li><p><a href="#unsafe-component-will-mount">UNSAFE_componentWillMount()</a></p></li>
		</ul>
	</app:alert>
	
	<br/>
	<h4>4.2.1.1.2 Обновление</h4>
	
	<wg:p>Обновление может быть вызвано изменениями свойств или состояния.
		Эти методы вызываются в следующем порядке, когда компонент перерисовывается:</wg:p>
	
	<ul>
		<li><p><a href="#get-derived-state-from-props">static getDerivedStateFromProps()</a></p></li>
		<li><p><a href="#should-component-update">shouldComponentUpdate()</a></p></li>
		<li><p><b><a href="#render">render()</a></b></p></li>
		<li><p><a href="#get-snapshot-before-update">getSnapshotBeforeUpdate()</a></p></li>
		<li><p><b><a href="#component-did-update">componentDidUpdate()</a></b></p></li>
	</ul>
	
	<app:alert title="Внимание!" type="warning">
		Эти методы считаются устаревшими, и вам следует избегать их в новом коде:
		<br/>
		<br/>
		<ul>
			<li><p><a href="#unsafe-component-will-update">UNSAFE_componentWillUpdate()</a></p></li>
			<li><p><a href="#unsafe-component-will-receive-props">UNSAFE_componentWillReceiveProps()</a></p></li>
		</ul>
	</app:alert>
	
	<br/>
	<h4>4.2.1.1.3 Демонтирование</h4>
	
	<wg:p>Этот метод вызывается, когда компонент удаляется из DOM:</wg:p>
	
	<wg:p>
		<ul>
			<li><b><a href="#component-will-unmount">componentWillUnmount()</a></b></li>
		</ul>
	</wg:p>
	
	<br/>
	<h4>4.2.1.1.4 Обработка ошибок</h4>
	
	<wg:p>Эти методы вызывается при возникновении ошибки во время отрисовки,
		в методе жизненного цикла или в конструкторе любого дочернего компонента.</wg:p>
	
	<wg:p>
		<ul>
			<li><a href="#get-derived-state-from-error">static getDerivedStateFromError()</a></li>
			<li><a href="#component-did-catch">componentDidCatch()</a></li>
		</ul>
	</wg:p>
	
	<br/>
	<h3>4.2.1.2 Другие API</h3>
	
	<wg:p>Каждый компонент также предоставляет некоторые другие API:</wg:p>
	
	<wg:p>
		<ul>
			<li><p><a href="#set-state">setState()</a></p></li>
			<li><p><a href="#force-update">forceUpdate()</a></p></li>
		</ul>
	</wg:p>
	
	<br/>
	<h3>4.2.1.3 Свойства класса</h3>
	
	<wg:p>
		<ul>
			<li><p><a href="#default-props">defaultProps</a></p></li>
			<li><p><a href="#display-name">displayName</a></p></li>
		</ul>
	</wg:p>
	
	<br/>
	<h3>4.2.1.4 Свойства экземпляра</h3>
	
	<wg:p>
		<ul>
			<li><p><a href="#props">props</a></p></li>
			<li><p><a href="#state">state</a></p></li>
		</ul>
	</wg:p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>4.2.2 Справка</h2>
	
	<br/>
	<h3>4.2.2.1 Часто используемые методы жизненного цикла</h3>
	<br/>
	
	<p>
		Методы, описанные в этом разделе, охватывают подавляющее большинство
		случаев, с которыми вы столкнетесь при создании компонентов React. Для
		наглядного ознакомления посмотрите <b><a href="${lifecycleDiagramUrl}">эту
		диаграмму жизненного цикла</a></b>.
	</p>
	
	<a name="render"></a>
	<rf:definition title="render()">
		<ce:code-example-2/>
		
		<wg:p>Метод <code>render()</code> является необходимым.</wg:p>
		
		<wg:p>При вызове он получает доступ к <code>this.props</code> и <code>this.state</code>. В версиях
			React <b>меньше 16</b> данный метод должен возвращать единственный элемент React,
			может являться либо представлением нативного DOM-компонента,
			например, <code>&lt;div /&gt;</code>, либо другого составного компонента, который вы определили сами.</wg:p>
		
		<wg:p>Вы также можете вернуть значение <code>null</code> или <code>false</code>, чтобы указать, что вы
			не хотите ничего отрисовывать.</wg:p>
		
		<wg:p><b>Начиная с 16 версии</b> React метод<code>render()</code> может вернуть один из следующих типов:</wg:p>
		
		<wg:p>
			<ul>
				<li><b>React-элемент</b>. Обычно создается через JSX и может быть либо представлением
					нативного DOM-компонента (<code>&lt;div /&gt;</code>), либо определяемого пользователем составного
					компонента (<code>&lt;MyComponent /&gt;</code>).
				</li>
				<li><b>Массивы и фрагменты</b>. Позволяют вам вернуть несколько элементов из <code>render</code>.
					Смотрите документацию по <b><a href="${fragmentsUrl}">фрагментам</a></b> для более подробной информации.
				</li>
				<li><b>Порталы</b>. Создаются с помощью <code>ReactDOM.createPortal</code>.</li>
				<li><b>Строки и числа</b>. Они отображаются как текстовые узлы в DOM.</li>
				<li><b>Boolean и null</b>. Ничего не отрисовывается. (Преимущественно существуют для
					поддержки <code>return test && &lt;Child /&gt;</code> паттерна, где <code>test</code> является
					логическим значением.)
				</li>
			</ul>
		</wg:p>
		
		<wg:p><b>Метод <code>render()</code> должен быть чистой функцией</b>, что означает:</wg:p>
		
		<wg:p>
			<ul>
				<li>он не изменяет состояние компонента</li>
				<li>возвращает один и тот же результат при каждом вызове</li>
				<li>не взаимодействует напрямую с браузером.</li>
			</ul>
		</wg:p>
		
		<wg:p>Если вам нужно взаимодействовать с браузером, вместо этого выполните
			свою работу в <code>componentDidMount()</code> или других методах жизненного цикла.
			Поддержание <code>render()</code> чистым делает компоненты более легкими для анализа. </wg:p>
		
		<app:alert type="warning" title="Внимание!">
			<code>render()</code> не будет вызываться, если <code>shouldComponentUpdate()</code> возвращает
			<code>false</code>.
		</app:alert>
	</rf:definition>
	
	<a name="constructor"></a>
	<rf:definition title="constructor()">
		<ce:code-example-3/>
		
		<p>
			<b>Если вы не инициализируете состояние и не привязываете методы, вам
				не нужно реализовывать конструктор для вашего компонента React.</b>
		</p>
		
		<wg:p>Конструктор компонента React вызывается до его монтирования.
			При реализации конструктора подкласса <code>React.Component</code> вы должны
			вызвать <code>super(props)</code> перед любым другим оператором. В противном
			случае <code>this.props</code> не будет определен в конструкторе, что может
			привести к ошибкам.</wg:p>
		
		<p>
			Как правило, в React конструкторы используются только для двух целей:
		</p>
		
		<ul>
			<li>
				<p>
					Инициализация <b><a href="${stateAndLifecycleUrl}">локального
					состояния</a></b> путем присвоения объекта <code>this.state</code>.
				</p>
			</li>
			<li>
				<p>
					Привязка <b><a href="${handlingEventsUrl}">методов-обработчиквов
					событий</a></b> к экземпляру.
				</p>
			</li>
		</ul>
		
		<p>
			Вы <b>не должны вызывать</b> <code>setState()</code> в <code>constructor()</code>. Вместо этого, если
			вашему компоненту нужно использовать локальное состояние, <b>присвойте начальное
			состояние</b> <code>this.state</code> непосредственно в конструкторе:
		</p>
		
		<ce:code-example-3.1/>
		
		<p>
			Конструктор - это единственное место, где вы должны назначить
			<code>this.state</code> напрямую. Во всех других методах вам нужно
			использовать <code>this.setState()</code>.
		</p>
		
		<wg:p>Избегайте каких-либо побочных эффектов или подписок
			в конструкторе. Для этих случаев используйте метод <code>componentDidMount()</code>.</wg:p>
		
		<app:alert title="Внимание!" type="warning">
			<p>
				<b>Избегайте копирования props в state! Это распространенная ошибка:</b>
			</p>
			
			<ce:code-example-4/>
			
			<p>
				Проблема заключается в том, что это копиравание не нужно
				(вместо этого можно использовать this.props.color напрямую). Также это
				создает ошибки (обновления свойства color не будут отражаться в состоянии).
			</p>
			
			<p>
				<b>Используйте этот шаблон, только если вы намеренно хотите игнорировать
					обновления props.</b> В этом случае имеет смысл переименовать свойство,
				чтобы оно называлось <code>initialColor</code> или <code>defaultColor</code>. Затем вы можете
				принудительно заставить компонент «сбросить» свое внутреннее состояние,
				<b><a href="${fullyUncontrolledComponentUrl}">изменяя значение этого ключа</a></b> при необходимости.
			</p>
			
			<p>
				Изучите <b><a href="${derivedStateNecessityUrl}">данный раздел</a></b> о том, как избежать использования
				производного
				состояния. В нем вы узнаете как поступить, если вы считаете, что вам
				нужно определенное состояние, зависящее от props.
			</p>
		</app:alert>
	</rf:definition>
	
	<a name="component-did-mount"></a>
	<rf:definition title="componentDidMount()">
		<ce:code-example-6/>
		
		<wg:p>
			<code>componentDidMount()</code> вызывается сразу после монтирования компонента.
			Инициализация, требующая доступа к узлам DOM, должна находиться здесь.
			Если вам нужно загружать данные с удаленного источника, это хорошее
			место для инициирования сетевого запроса.
		</wg:p>
		
		<wg:p>Этот метод является хорошим местом для добавления подписок. Если вы это
			сделаете, не забудьте удалить подписки в <code>componentWillUnmount()</code>.</wg:p>
		
		<wg:p>Вы <b>можете немедленно вызвать</b> <code>setState()</code> <b>в</b> <code>componentDidMount()</code>.
			Это вызовет дополнительную отрисовку, но она произойдет до того, как
			браузер обновит экран. Это гарантирует, что даже если <code>render()</code> будет
			вызываться дважды, пользователь не увидит промежуточное состояние.
			Используйте этот шаблон с осторожностью, поскольку он часто вызывает
			проблемы с производительностью. В большинстве случаев вы должны иметь
			возможность назначить начальное состояние в <code>constructor()</code>. Однако это
			может быть необходимо для случаев, таких как модальные окна и всплывающие
			подсказки, когда вам нужно измерить узел DOM перед отрисовкой чего-либо,
			что зависит от размера или положения этого узла.</wg:p>
	</rf:definition>
	
	<a name="component-did-update"></a>
	<rf:definition title="componentDidUpdate()">
		<ce:code-example-11/>
		
		<wg:p>
			<code>componentDidUpdate()</code> вызывается сразу после обновления. Этот метод не вызывается для первоначальной отрисовки.
		</wg:p>
		
		<wg:p>
			Используйте его как возможность работать с DOM сразу после того, как компонент
			был обновлён. Это также хорошее место для выполнения сетевых запросов, при условии
			что вы сравниваете текущие свойства с предыдущими свойствами (например,
			сетевой запрос может не понадобиться, если свойства не изменились).
		</wg:p>
		
		<ce:code-example-11.1/>
		
		<p>
			Вы <b>можете немедленно вызвать</b> <code>setState()</code> <b>в</b> <code>componentDidUpdate()</code>, но учтите,
			что вызов должен быть заключен в условие, как в примере выше, иначе вы
			вызовете бесконечный цикл. Это также вызвало бы дополнительную повторную
			отрисовку, которая, хоть и незаметно для пользователя, могла бы повлиять на
			производительность компонента. Если вы пытаетесь «отразить» свойства в
			состояние, рассмотрите возможность использования <code>props</code> напрямую. Узнайте
			больше о том, почему <b><a href="${derivedStateNecessityUrl}">копирование <code>props</code>
			в <code>state</code> вызывает ошибки</a></b>.
		</p>
		
		<p>
			Если ваш компонент реализует метод ЖЦ <code>getSnapshotBeforeUpdate()</code>
			(что редко встречается), возвращаемое им значение будет передано в
			качестве третьего параметра «снимка» в <code>componentDidUpdate()</code>. В
			противном случае этот параметр будет <code>undefined</code>.
		</p>
		
		<app:alert title="Замечание." type="warning">
			<code>componentDidUpdate()</code> не будет вызываться, если <code>shouldComponentUpdate()</code> возвращает
			<code>false</code>.
		</app:alert>
	
	</rf:definition>
	
	<a name="component-will-unmount"></a>
	<rf:definition title="componentWillUnmount()">
		<ce:code-example-12/>
		
		<wg:p><code>сomponentWillUnmount()</code> вызывается непосредственно перед демонтированием и
			уничтожением компонента. Выполняйте любую необходимую очистку в этом методе,
			такую как сброс таймеров, завершение сетевых запросов или удаление любых
			подписок, которые были созданы в <code>componentDidMount()</code>.</wg:p>
		
		<p>
			Вы не должны вызывать <code>setState()</code> в <code>componentWillUnmount()</code>,
			потому что компонент никогда не будет перерисован. <b>Однажды демонтированный экземпляр
			компонента, не может быть монтирован повторно.</b>
		</p>
	</rf:definition>
	
	<br/>
	<h3>4.2.2.2 Редко используемые методы жизненного цикла</h3>
	<br/>
	
	<p>
		Методы в данном разделе соответствуют более редким
		случаям использования. Они могут удобны время от времени,
		но большинству ваших компонентов, вероятно, не нужен ни один
		из них. <b>Большинство методов, представленных ниже, можно увидеть
		на этой <a href="${lifecycleDiagramUrl}">диаграмме жизненного цикла</a>, если в верхней части окна
		установить флажок «Показать реже используемые функции».</b>
	</p>
	
	<a name="should-component-update"></a>
	<rf:definition title="shouldComponentUpdate()">
		<ce:code-example-8/>
		
		<wg:p>Используйте <code>shouldComponentUpdate()</code>, чтобы позволить React быть осведомлённым,
			не влияет ли на результат отрисовки компонента текущее изменение состояния или свойств.
			Поведение по умолчанию заключается в повторной отрисовке при каждом изменении состояния,
			и в подавляющем большинстве случаев вам следует полагаться на поведение по умолчанию.</wg:p>
		
		<wg:p><code>shouldComponentUpdate()</code> вызывается перед отрисовкой при получении новых свойств
			или изменении состояния. По умолчанию используется значение <code>true</code>. Этот метод не
			вызывается для начальной отрисовки или при использовании <code>forceUpdate()</code>.</wg:p>
		
		<p>
			Данный метод существует только для <b><a href="${optimizingPerformanceUrl}">оптимизации производительности</a></b>.
			Не полагайтесь на него, чтобы «предотвратить» отрисовку, так как это может
			привести к ошибкам. <b>Подумайте об использовании встроенного</b> <code>PureComponent</code>
			вместо написания <code>shouldComponentUpdate()</code> вручную. <code>PureComponent</code> выполняет
			поверхностное сравнение <code>props</code> и <code>state</code>, а также и снижает вероятность того,
			что вы пропустите необходимое обновление.
		</p>
		
		<p>
			Если вы уверены, что хотите написать его вручную, вы можете
			сравнить <code>this.props</code> с <code>nextProps</code>,
			<code>this.state</code> с <code>nextState</code> и вернуть <code>false</code>,
			чтобы сообщить React, что обновление можно пропустить. Обратите
			внимание, что возвращение <code>false</code> не предотвращает повторную отрисовку
			дочерних компонентов при изменении их состояния.
		</p>
		
		<p>Мы не рекомендуем делать глубокие проверки равенства или использовать
			<code>JSON.stringify()</code> в <code>shouldComponentUpdate()</code>. Это очень неэффективно
			и будет наносить ущерб производительности.</p>
		
		<wg:p>В настоящее время, если <code>shouldComponentUpdate()</code> возвращает <code>false</code>, то методы
			<code>UNSAFE_componentWillUpdate()</code>, <code>render()</code> и
			<code>componentDidUpdate()</code> не сработают. Но
			обратите внимание, что в будущем React может рассматривать результат вызова
			<code>shouldComponentUpdate()</code>
			как подсказку, а не строгую директиву, и возврат <code>false</code> может по-прежнему приводить к
			повторной отрисовке компонента.</wg:p>
	</rf:definition>
	
	<a name="get-derived-state-from-props"></a>
	<rf:definition title="static getDerivedStateFromProps()">
		<ce:code-example-12.2/>
		
		<p>
			<code>getDerivedStateFromProps</code> вызывается непосредственно перед
			вызовом метода <code>render</code> как при начальном монтировании, так и при
			последующих обновлениях. Он должен возвращать объект, чтобы обновить
			состояние, или <code>null</code>, чтобы обновления не произошло.
		</p>
		
		<p>
			Этот метод существует для <b><a href="${derivedStateNecessity1Url}">редких случаев использования</a></b>,
			когда состояние зависит от изменений <code>props</code> с течением времени.
			Например, это может быть удобно для реализации компонента <code>&lt;Transition&gt;</code>,
			который сравнивает своих предыдущих и следующих потомков, чтобы
			решить, кого из них нужно анимировать.
		</p>
		
		<p>
			Производное состояние приводит к увеличению кода и
			делает ваши компоненты сложными для понимания.
			Убедитесь, что вы знакомы с <b><a href="${derivedStateNecessityUrl}">более
			простыми альтернативами</a></b>:
		</p>
		
		<ul>
			<li>
				<p>
					Если вам необходимо выполнить побочный эффект (например,
					извлечение данных или анимацию) в ответ на изменение <code>props</code>,
					используйте метод ЖЦ <code>componentDidUpdate</code>.
				</p>
			</li>
			<li>
				<p>
					Если вы хотите пересчитывать некоторые данные только
					при смене <code>props</code>, используйте
					<b><a href="${derivedStateNecessity4Url}">memoization</a></b>.
				</p>
			</li>
			<li>
				<p>
					Если вы хотите «сбросить» какое-то состояние при смене <code>props</code>,
					попробуйте либо сделать компонент <b><a href="${fullyControlledComponentUrl}">полностью контролируемым</a></b>,
					либо <b><a href="${fullyUncontrolledComponentUrl}">полностью неконтролируемым</a></b> с помощью ключа.
				</p>
			</li>
		</ul>
		
		<p>
			Данный метод не имеет доступа к экземпляру компонента. Если
			необходимо, вы можете повторно использовать некоторый код между
			вызовом <code>getDerivedStateFromProps()</code> и другими методами класса,
			извлекая чистые функции <code>props</code> и <code>state</code>
			компонента за пределы определения класса.
		</p>
		
		<p>
			Обратите внимание, что данный метод срабатывает при каждой
			отрисовке, независимо от её причин. Это отличается от
			<code>UNSAFE_componentWillReceiveProps</code>, который срабатывает только
			тогда, когда родитель вызывает повторную отрисовку, а не в
			результате локального вызова <code>setState</code>.
		</p>
	</rf:definition>
	
	<a name="get-snapshot-before-update"></a>
	<rf:definition title="getSnapshotBeforeUpdate()">
		<ce:code-example-12.3/>
		
		<p>
			<code>getSnapshotBeforeUpdate()</code> вызывается непосредственно перед тем,
			как последний результат отрисовки будет зафиксирован в DOM.
			Это позволяет вашему компоненту захватывать некоторую информацию из
			DOM (например, положение прокрутки) до того, как она может быть потенциально
			изменена. Любое значение, возвращаемое этим методом ЖЦ,
			будет передано в качестве параметра методу <code>componentDidUpdate()</code>.
		</p>
		
		<p>
			Такой вариант использования сильно не распространен, но он может возникать в UI.
			Например поток чата, где необходимо особым образом обрабатывать положение прокрутки.
		</p>
		
		<p>
			Значение снимка (или <code>null</code>) должно быть возвращено.
		</p>
		
		<ce:code-example-12.4/>
		
		<p>
			В приведенном выше примере важно считать свойство <code>scrollHeight</code> в
			<code>getSnapshotBeforeUpdate</code>, потому что могут быть задержки между
			вызовами методов ЖЦ фазы «отрисовки» (например, методом <code>render</code>) и
			фазы «фиксации» (такими как <code>getSnapshotBeforeUpdate</code> и <code>componentDidUpdate</code>).
		</p>
	
	</rf:definition>
	
	<br/>
	<h3>4.2.2.3 Обработка ошибок</h3>
	<br/>
	
	<p>
		<b><a href="${errorBoundariesUrl}">Границы ошибок</a></b> - это компоненты React,
		которые отлавливают ошибки JavaScript в
		любом месте их дерева дочерних компонентов, регистрируют эти ошибки и отображают резервный
		интерфейс вместо поломанного дерева компонентов. Границы ошибок отлавливают ошибки при
		рендеринге, в методах жизненного цикла и в конструкторах всего поддерева.
	</p>
	
	<p>
		Компонент класса становится границей ошибки, если он определяет один из (или оба)
		следующих методов ЖЦ: <code>static getDerivedStateFromError()</code> и <code>componentDidCatch (error, info)</code>.
		Обновление состояния из этих методов ЖЦ позволяет вам захватить необработанную
		ошибку JavaScript в дереве ниже и отобразить аварийный интерфейс.
	</p>
	
	<p>
		Используйте границы ошибок только для восстановления после
		непредвиденных исключений. <b>Не пытайтесь использовать их для контроля потока</b>.
	</p>
	
	<p>
		Для получения дополнительной информации см. раздел "<b><a href="${errorBoundariesUrl}">Границы ошибок</a></b>".
	</p>
	
	<app:alert title="Внимание!" type="warning">
		Границы ошибок отлавливают ошибки только в компонентах ниже них в дереве.
		Граница ошибки не способна отловить ошибку внутри себя.
	</app:alert>
	
	<a name="get-derived-state-from-error"></a>
	<rf:definition title="static getDerivedStateFromError()">
		<ce:code-example-13.1/>
		
		<p>Добавлен в версии React <b>16.6</b></p>
		
		<p>
			Данный метод ЖЦ вызывается после того, как компонент-потомок выбросил ошибку.
			Он получает выброшенную ошибку в качестве параметра, и должен вернуть значение
			для обновления состояния.
		</p>
		
		<ce:code-example-13.2/>
		
		<app:alert title="Внимание!" type="warning">
			<code>getDerivedStateFromError()</code> вызывается во время фазы «отрисовки»,
			поэтому побочные эффекты в нем не допускаются. Вместо него в таких случаях используйте
			<code>componentDidCatch()</code>.
		</app:alert>
	
	</rf:definition>
	
	<a name="component-did-catch"></a>
	<rf:definition title="componentDidCatch()">
		<ce:code-example-13.3/>
		
		<p>Добавлен в версии React <b>16.0</b></p>
		
		<p>Данный метод ЖЦ вызывается после того, как компонент-потомок
			выбросил ошибку. Он получает два параметра:</p>
		
		<ul>
			<li>
				<p>
					<code>error</code> - выброшенная ошибка.
				</p>
			</li>
			<li>
				<p>
					<code>info</code> - объект с ключом <code>componentStack</code>, содержащий
					<b><a href="${errorStackTraceUrl}">информацию о том, какой компонент выдал ошибку</a></b>.
				</p>
			</li>
		</ul>
		
		<p>
			<code>componentDidCatch()</code> вызывается во время фазы фиксации, поэтому побочные
			эффекты разрешены. Его следует использовать для таких вещей, как логирование ошибок:
		</p>
		
		<ce:code-example-13.4/>
		
		<app:alert title="Замечание." type="warning">
			Чтобы отобразить аварийный UI в случае ошибки вы можете использовать <code>componentDidCatch()</code>,
			вызвав <code>setState</code>, но в последующих релизах так делать не рекомендуется. Для этой цели используйте
			<code>static getDerivedStateFromError()</code>.
		</app:alert>
	</rf:definition>
	
	<br/>
	<h3>4.2.2.4 Устаревшие методы жизненного цикла</h3>
	<br/>
	
	<p>
		Методы жизненного цикла ниже помечены как «устаревшие».
		Они все еще работают, но мы не рекомендуем использовать их
		в новом коде. В <b><a href="${asyncRenderingUrl}">данной статье</a></b>
		вы можете больше узнать о миграции.
	</p>
	
	<a name="unsafe-component-will-mount"></a>
	<rf:definition title="UNSAFE_componentWillMount()">
		<ce:code-example-5/>
		
		<app:alert title="Внимание!" type="warning">
			Данный метод ранее назывался <code>componentWillMount</code>. Это имя будет работать
			до версии 17. Используйте модификатор <b><a href="${codemodUrl}">rename-unsafe-lifecycles</a></b> для
			автоматического обновления ваших компонентов.
		</app:alert>
		
		<wg:p><code>UNSAFE_componentWillMount()</code> вызывается непосредственно перед монтированием.
			Он вызывается перед <code>render()</code>, поэтому синхронная установка состояния в
			этом методе не приведет к повторному рендерингу. Обычно вместо этого метода мы рекомендуем
			использовать <code>constructor()</code>.</wg:p>
		
		<wg:p>Избегайте введения каких-либо побочных эффектов или подписки на события в
			этом методе. Для таких случаев используйте метод <code>componentDidMount()</code>.</wg:p>
		
		<wg:p>Это единственный метод ЖЦ, вызываемый при серверной отрисовке.</wg:p>
	</rf:definition>
	
	<a name="unsafe-component-will-receive-props"></a>
	<rf:definition title="UNSAFE_componentWillReceiveProps()">
		<ce:code-example-7/>
		
		<app:alert title="Внимание!" type="warning">
			Данный метод ранее назывался <code>componentWillReceiveProps</code>. Это имя будет работать
			до версии 17. Используйте модификатор <b><a href="${codemodUrl}">rename-unsafe-lifecycles</a></b> для
			автоматического обновления ваших компонентов.
		</app:alert>
		
		<app:alert title="Внимание!" type="warning">
			<p>Использование этого метода ЖЦ часто приводит к ошибкам и неконсистентности.</p>
			
			<br/>
			
			<ul>
				<li>
					<p>
						Если вам необходимо выполнить <b>побочный эффект</b> (например,
						извлечение данных или анимацию) в ответ на изменение <code>props</code>,
						используйте метод ЖЦ <code>componentDidUpdate</code>.
					</p>
				</li>
				<li>
					<p>
						Если вы хотите <b>пересчитывать некоторые данные только
						при смене</b> <code>props</code>, используйте
						<b><a href="${derivedStateNecessity4Url}">memoization</a></b>.
					</p>
				</li>
				<li>
					<p>
						Если вы хотите <b>«сбросить» какое-то состояние при смене</b> <code>props</code>,
						попробуйте либо сделать компонент <b><a href="${fullyControlledComponentUrl}">полностью контролируемым</a></b>,
						либо <b><a href="${fullyUncontrolledComponentUrl}">полностью неконтролируемым</a></b> с помощью ключа.
					</p>
				</li>
			</ul>
			
			<p>
				Для других случаев следуйте рекомендациям в
				<b><a href="${derivedStateNecessityUrl}">данной статье</a></b> о производном состоянии.
			</p>
		</app:alert>
		
		<wg:p><code>UNSAFE_componentWillReceiveProps()</code> вызывается до того, как монтированный компонент
			получит новые свойства. Если вам нужно обновить состояние в ответ на изменения
			свойств (например, для его сброса), вы можете сравнить <code>this.props</code> и <code>nextProps</code>,
			и инициировать переход к новому состоянию, используя <code>this.setState()</code> в этом методе.
		</wg:p>
		
		<wg:p>Обратите внимание, что если родительский компонент вызывает
			повторную отрисовку вашего компонента, этот метод будет вызываться,
			даже если props не изменились. Обязательно сравните текущие и следующие
			значения, если вы хотите только обрабатывать изменения.</wg:p>
		
		<wg:p>React не вызывает <code>UNSAFE_componentWillReceiveProps</code> с начальными свойствами во время
			монтажа. Он вызывает этот метод только в том случае, если некоторые свойства
			компонента были обновлены. Вызов <code>this.setState</code> обычно не приводит к
			вызову <code>UNSAFE_componentWillReceiveProps</code>.</wg:p>
	</rf:definition>
	
	<a name="unsafe-component-will-update"></a>
	<rf:definition title="UNSAFE_componentWillUpdate()">
		<ce:code-example-9/>
		
		<app:alert title="Внимание!" type="warning">
			Данный метод ранее назывался <code>componentWillUpdate</code>. Это имя будет работать
			до версии 17. Используйте модификатор <b><a href="${codemodUrl}">rename-unsafe-lifecycles</a></b> для
			автоматического обновления ваших компонентов.
		</app:alert>
		
		<wg:p><code>UNSAFE_componentWillUpdate()</code> вызывается непосредственно перед отрисовкой
			при получении новых свойств или состояния. Используйте это как возможность
			выполнить какую-либо подготовку до того, как произойдет обновление. Этот
			метод не вызывается для первоначальной отрисовки.</wg:p>
		
		<wg:p>
			Обратите внимание, что вы не можете вызвать <code>this.setState()</code> здесь. Более того, здесь
			вы не должны делать ничего (например, вызывать действие Redux), что
			инициировало бы обновление компонента React до того, как отработает <code>UNSAFE_componentWillUpdate()</code>.
		</wg:p>
		
		<p>
			Как правило данный метод может быть заменен на <code>componentDidUpdate()</code>. Если
			вы в этом методе производили доступ к DOM (например, чтобы сохранить позицию
			прокрутки), то можете переместить эту логику в <code>getSnapshotBeforeUpdate()</code>.
		</p>
		
		<app:alert title="Замечание." type="warning">
			<code>UNSAFE_componentWillUpdate()</code> не будет вызван, если <code>shouldComponentUpdate()</code>
			возвращает <code>false</code>.
		</app:alert>
	</rf:definition>
	
	<br/>
	<h3>4.2.2.5 Другие API</h3>
	<br/>
	
	<p>
		В отличие от методов жизненного цикла, описанных выше (которые React вызывает для вас сам),
		нижеперечисленные методы могут быть вызваны из ваших компонентов.
	</p>
	
	<p>
		Их два: <code>setState()</code> и <code>forceUpdate()</code>.
	</p>
	
	<a name="set-state"></a>
	<rf:definition title="setState()">
		<ce:code-example-13/>
		
		<wg:p><code>setState()</code> создает очередь изменений состояния компонента и сообщает
			React, что этот компонент и его дочерние элементы должны быть повторно
			отрисованы с обновленным состоянием. Это основной метод, который вы
			используете для обновления пользовательского интерфейса в ответ на
			разные события и ответы сервера.</wg:p>
		
		<wg:p>Думайте о <code>setState()</code> как о запросе, а не как о немедленной команде для
			обновления компонента. Для улучшения производительности React может задержать
			ее, а затем обновить несколько компонентов за один проход. React не гарантирует
			немедленного применения изменений состояния.</wg:p>
		
		<wg:p><code>setState()</code> не всегда сразу обновляет компонент. Он может добавить в очередь или
			отложить обновление до наиболее поздней версии. Это делает чтение <code>this.state</code>
			прямо после вызова <code>setState()</code> потенциальной ловушкой. Вместо этого используйте
			<code>componentDidUpdate</code> или обратный вызов <code>setState: (setState (updater, callback))</code>,
			любой из которых гарантированно будет срабатывать после применения обновления.
			Если вам необходимо установить состояние на основе предыдущего состояния, читайте
			об аргументе <code>updater</code> ниже.</wg:p>
		
		<wg:p><code>setState()</code> всегда приведет к повторной отрисовке, кроме случаев, когда <code>shouldComponentUpdate()</code>
			возвращает <code>false</code>. Если используются изменяемые объекты, и логика условной
			отрисовки не может быть реализована в <code>shouldComponentUpdate()</code>, вызов <code>setState()</code>
			только тогда, когда новое состояние отличается от предыдущего состояния,
			позволит избежать ненужных повторных отрисовок.</wg:p>
		
		<wg:p>Первый аргумент <code>updater</code> - это функция с сигнатурой:</wg:p>
		
		<ce:code-example-14/>
		
		<wg:p><code>prevState</code> - ссылка на предыдущее состояние. Оно не должно быть непосредственно
			изменено. Вместо этого, изменения должны быть представлены путем создания нового
			объекта на основе <code>prevState</code> и <code>props</code>. Например, предположим, что мы захотели
			изменить значение в состоянии с помощью <code>props.delta</code>:</wg:p>
		
		<ce:code-example-15/>
		
		<wg:p>Как <code>prevState</code>, так и <code>props</code>, полученные функцией обновления гарантировано будут
			актуальными. Возвращаемый результат функции обновления будет
			неглубоко смерджен с <code>prevState</code>.</wg:p>
		
		<wg:p>Второй параметр для <code>setState()</code> - это дополнительная функция обратного вызова, которая
			будет выполняться после завершения <code>setState</code> и повторной отрисовки компонента. Обычно
			вместо неё мы рекомендуем использовать <code>componentDidUpdate()</code>.</wg:p>
		
		<wg:p>Вы можете передать объект в качестве первого аргумента функции
			<code>setState()</code> вместо функции:</wg:p>
		
		<ce:code-example-16/>
		
		<wg:p>Такой вызов приведёт к неглубокому слиянию <code>stateChange</code> в новое состояние,
			например, чтобы показать диалог:</wg:p>
		
		<ce:code-example-17/>
		
		<wg:p>Эта форма <code>setState()</code> также асинхронна, и несколько вызовов в течение одного
			и того же цикла могут быть объединены вместе. Например, если вы пытаетесь
			увеличить счетчик более одного раза в одном цикле, это будет эквивалентно:</wg:p>
		
		<ce:code-example-18/>
		
		<wg:p>Последующие вызовы будут переопределять значения из предыдущих вызовов в
			том же цикле, поэтому счетчик будет увеличен только один раз. Если следующее
			состояние зависит от предыдущего состояния, мы рекомендуем использовать
			такую форму функции обновления:</wg:p>
		
		<ce:code-example-19/>
		
		<wg:p>Более детальная информация находится в главе «<wg:link
				href="">Состояние и жизненный цикл</wg:link>».</wg:p>
	</rf:definition>
	
	<a name="force-update"></a>
	<rf:definition title="forceUpdate()">
		<ce:code-example-20/>
		
		<wg:p>По умолчанию, когда свойства или состояние вашего компонента изменяются, ваш
			компонент будет повторно отрисован. Если метод <code>render()</code> зависит от каких-то других
			данных, вы можете сказать React, что компонент нуждается в повторной
			перерисовке, вызвав <code>forceUpdate()</code>.</wg:p>
		
		<wg:p>Вызов <code>forceUpdate()</code> приведет к вызову <code>render()</code> для компонента, пропуская
			<code>shouldComponentUpdate()</code>. Будут вызваны обычные методы жизненного цикла дочерних
			компонентов, включая метод <code>shouldComponentUpdate()</code> для каждого потомка. React
			будет по-прежнему обновлять DOM только в случае изменения разметки.</wg:p>
		
		<wg:p>В большинстве случаев вы должны стараться избегать использования
			<code>forceUpdate()</code> и считывать данные только из <code>this.props</code>
			и <code>this.state</code> в методе <code>render()</code>.</wg:p>
	</rf:definition>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>4.2.3 Свойства класса</h2>
	<br/>
	
	<a name="default-props"></a>
	<rf:definition title="defaultProps">
		<wg:p>defaultProps можно определить как свойство самого класса компонента, чтобы установить свойства
			по умолчанию для класса. Это используется для <code>undefined</code> свойств, но не
			для <code>null</code> свойств. Например:</wg:p>
		
		<ce:code-example-21/>
		
		<wg:p>Если <code>props.type</code> не будет предоставлен, по умолчанию он будет установлен
			в <code>'success'</code>:</wg:p>
		
		<ce:code-example-22/>
		
		<wg:p>Если для свойства <code>props.type</code> установлено значение <code>null</code>,
			оно останется <code>null</code>:</wg:p>
	</rf:definition>
	
	<c:url var="hocUrl" value="/core/higher-order-components#3.15.5"/>
	<a name="display-name"></a>
	<rf:definition title="displayName">
		Строковое свойство <code>displayName</code> используется для сообщений отладки. Обычно вам не нужно
		явно указывать его, поскольку оно берётся из имени функции или класса, которые
		определяют компонент. Возможно, вы захотите установить его явно, если хотите отобразить
		другое имя для целей отладки или когда вы создаете компонент более высокого порядка,
		см. раздел «<wg:link href="${hocUrl}">Обёртывание отображаемого
		имени для облегчения отладки</wg:link> ».
	</rf:definition>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>4.2.4 Свойства экземпляра</h2>
	<br/>
	
	<c:url var="componentsAndPropsUrl" value="/basics/components-and-props"/>
	<a name="props"></a>
	<rf:definition title="props">
		<wg:p><code>this.props</code> содержит свойства, которые были определены вызывающим компонентом данного компонента.
			См. «<wg:link
					href="${componentsAndPropsUrl}">Компоненты и свойства</wg:link>» для ознакомления со свойствами.</wg:p>
		
		<wg:p>В частности, <code>this.props.children</code> - специальное свойство,
			обычно определяемое дочерними тегами в выражении JSX, а не на в самом теге.</wg:p>
	</rf:definition>
	
	<a name="state"></a>
	<rf:definition title="state">
		<wg:p>Состояние содержит данные, специфичные для этого компонента, которые могут меняться со временем. Состояние
			определяется пользователем, и оно должно быть простым объектом JavaScript.</wg:p>
		
		<wg:p>Если вы не используете что-то в <code>render()</code>, оно не должно находиться в состоянии. Например,
			вы можете поместить идентификаторы таймера непосредственно в экземпляр.</wg:p>
		
		<c:url var="stateAndLifecycleUrl" value="/basics/state-and-lifecycle"/>
		<wg:p>См. «<wg:link
				href="${stateAndLifecycleUrl}">Состояние и жизненный цикл</wg:link>» для получения дополнительной информации
			о состоянии.</wg:p>
		
		<wg:p>Никогда не изменяйте <code>this.state</code> напрямую, так как вызов
			<code>setState()</code> впоследствии может заменить
			ваше изменение. Обращайтесь с <code>this.state</code>, как если бы оно было неизменяемым.</wg:p>
	</rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="react"/>
<c:url var="nextPageUrl" value="react-dom"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>