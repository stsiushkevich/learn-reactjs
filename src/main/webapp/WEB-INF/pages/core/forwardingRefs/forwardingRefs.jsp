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
      Передача ссылок (ref forwarding) - это дополнительная функция, позволяющая некоторым
      компонентам брать ссылку <code>ref</code>, которую они получают, и передавать её дальше своему потомку.
    </b>
  </wg:p>

  <wg:p>
    В приведенном ниже примере компонент <code>FancyButton</code> использует <code>React.forwardRef</code> для получения
    переданной ему ссылки <code>ref</code>, а затем передает её DOM кнопке <code>button</code>, которую он отображает:
  </wg:p>

  <ce:code-example-2/>

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