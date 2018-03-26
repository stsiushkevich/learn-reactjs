<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/fragments" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>
<c:url var="frgJsxDemoUrl" value="https://codepen.io/reactjs/pen/VrEbjE?editors=1000"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page portals-page">
  <h1>3.10	Фрагменты</h1>

  <h2>3.10.1 Что такое фрагменты?</h2>

  <wg:p>Общим примером в React является компонент, возвращающий несколько элементов.
    Фрагменты позволяют группировать список потомков без добавления дополнительных узлов в DOM:</wg:p>

  <ce:code-example-1/>

  <wg:p>Существует и короткий синтаксис, но пока что его поддерживают
    не все популярные инструменты</wg:p>

  <br/>
  <h2>3.10.2 Мотивация</h2>

  <wg:p>
    Общим примером является компонент, который возвращает список дочерних элементов.
    Рассмотрим пример куска кода на React:
  </wg:p>

  <ce:code-example-2/>

  <wg:p>
    <code>&lt;Columns/&gt;</code> должен возвращать несколько элементов <code>&lt;td&gt;</code>, чтобы отображаемый HTML был
    валидным. Но в то же время, если внутри метода <code>render()</code> компонента <code>&lt;Columns/&gt;</code> будет
    добавлен родительский узел <code>&lt;div&gt;</code>, то результирующий HTML-код будет невалидным.
  </wg:p>

  <ce:code-example-3/>

  <wg:p>
    Результирующий вывод компонента <code>&lt;Table/&gt;</code> будет:
  </wg:p>

  <ce:code-example-4/>

  <wg:p>
    И тут на помощь приходят <b>фрагменты</b>.
  </wg:p>

  <br/>
  <h2>3.10.3 Использование</h2>

  <wg:p>
    В следующем примере мы объявляем фрагмент:
  </wg:p>

  <ce:code-example-5/>

  <wg:p>
    который приводит к валидному выводу компонента <code>&lt;Table/&gt;</code>:
  </wg:p>

  <ce:code-example-6/>

  <br/>
  <h3>3.10.3.1 Короткий синтаксис</h3>

  <wg:p>
    Существует новый, более короткий синтаксис, который можно использовать
    для объявления фрагментов. Он выглядит как пустые теги:
  </wg:p>

  <ce:code-example-7/>

  <wg:p>
    Вы можете использовать синтаксис <code>&lt;&gt;&lt;/&gt;</code> таким же образом, как и любой другой элемент,
    за исключением того, что он не поддерживает ключи и атрибуты.
  </wg:p>

  <wg:p>
    Обратите внимание, что многие инструменты его еще не поддерживают, поэтому
    вам пока остается явно писать <code>&lt;React.Fragment&gt;</code> и ожидать обновлений.
  </wg:p>

  <br/>
  <h3>3.10.3.2 Фрагменты с ключами</h3>

  <wg:p>
    Фрагменты, объявленные с явным синтаксисом <code>&lt;React.Fragment&gt;</code>, могут иметь ключи.
    Случай использования - маппинг коллекции в массив фрагментов - например, чтобы создать список описаний:
  </wg:p>

  <ce:code-example-8/>

  <wg:p>
    <code>key</code>- это единственный атрибут, который может быть передан фрагменту. В будущем разработчики могут
    добавить поддержку дополнительных атрибутов, таких как обработчики событий.
  </wg:p>

  <br/>
  <h2>3.10.4 Демо</h2>

  <wg:p>
    Вы можете попробовать новый JSX синтаксис фрагментов с помощью
    данного <wg:link href="${frgJsxDemoUrl}">CodePen</wg:link>.
  </wg:p>

</lt:layout>

<c:url var="prevPageUrl" value="context"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>