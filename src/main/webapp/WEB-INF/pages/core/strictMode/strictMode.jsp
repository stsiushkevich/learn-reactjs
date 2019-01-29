<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/strict-mode" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="strictModeUnsafeLifecyclesWarningUrl" value="https://reactjs.org/static/strict-mode-unsafe-lifecycles-warning-e4fdbff774b356881123e69ad88eda88-2535d.png"/>
<c:url var="refsAndDomUrl" value="refs-and-the-dom"/>
<c:url var="createRefUrl" value="refs-and-the-dom#createRefAPI"/>
<c:url var="forwardingRefsUrl" value="/core/forwarding-refs"/>
<c:url var="legacyContextApiUrl" value="https://reactjs.org/static/warn-legacy-context-in-strict-mode-fca5c5e1fb2ef2e2d59afb100b432c12-4b612.png"/>
<c:url var="сontextApiUrl" value="/core/context"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page strict-mode-page">
  <h1>3.18 Строгий режим</h1>
  
  <br/>

  <p class="introduction">
    <code>StrictMode</code> - инструмент для выделения потенциальных проблем в приложении. Как и
    <code>Fragment</code>, <code>StrictMode</code> не отображает какой-либо видимый UI. Он активирует дополнительные
    проверки и предупреждения для своих потомков.
  </p>

  <app:alert type="warning" title="Внимание!">
    Проверки строгого режима работают только в режиме разработки; <b>они не влияют на production билд.</b>
  </app:alert>

  <wg:p>Вы можете включить строгий режим для любой части вашего приложения. Например:</wg:p>

  <ce:code-example-1/>

  <wg:p>
    В приведенном выше примере проверки строгого режима не будут выполняться для
    компонентов <code>Header</code> и <code>Footer</code>. Однако эти проверки будут выполнены для компонентов
    <code>ComponentOne</code> и <code>ComponentTwo</code>, а также для всех их потомков.
  </wg:p>

  <wg:p>На данный момент <code>StrictMode</code> помогает с:</wg:p>

  <wg:p>
    <ul>
      <li><p><b><a href="#unsafe-life-cycles">3.18.1 Обнаружением компонентов, имеющих небезопасные методы жизненного цикла.</a></b></p></li>
      <li><p><b><a href="#legacy-ref-api">3.18.2 Предупреждением об использовании устаревшего строкового API для <code>ref</code>.</a></b></p></li>
      <li><p><b><a href="#legacy-find-dom-node">3.18.3 Предупреждением об использовании устаревшего метода findDOMNode.</a></b></p></li>
      <li><p><b><a href="#side-effects">3.18.4 Обнаружением неожиданных сторонних эффектов.</a></b></p></li>
      <li><p><b><a href="#legacy-context-api">3.18.5 Обнаружением устаревшего API контекста.</a></b></p></li>
    </ul>
  </wg:p>

  <wg:p>Дополнительные функциональные возможности будут добавлены в будущих релизах React.</wg:p>

  <a name="unsafe-life-cycles"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.18.1 Обнаружение компонентов, имеющих небезопасные методы жизненного цикла</h2>
  <br/>

  <wg:p>
    Некоторые устаревшие методы жизненного цикла небезопасны
    для использования в асинхронных React-приложениях. Однако, если ваше приложение использует сторонние
    библиотеки, может оказаться сложным обеспечить, чтобы эти методы не использовались. К счастью,
    строгий режим может помочь с этим!
  </wg:p>

  <wg:p>
    Когда строгий режим включен, React компилирует список всех компонентов-классов, использующих
    небезопасные методы жизненного цикла, и отображает предупреждающее сообщение с информацией
    об этих компонентах, например:
  </wg:p>

  <wg:p style="overflow-x: auto">
    <wg:img src="${strictModeUnsafeLifecyclesWarningUrl}"/>
  </wg:p>

  <wg:p>
    Теперь, решение проблем, выявленных в строгом режиме, облегчит использование вами
    всех преимуществ асинхронной отрисовки в будущих версиях React.
  </wg:p>
  
  <a name="legacy-ref-api"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.18.2 Предупреждение об использовании устаревшего строкового API для ref</h2>
  <br/>

  <wg:p>
    Ранее React предоставлял два способа управления ссылками <code>ref</code>: устаревший строковый API
    и API обратного вызова. Хотя строковый API был более удобным, он имел ряд недостатков,
    поэтому наша официальная рекомендация заключалась в том, чтобы вместо него использовать форму обратного вызова.
  </wg:p>

  <wg:p>
    React 16.3 добавил третий вариант, который предлагает удобство строки <code>ref</code>
    без каких-либо недостатков:
  </wg:p>

  <ce:code-example-2/>

  <wg:p>
    Поскольку ссылки на объекты по большей части были добавлены в качестве замены
    строковых <code>ref</code>, строгий режим теперь предупреждает об использовании строковых ссылок.
  </wg:p>

  <app:alert title="Внимание!" type="warning">
    API обратного вызова для ссылок будет продолжать поддерживаться в
    дополнение к новому API <code>createRef</code>.
    <br/>
    <br/>
    Вам не нужно заменять обратные вызовы в ваших компонентах. Они немного более гибкие,
    поэтому останутся в качестве продвинутой функции.
  </app:alert>

  <wg:p>
    Подробнее о новом API <code>createRef</code> <wg:link href="${refsAndDomUrl}">читайте здесь</wg:link>.
  </wg:p>
  
  <a name="legacy-find-dom-node"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.18.3 Предупреждением об использовании устаревшего метода findDOMNode</h2>
  <br/>
  
  <p>
    Ранее React использовал метод <code>findDOMNode</code> для поиска узла DOM по
    заданному экземпляру класса. Обычно вам это не нужно, так как вы
    можете <b><a href="${createRefUrl}">прикрепить ссылку непосредственно к узлу DOM</a></b>.
  </p>
  
  <ad:ad-content-banner-1/>
  
  <p>
    <code>findDOMNode</code> также может использоваться на компонентах-классах, но
    это нарушает уровни абстракции, позволяя родителю требовать отрисовки
    определенных потомков. Также это создает опасность во время рефакторинга,
    когда вы не можете изменить детали реализации компонента, потому что
    родитель может получать доступ к его DOM узлу. <code>findDOMNode</code>
    возвращает только первого потомка, но с использованием фрагментов
    компонент может отображать несколько узлов DOM.
    <code>findDOMNode</code> - это API для однократного чтения. Он дает
    вам ответ только тогда, когда вы его об этом попросите. Если дочерний
    компонент отображает другой узел, нет способа обработать это изменение.
    Поэтому <code>findDOMNode</code> работает только в том случае, если
    компоненты всегда возвращают один узел DOM, который никогда не изменяется.
  </p>
  
  <p>
    Вместо этого можно
    использовать <b><a href="${forwardingRefsUrl}">передачу ссылок</a></b>.
  </p>
  
  <p>
    Вы также можете добавить обёртку дла DOM-узла в свой компонент и
    прикрепить ссылку непосредственно к ней.
  </p>
  
  <app:alert title="Внимание!" type="warning">
    В CSS может использоваться атрибут <code>display: contents</code>, если вы не
    хотите, чтобы узел был частью лэйаута.
  </app:alert>
  
  <ce:code-example-2.1/>
  
  <a name="side-effects"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.18.3 Обнаружение неожиданных сторонних эффектов</h2>
  <br/>

  <wg:p>Концептуально, React работает в две фазы:</wg:p>

  <wg:p>
    <ul>
      <li>
        <b>Фаза отрисовки (render)</b> определяет, какие изменения необходимо произвести.
        В данной фазе React вызывает render, а затем сравнивает результат
        с предыдущим результатом вызова render.
      </li>
      <li>
        <b>Фаза фиксации (commit)</b> - в ней React применяет любые изменения. (В случае React DOM - это фаза, когда
        React вставляет, обновляет и удаляет узлы DOM.) В данной фазе React также вызывает методы жизненного цикла,
        такие как <code>componentDidMount</code> и <code>componentDidUpdate</code>.
      </li>
    </ul>
  </wg:p>

  <wg:p>К методам жизненного цикла фазы отрисовки относятся следующие методы компонента-класса:</wg:p>

  <wg:p>
    <ul>
      <li><code>constructor</code></li>
      <li><code>componentWillMount</code></li>
      <li><code>componentWillReceiveProps</code></li>
      <li><code>componentWillUpdate</code></li>
      <li><code>getDerivedStateFromProps</code></li>
      <li><code>shouldComponentUpdate</code></li>
      <li><code>render</code></li>
      <li>обновляющие функции метода <code>setState</code> (первый аргумент)</li>
    </ul>
  </wg:p>

  <wg:p>
    Поскольку вышеупомянутые методы могут быть вызваны более одного раза, важно, чтобы
    они не содержали каких-либо сторонних эффектов. Игнорирование этого правила может привести к
    множеству проблем, включая утечку памяти и нерелевантное состояние приложения. К сожалению,
    бывает довольно трудно обнаружить эти проблемы, поскольку они часто могут
    быть недетерминированными.
  </wg:p>

  <wg:p>
    Строгий режим не может автоматически обнаруживать для вас побочные эффекты, но он может
    помочь вам определить их, сделав их немного более детерминированными. Это достигается путем
    преднамеренного двойного вызова следующих методов:
  </wg:p>

  <wg:p>
    <ul>
      <li>Метод <code>constructor</code> компонента-класса.</li>
      <li>Метод <code>render</code>.</li>
      <li>обновляющие функции метода <code>setState</code> (первый аргумент)</li>
      <li>Статический метод <code>getDerivedStateFromProps</code>.</li>
    </ul>
  </wg:p>

  <app:alert type="warning" title="Внимание!">
    Это применимо только к <b>development</b> режиму. Методы жизненного
    цикла не будут вызываться дважды в <b>production</b> режиме.
  </app:alert>

  <wg:p>
    К примеру, рассмотрим следующий код:
  </wg:p>

  <ce:code-example-3/>

  <wg:p>
    На первый взгляд данный код может не показаться проблемным. Но если
    метод <code>SharedApplicationState.recordEvent</code> не является идемпотентным, то
    создание экземпляра этого компонента несколько раз может привести к недопустимому
    состоянию приложения. Такая тонкая ошибка может не проявляться во время разработки,
    или же она может возникать очень непоследовательно, и поэтому может быть упущена из виду.
  </wg:p>

  <wg:p>
    Умышленно производя двойные вызовы методов, таких как конструктор компонента, строгий режим
    делает такие проблемные шаблоны более легкими для обнаружения.
  </wg:p>
  
  <a name="legacy-context-api"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.18.5 Обнаружением устаревшего API контекста</h2>
  <br/>
  
  <p>
    Устаревший API контекста подвержен ошибкам и будет удален в будущей
    major версии. Он все еще работает для всех релизов <b>16.x</b>, но в строгом
    режиме будет показано это предупреждение:
  </p>
  
  <br/>
  
  <p style="overflow-x: auto" class="text-center">
    <img src="${legacyContextApiUrl}"/>
  </p>
  
  <br/>
  
  <p>
    Изучите новую документацию по API контекста в <b><a href="${сontextApiUrl}">данном разделе</a></b>.
  </p>
  
</lt:layout>

<c:url var="prevPageUrl" value="integrating-with-other-libraries"/>
<c:url var="nextPageUrl" value="/reference/topics"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>