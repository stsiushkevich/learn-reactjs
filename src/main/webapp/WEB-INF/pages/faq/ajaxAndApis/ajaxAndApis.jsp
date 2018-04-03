<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/ajax-and-apis" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="windowFetchUrl" value="https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page ajax-and-apis">
  <h1>AJAX и API</h1>

  <br/>
  <h3>Как я могу построить AJAX вызов?</h3>

  <wg:p>
    Вместе с React Вы можете использовать любую AJAX-библиотеку, которая вам нравится.
    Некоторые популярные - это Axios, jQuery AJAX и встроенный в браузер
    инструмент <wg:link href="${windowFetchUrl}">window.fetch</wg:link>.
  </wg:p>

  <br/>
  <h3>Где в жизненном цикле компонента мне следует сделать вызов AJAX?</h3>

  <wg:p>
    Чтобы запрашивать данные с помощью AJAX запросов, следует использовать метод жизненного
    цикла <code>componentDidMount</code>. Затем, когда данные прибудут с сервера, вы сможете
    использовать <code>setState</code> для обновления состояния вашего компонента.
  </wg:p>

  <br/>
  <h3>Пример: использование результата AJAX запроса для обновления локального состояния компонента.</h3>

  <wg:p>
    Компонент ниже демонстрирует, как сделать вызов AJAX в <code>componentDidMount</code>
    для последующего обновления своего локального состояния.
  </wg:p>

  <wg:p>Пример API возвращает объект JSON следующего вида:</wg:p>

  <ce:code-example-1/>
  <ce:code-example-2/>

  <br/>
  <h3>Отмена AJAX запроса</h3>

  <wg:p>
    Обратите внимание, что если компонент демонтируется до завершения вызова AJAX,
    вы можете увидеть предупреждение <code>cannot read property 'setState' of undefined</code>.
    Если эта проблема появилась, вы можете отследить запросы AJAX и отменить их
    в методе жизненного цикла <code>componentWillUnmount</code>.
  </wg:p>
</lt:layout>

<c:url var="nextPageUrl" value="babel-and-jsx"/>
<app:page-navigate pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>