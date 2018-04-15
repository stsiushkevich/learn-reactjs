<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/forwarding-refs" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>
<c:url var="codemodeUrl" value="https://reactjs.org/blog/2017/04/07/react-v15.5.0.html#migrating-from-react.proptypes"/>
<c:url var="newReleaseUrl" value="https://github.com/reactjs/rfcs/blob/master/text/0002-new-version-of-context.md"/>
<c:url var="legacyAPIUrl" value="https://reactjs.org/docs/legacy-context.html"/>
<c:url var="hocUrl" value="higher-order-components"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page forwarding-refs-page">
  <h1>3.16 Передача ссылок</h1>

  <wg:p>
    Передача ссылки - это метод для автоматической передачи <code>ref</code> через компонент к
    одному из его потомков. Обычно это не требуется для большинства компонентов приложения.
    Однако это может быть полезно для их некоторых видов, особенно в библиотеках
    компонентов для многоразового использования. Наиболее распространенные сценарии описаны ниже.
  </wg:p>

  <br/>
  <h2>3.16.1 Передача ссылок в компоненты DOM</h2>

  <wg:p>
    Рассмотрим компонент <code>FancyButton</code>, который отображает нативный
    DOM элемент <code>button</code>:
  </wg:p>

  <ce:code-example-1/>

  <wg:p>
    Компоненты React скрывают свои детали реализации, включая результат отрисовки.
    Другие компоненты, использующие <code>FancyButton</code>, обычно не нуждаются в получении
    ссылки <code>ref</code> на внутренний DOM элемент <code>button</code>. Это хорошо, так как мешает
    компонентам слишком сильно полагаться на DOM структуру друг друга.
  </wg:p>

  <wg:p>
    Хотя такая инкапсуляция и желательна для компонентов уровня приложения, таких
    как <code>FeedStory</code> или <code>Comment</code>, она может оказаться неудобной для часто переиспользуемых
    «листовых» компонентов(листья дерева компонентов), таких как <code>FancyButton</code> или <code>MyTextInput</code>.
    Эти компоненты, как правило, используются во всем приложении аналогичным образом, как и
    обычные DOM компоненты <code>button</code> и <code>input</code>, а доступ к их DOM узлам может быть неизбежным для
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
    Таким образом, компоненты, использующие <code>FancyButton</code>, смогут получить ссылку <code>ref</code> на DOM узел <code>button</code>,
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
      <li>Когда ссылка будет присоединена, <code>ref.current</code> будет указывать на DOM узел <code>&lt;button&gt;</code>.</li>
    </ul>
  </wg:p>

  <app:alert type="warning" title="Внимание!">
    Второй аргумент <code>ref</code> передается только при определении компонента с помощью вызова <code>React.forwardRef</code>.
    Обычные компоненты-функции или компоненты-классы не получают аргумент <code>ref</code>. Он также недоступен и в свойствах <code>props</code>.
    <br/>
    <br/>
    Передача ссылок не ограничивается DOM компонентами. Вы также можете передавать ссылки экземплярам компонентов-классов.
  </app:alert>

  <br/>
  <h2>3.16.2 Передача ссылок в старшие компоненты</h2>

  <wg:p>
    Также данный подход может быть особенно полезен для <wg:link href="${hocUrl}">компонентов более высокого порядка</wg:link> (также известных как HOC).
    Начнем с примера HOC, который логирует свойства <code>props</code> компонента в консоли:
  </wg:p>

  <ce:code-example-3/>

  <wg:p>
    Старший компонент <code>logProps</code> передает все свойства <code>props</code> через компонент, который он оборачивает,
    поэтому отображаемый результат не изменится. Например, мы можем использовать этот HOC для
    логирования всех свойств, которые передаются нашему компоненту <code>«fancy button»</code>:
  </wg:p>

  <ce:code-example-4/>

  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>
  <wg:p></wg:p>


</lt:layout>

<c:url var="prevPageUrl" value="reconciliation"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>