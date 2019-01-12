<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/file-structure" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="reactFiberArchitectureUrl" value="https://github.com/acdlite/react-fiber-architecture"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page virtual-dom-and-internals-page">
  <h1>Виртуальный DOM и внутренние механизмы</h1>

  <br/>
  <h3>Что такое виртуальный DOM?</h3>

  <wg:p>
    Виртуальный DOM (VDOM) - это концепция программирования, в которой идеальное или
    «виртуальное» представление пользовательского интерфейса хранится в памяти и
    синхронизируется с «реальным» DOM с помощью библиотеки, такой как ReactDOM. Данный
    процесс называется согласованием.
  </wg:p>

  <wg:p>
    Данный подход обеспечивается декларативным React API: вы говорите React, в
    каком состоянии должен находиться UI, и он гарантирует, что DOM соответствует
    этому состоянию. Это абстрагирует манипуляции с атрибутами, обработку событий и
    ручное обновление DOM, которые в противном случае вам пришлось бы использовать
    для создания вашего приложения.
  </wg:p>

  <wg:p>
    «Виртуальный DOM» является скорее паттерном, чем конкретной технологией. В мире React термин
    «виртуальный DOM» обычно ассоциируется с элементами React, поскольку они являются объектами,
    представляющими пользовательский интерфейс. React, однако, также использует внутренние объекты,
    называемые <b>«волокнами»</b>(«fibers»), для хранения дополнительной информации о дереве компонентов.
    Они также могут считаться частью реализации «виртуального DOM» в React.
  </wg:p>

  <br/>
  <h3>Shadow DOM такой же как и "Виртуальный DOM"?</h3>

  <wg:p>
    Нет, они разные. Shadow DOM - это технология браузера, разработанная в первую очередь
    для установки области видимости переменных и CSS в веб-компонентах. Виртуальный DOM - это концепция, реализованная
    JavaScript-библиотеками поверх API браузера.
  </wg:p>

  <br/>
  <h3>Что такое "React Fiber"?</h3>

  <wg:p>
    Fiber - это новый движок для согласования DOM в React 16. Его основная цель - обеспечить <b>инкрементную
    отрисовку</b>(incremental rendering) виртуального DOM.
    <wg:link href="${reactFiberArchitectureUrl}">Читайте больше</wg:link>.
  </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="versioning-policy"/>

<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"/>