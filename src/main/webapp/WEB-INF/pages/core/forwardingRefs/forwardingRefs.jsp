<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/forwarding-refs" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>
<c:url var="codemodeUrl" value="https://reactjs.org/blog/2017/04/07/react-v15.5.0.html#migrating-from-react.proptypes"/>
<c:url var="newReleaseUrl" value="https://github.com/reactjs/rfcs/blob/master/text/0002-new-version-of-context.md"/>
<c:url var="legacyAPIUrl" value="https://reactjs.org/docs/legacy-context.html"/>
<c:url var="hocUrl" value="higher-order-components"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page forwarding-refs-page">
  <h1>3.16 Передача ссылок</h1>

  <br/>

  <p class="introduction">
    Передача ссылки - это метод для автоматической передачи <code>ref</code> через компонент к
    одному из его потомков. Обычно это не требуется для большинства компонентов приложения.
    Однако это может быть полезно для их некоторых видов, особенно в библиотеках
    компонентов для многоразового использования. Наиболее распространенные сценарии описаны ниже.
  </p>

  <br/>

  <a name="forwardingRefsToDOMComponents"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.16.1 Передача ссылок в компоненты DOM</h2>

  <br/>

  <wg:p>
    Рассмотрим компонент <code>FancyButton</code>, который отображает нативный
    DOM-элемент <code>button</code>:
  </wg:p>

  <ce:code-example-1/>

  <wg:p>
    Компоненты React скрывают свои детали реализации, включая результат отрисовки.
    Другие компоненты, использующие <code>FancyButton</code>, обычно не нуждаются в получении
    ссылки <code>ref</code> на внутренний DOM-элемент <code>button</code>. Это хорошо, так как мешает
    компонентам слишком сильно полагаться на DOM-структуру друг друга.
  </wg:p>

  <wg:p>
    Хотя такая инкапсуляция и желательна для компонентов уровня приложения, таких
    как <code>FeedStory</code> или <code>Comment</code>, она может оказаться неудобной для часто переиспользуемых
    «листовых» компонентов(листья дерева компонентов), таких как <code>FancyButton</code> или <code>MyTextInput</code>.
    Эти компоненты, как правило, используются во всем приложении аналогичным образом, как и
    обычные DOM-компоненты <code>button</code> и <code>input</code>, а доступ к их DOM-узлам может быть неизбежным для
    управления фокусировкой, выбором(тег <code>select</code>) или анимацией.
  </wg:p>

  <wg:p>
    <b>
      Передача ссылок (ref forwarding) - это дополнительная функция, позволяющая
      компонентам передавать получаемую ссылку <code>ref</code> дальше своему потомку.
    </b>
  </wg:p>

  <wg:p>
    В приведенном ниже примере компонент <code>FancyButton</code> использует <code>React.forwardRef</code> для получения
    переданной ему ссылки <code>ref</code> и последующей передачи её DOM кнопке <code>button</code>, которую он отображает:
  </wg:p>

  <ce:code-example-2/>

  <wg:p>
    Таким образом, компоненты, использующие <code>FancyButton</code>, смогут получить ссылку <code>ref</code> на DOM-узел <code>button</code>,
    а также, если это необходимо, и доступ к нему, как если бы они напрямую использовали <code>button</code>.
  </wg:p>

  <wg:p>
    Приведем пошаговое объяснение того, что происходит в приведенном выше примере:
  </wg:p>

  <wg:p>
    <ul>
      <li>Мы создаем React ссылку вызывая <code>React.createRef</code> и присваиваем её переменной myRef.</li>
      <li>Далее передаем нашу ссылку ниже в <code>&lt;FancyButton ref={myRef}&gt;</code>, указывая её как JSX атрибут <code>ref</code>.</li>
      <li>React передает ссылку в функцию <code>(props, ref) => ...</code> внутри <code>forwardRef</code> вторым аргументом.</li>
      <li>Мы передаем данный аргумент <code>ref</code> ниже в <code>&lt;button ref={ref}&gt;</code>, указывая его как JSX атрибут <code>ref</code>.</li>
      <li>Когда ссылка будет присоединена, <code>ref.current</code> будет указывать на DOM-узел <code>&lt;button&gt;</code>.</li>
    </ul>
  </wg:p>

  <app:alert type="warning" title="Внимание!">
    Второй аргумент <code>ref</code> передается только при определении компонента с помощью вызова <code>React.forwardRef</code>.
    Обычные компоненты-функции или компоненты-классы не получают аргумент <code>ref</code>. Он также недоступен и в свойствах <code>props</code>.
    <br/>
    <br/>
    Передача ссылок не ограничивается DOM-компонентами. Вы также можете передавать ссылки экземплярам компонентов-классов.
  </app:alert>

  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.16.2 Примечание для сопровождающих библиотеки компонентов</h2>

  <br/>

  <p>
    <b>Когда вы начнете использовать forwardRef в библиотеке компонентов, вы должны рассматривать
      это как ломающее изменение и выпускать новую major версию вашей библиотеки.</b> Это связано с тем,
    что ваша библиотека, вероятно, будет иметь отличающееся поведение (например, из-за того какие ссылки присваиваются
    и какие типы экспортируются). Это может нарушить работу существующих приложений и других
    библиотек, которые зависят от вашего старого поведения.
  </p>
  
  <ad:ad-content-banner-1/>

  <p>
    Условное применение <code>React.forwardRef</code>, если оно существует, также не рекомендуется по тем же
    причинам: оно меняет поведение вашей библиотеки и может нарушать работу приложений ваших
    пользователей при обновлении самого React.
  </p>

  <a name="forwardingRefsInHOC"></a>
  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.16.3 Передача ссылок в старшие компоненты</h2>

  <br/>

  <wg:p>
    Также данный подход может быть особенно полезен для <wg:link href="${hocUrl}">компонентов более высокого порядка</wg:link> (также известных как HOC).
    Начнем с примера HOC, который логирует свойства <code>props</code> компонента в консоли:
  </wg:p>

  <ce:code-example-3/>

  <wg:p>
    Старший компонент <code>LogProps</code> передает все свойства <code>props</code> компоненту, который он оборачивает,
    поэтому отображаемый результат не изменится. Например, мы можем использовать этот HOC для
    логирования всех свойств, которые передаются нашему компоненту <code>«fancy button»</code>:
  </wg:p>

  <ce:code-example-4/>

  <wg:p>
    В приведенном выше примере есть один подводный камень: ссылки <code>ref</code> передаваться не будут.
    Это происходит потому, что <code>ref</code> не является свойством. Подобно ключу <code>key</code>, ссылка <code>ref</code> обрабатывается React-ом по-другому.
    Если вы добавите ссылку <code>ref</code> в HOC, она будет ссылаться на самый внешний компонент-контейнер, а не на обернутый компонент.
  </wg:p>

  <wg:p>
    Это означает, что ссылки, предназначенные для нашего компонента <code>FancyButton</code>,
    будут на самом деле привязаны к компоненту <code>LogProps</code>:
  </wg:p>

  <ce:code-example-5/>

  <wg:p>
    К счастью, мы можем явно передать ссылки на внутренний компонент <code>FancyButton</code>,
    используя API <code>React.forwardRef</code>. <code>React.forwardRef</code> принимает render-функцию (функцию отрисовки),
    которая получает параметры <code>props</code> и <code>ref</code>, и возвращает узел React. Например:
  </wg:p>

  <ce:code-example-6/>

  <br/>
  <br/>
  <div class="gray-line"></div>
  <h2>3.16.4 Отображение пользовательского имени в DevTools</h2>

  <br/>

  <wg:p>
    <code>React.forwardRef</code> принимает функцию отрисовки (рендеринга). React DevTools использует эту
    функцию, чтобы определить, что отображать для компонента, передающего ссылку.
  </wg:p>

  <wg:p>Например, следующий компонент появится как «ForwardRef» в DevTools:</wg:p>

  <ce:code-example-7/>

  <wg:p>
    Если вы как-либо назовете функцию отрисовки, DevTools также
    добавит её имя (например, «ForwardRef(myFunction)»):
  </wg:p>

  <ce:code-example-8/>

  <wg:p>
    Вы даже можете указать свойство <code>displayName</code> для функции,
    чтобы добавить компонент, который вы оборачиваете:
  </wg:p>

  <ce:code-example-9/>
</lt:layout>

<c:url var="prevPageUrl" value="higher-order-components"/>
<c:url var="nextPageUrl" value="integrating-with-other-libraries"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>