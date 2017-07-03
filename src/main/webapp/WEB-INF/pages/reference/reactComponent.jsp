<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react-component" %>

<lt:layout cssClass="page hello-world-example-page">
  <wg:head size="3"><b>4.2	React.Component</b></wg:head>

  <wg:p>Компоненты позволяют разделить пользовательский интерфейс на самостоятельные,
    многоразовые фрагменты и работать с каждой частью независимо.
    <code>React.Component</code> предоставляется React-ом.</wg:p>

  <br/>
  <wg:head size="4"><b>4.2.1 Обзор</b></wg:head>

  <wg:p><code>React.Component</code> является абстрактным базовым классом, поэтому редко
    имеет смысл напрямую ссылаться на <code>React.Component</code>. Вместо этого вы обычно
    расширяете его и определяете по крайней мере метод <code>render()</code>.</wg:p>

  <wg:p>Обычно вы определяете компонент React как обычный
    <wg:link href="https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Classes">класс JavaScript</wg:link>:</wg:p>

  <ce:code-example-1/>

  <%--todo LINK--%>
  <wg:p>Если вы не используете ES6, вместо этого вы можете использовать
    модуль <code>create-react-class</code>. Взгляните на использование
    <wg:link href="">React без ES6</wg:link>, чтобы узнать больше.</wg:p>

  <br/>
  <wg:head size="5"><b>4.2.1.1 Жизненный цикл компонента</b></wg:head>

  <wg:p>Каждый компонент имеет несколько «методов жизненного цикла», которые
    вы можете переопределить для запуска кода в определенное время в процессе
    работы приложения. Методы, с префиксом <code>will</code>, вызываются прямо перед тем,
    как что-то происходит, а методы с префиксом <code>did</code> вызываются сразу после
    того, как что-то происходит.</wg:p>

  <br/>
  <wg:head size="6"><b>4.2.1.1.1 Монтирование</b></wg:head>

  <wg:p>Эти методы вызываются, когда экземпляр компонента создается и вставляется в DOM:</wg:p>

  <wg:p>
    <ul>
      <li><code>constructor()</code></li>
      <li><code>componentWillMount()</code></li>
      <li><code>render()</code></li>
      <li><code>componentDidMount()</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="6"><b>4.2.1.1.2 Обновление</b></wg:head>

  <wg:p>Обновление может быть вызвано изменениями в свойствах или состоянии.
    Эти методы вызываются, когда компонент повторно перерисовывается:</wg:p>

  <wg:p>
    <ul>
      <li><code>componentWillReceiveProps()</code></li>
      <li><code>shouldComponentUpdate()</code></li>
      <li><code>componentWillUpdate()</code></li>
      <li><code>render()</code></li>
      <li><code>componentDidUpdate()</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="6"><b>4.2.1.1.3 Демонтирование</b></wg:head>

  <wg:p>Этот метод вызывается, когда компонент удаляется из DOM:</wg:p>

  <wg:p>
    <ul>
      <li><code>componentWillUnmount()</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="5"><b>4.2.1.2 Другие API</b></wg:head>

  <wg:p>Каждый компонент также предоставляет некоторые другие API:</wg:p>

  <wg:p>
    <ul>
      <li><code>setState()</code></li>
      <li><code>forceUpdate()</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="5"><b>4.2.1.3 Свойства класса</b></wg:head>

  <wg:p>
    <ul>
      <li><code>defaultProps</code></li>
      <li><code>displayName</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="5"><b>4.2.1.4 Свойства экземпляра</b></wg:head>

  <wg:p>
    <ul>
      <li><code>props</code></li>
      <li><code>state</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="4"><b>4.2.2 Справка</b></wg:head>

  <rf:definition title="render()">
    <ce:code-example-2/>

    <wg:p>Метод <code>render()</code> является необходимым.</wg:p>

    <wg:p>При вызове он получает доступ к <code>this.props</code> и <code>this.state</code> и
      должен вернуть единственный элемент React. Этот элемент может
      являться либо представлением нативного DOM-компонента, например <code>&lt;div /&gt;</code>,
      либо другого составного компонента, который вы определили сами.</wg:p>

    <wg:p>Вы также можете вернуть значение <code>null</code> или <code>false</code>, чтобы указать, что вы
      не хотите ничего отрисовывать. При возврате <code>null</code> или <code>false</code> метод <code>ReactDOM.findDOMNode(this)</code>
      возвращает <code>null</code>.</wg:p>

    <wg:p><b>Метод <code>render()</code> должен быть чистой функцией</b>, что означает:</wg:p>

    <wg:p>
      <ul>
        <li>он не изменяет состояние компонента</li>
        <li>возвращает один и тот же результат при каждом вызове</li>
        <li>не взаимодействует напрямую с браузером. </li>
      </ul>
    </wg:p>

    <wg:p>Если вам нужно взаимодействовать с браузером, вместо этого выполните
      свою работу в <code>componentDidMount()</code> или других методах жизненного цикла.
      Поддержание <code>render()</code> чистым делает компоненты более легкими для анализа. </wg:p>

    <app:alert type="warning" title="Внимание!">
      <code>render()</code> не будет вызываться, если <code>shouldComponentUpdate()</code> возвращает <code>false</code>.
    </app:alert>
  </rf:definition>

  <rf:definition title="constructor()">
    <ce:code-example-3/>

    <wg:p>Конструктор компонента React вызывается до его монтирования.
      При реализации конструктора подкласса <code>React.Component</code> вы должны
      вызвать <code>super(props)</code> перед любым другим оператором. В противном
      случае <code>this.props</code> не будет определен в конструкторе, что может
      привести к ошибкам.</wg:p>

    <wg:p><b>Конструктор - это необходимое место для инициализации состояния.</b>
      Если вы не инициализируете состояние и не связываете методы, вам не
      нужно реализовывать конструктор для вашего компонента React.</wg:p>

    <wg:p>Корректно инициализировать состояние, основанное на свойствах. Это эффективно
      «разветвляет» свойства и устанавливает состояние с помощью начальных свойств.
      Ниже приведен пример корректного конструктора подкласса <code>React.Component</code>:</wg:p>

    <ce:code-example-4/>

    <%--todo LINK--%>
    <wg:p>Будьте внимательны с этим паттерном, поскольку состояние не будет обновляться
      при обновлении какого-либо свойства. Вместо того, чтобы синхронизировать свойства с
      состоянием, вам лучше
      <wg:link href="">поднять состояние вверх по иерархии</wg:link></wg:p>.

    <wg:p>Если вы используете «разветвляемые» свойства, используя их для состояния,
      вы можете реализовать <code>componentWillReceiveProps(nextProps)</code>, чтобы сделать
      состояние обновляемым вместе со свойствами. Но «подъем» состояния часто
      бывает проще и менее подвержен ошибкам.</wg:p>
  </rf:definition>

  <rf:definition title="componentWillMount()">
    <ce:code-example-5/>

    <wg:p><code>componentWillMount()</code> вызывается непосредственно перед монтированием.
      Он вызывается перед <code>render()</code>, поэтому синхронная установка состояния в
      этом методе не приведет к повторному рендерингу. Избегайте введения каких-либо
      побочных эффектов или подписки на события в этом методе.</wg:p>

    <wg:p>Это единственный метод жизненного цикла, вызываемый на стадии, когда отрисовывает сервер.
      Обычно мы рекомендуется использовать <code>constructor()</code>.</wg:p>
  </rf:definition>

  <rf:definition title="componentDidMount()">
    <ce:code-example-6/>

    <wg:p>
      <code>componentDidMount()</code> вызывается сразу после монтирования компонента.
      Инициализация, требующая доступа к узлам DOM, должна находиться здесь.
      Если вам нужно загружать данные с удаленного источника, это хорошее
      место для инициирования сетевого запроса. Изменение состояния в этом
      методе приведет к повторной отрисовке.
    </wg:p>
  </rf:definition>

  <rf:definition title="componentWillReceiveProps()">
    <ce:code-example-7/>

    <wg:p><code>componentWillReceiveProps()</code> вызывается до того, как монтированный компонент
      получит новые свойства. Если вам нужно обновить состояние в ответ на изменения
      свойств (например, для его сброса), вы можете сравнить <code>this.props</code> и <code>nextProps</code>,
      и инициировать переход к новому состоянию, используя <code>this.setState()</code> в этом методе.
    </wg:p>

    <wg:p>Обратите внимание, что React может вызывать этот метод, даже если свойства не
      изменились, поэтому обязательно сравните текущие и следующие значения, если вы
      хотите обрабатывать изменения. Это может произойти, когда родительский компонент
      заставляет ваш компонент переотрисовываться.</wg:p>

    <wg:p>React не вызывает <code>componentWillReceiveProps</code> с начальными свойствами во время
      монтажа. Он вызывает этот метод только в том случае, если некоторые свойства
      компонента были обновлены. Вызов <code>this.setState</code> обычно не приводит к
      вызову <code>componentWillReceiveProps</code>.</wg:p>
  </rf:definition>

  <rf:definition title="shouldComponentUpdate()">
    <ce:code-example-8/>

    <wg:p>Используйте <code>shouldComponentUpdate()</code>, чтобы позволить React быть осведомлённым,
      не влияет ли на результат отрисовки компонента текущее изменение состояния или свойств.
      Поведение по умолчанию заключается в повторной отрисовке при каждом изменении состояния,
      и в подавляющем большинстве случаев вам следует полагаться на поведение по умолчанию.</wg:p>

    <wg:p><code>shouldComponentUpdate()</code> вызывается перед отрисовкой при получении новых свойств
      или изменении состояния. По умолчанию используется значение <code>true</code>. Этот метод не
      вызывается для начальной отрисовки или при использовании <code>forceUpdate()</code>.</wg:p>

    <wg:p>Возврат <code>false</code> не предотвращает повторную отрисовку дочерних компонентов
      при изменении их состояния.</wg:p>

    <wg:p>В настоящее время, если <code>shouldComponentUpdate()</code> возвращает <code>false</code>, то методы
      <code>componentWillUpdate()</code>, <code>render()</code> и <code>componentDidUpdate()</code> не будут вызываться. Но
      обратите внимание, что в будущем React может рассматривать результат вызова <code>shouldComponentUpdate()</code>
      как подсказку, а не строгую директиву, и возврат <code>false</code> может по-прежнему приводить к
      повторному рендерингу компонента.</wg:p>

    <wg:p>Если вы определите, что какой-либо компонент работает медленно после профилирования,
      вы можете изменить наследуясь от <code>React.PureComponent</code>, который реализует <code>shouldComponentUpdate()</code>
      с неглубоким сравнением свойств и состояния. А если вы точно уверены, что хотите написать
      его вручную, вы можете сравнить <code>this.props</code> с <code>nextProps</code> и <code>this.state</code> с <code>nextState</code> и вернуть
      <code>false</code>, чтобы сказать React, что обновление может быть пропущено.</wg:p>
  </rf:definition>

  <rf:definition title="componentWillUpdate()">
    <ce:code-example-9/>

    <wg:p><code>componentWillUpdate()</code> вызывается непосредственно перед отрисовкой
      при получении новых свойств или состояния. Используйте это как возможность
      выполнить какую-либо подготовку до того, как произойдет обновление. Этот
      метод не вызывается для первоначальной отрисовки.</wg:p>

    <wg:p>Обратите внимание, что здесь вы не можете вызвать <code>this.setState()</code>. Если вам нужно
      обновить состояние в ответ на изменение свойств, используйте вместо
      этого <code>componentWillReceiveProps()</code>.</wg:p>

    <app:alert title="Замечание">
      <code>componentWillUpdate()</code> не будет вызываться, если <code>shouldComponentUpdate()</code> возвращает <code>false</code>.
    </app:alert>
  </rf:definition>

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

    <app:alert title="Замечание">
      <code>componentDidUpdate()</code> не будет вызываться, если <code>shouldComponentUpdate()</code> возвращает <code>false</code>.
    </app:alert>

  </rf:definition>

  <rf:definition title="componentWillUnmount()">
    <ce:code-example-12/>

    <wg:p><code>сomponentWillUnmount()</code> вызывается непосредственно перед демонтированием и
      уничтожением компонента. Выполняйте любую необходимую очистку в этом методе,
      такую как сброс таймеров, завершение сетевых запросов или удаление любых
      элементов DOM, которые были созданы в componentDidMount.</wg:p>
  </rf:definition>

  <rf:definition title="componentWillUnmount()">
    <ce:code-example-13/>

    <wg:p><code>setState()</code> создает очередь изменений состояния компонента и сообщает
      React, что этот компонент и его дочерние элементы должны быть повторно
      отрисованы с обновленным состоянием. Это основной метод, который вы
      используете для обновления пользовательского интерфейса в ответ на
      разные события и ответы сервера.</wg:p>

    <wg:p>Думайте о <code>setState()</code> как о запросе, а не как о немедленной команде для
      обновления компонента. Для улулучшения производительности React может задержать
      ее, а затем обновить несколько компонентов за один проход. React не гарантирует
      немедленного применения изменений состояния.</wg:p>

    <wg:p><code>setState()</code> не всегда сразу обновляет компонент. Он может добавить в очередь или
      отложить обновление до наиболее поздней версии. Это делает чтение <code>this.state</code>
      прямо после вызова <code>setState()</code> потенциальной ловушкой. Вместо этого используйте
      <code>componentDidUpdate</code> или обратный вызов <code>setState: (setState (updater, callback))</code>,
      любой из которых гарантированно будет срабатывать после применения обновления.
      Если вам необходимо установить состояние на основе предыдущего состояния, читайте
      об аргументе updater ниже.</wg:p>

    <wg:p><code>setState()</code> всегда приведет к повторной отрисовке, если <code>shouldComponentUpdate()</code>
      возвращает <code>false</code>. Если используются изменяемые объекты, и логика условной
      отрисовки не может быть реализована в <code>shouldComponentUpdate()</code>, вызов <code>setState()</code>
      только тогда, когда новое состояние отличается от предыдущего состояния,
      позволит избежать ненужных повторных отрисовок.</wg:p>

    <wg:p>Первый аргумент <code>updater</code> - это функция с сигнатурой:</wg:p>

    <wg:p><code>prevState</code> - ссылка на предыдущее состояние. Оно не должно быть непосредственно
      изменено. Вместо этого, изменения должны быть представлены путем создания нового
      объекта на основе <code>prevState</code> и <code>props</code>. Например, предположим, что мы захотели
      изменить значение в состоянии с помощью <code>props.delta</code>:</wg:p>

    <ce:code-example-15/>

    <wg:p>Как <code>prevState</code>, так и <code>props</code>, полученные функцией обновления гарантировано будут
      актуальными. Возвращаемый результат функции обновения будет
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

    <wg:p>Более детальная информация находится в главе «<wg:link href="">Состояние и жизненный цикл</wg:link>».</wg:p>
  </rf:definition>

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
  <wg:head size="4"><b>4.2.3 Свойства класса</b></wg:head>

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

  <%--todo LINK--%>
  <rf:definition title="displayName">
    Строка displayName используется для сообщений отладки.
    JSX автоматически устанавливает это значение; см. <wg:link href="">JSX изнутри</wg:link> .
  </rf:definition>

  <br/>
  <wg:head size="4"><b>4.2.4 Свойства экземпляра</b></wg:head>

  <%--todo LINK--%>
  <rf:definition title="props">
    <wg:p><code>this.props</code> содержит свойства, которые были определены вызывающим компонентом данного компонента.
      См. «<wg:link href="">Компоненты и свойства</wg:link>» для ознакомления со свойствами.</wg:p>

    <wg:p>В частности, <code>this.props.children</code> - специальное свойство,
      обычно определяемое дочерними тегами в выражении JSX, а не на в самом теге.</wg:p>
  </rf:definition>

  <rf:definition title="state">
    <wg:p>Состояние содержит данные, специфичные для этого компонента, которые могут меняться со временем. Состояние
      определяется пользователем, и оно должно быть простым объектом JavaScript.</wg:p>

    <wg:p>Если вы не используете что-то в <code>render()</code>, оно не должно находиться в состоянии. Например,
      вы можете поместить идентификаторы таймера непосредственно в экземпляр.</wg:p>

    <%--todo LINK--%>
    <wg:p>См. «<wg:link href="">Состояние и жизненный цикл</wg:link>» для получения дополнительной информации
      о состоянии.</wg:p>

    <wg:p>Никогда не изменяйте <code>this.state</code> напрямую, так как вызов <code>setState()</code> впоследствии может заменить
      ваше изменение. Обращайтесь с <code>this.state</code>, как если бы оно было неизменяемым.</wg:p>
  </rf:definition>
</lt:layout>