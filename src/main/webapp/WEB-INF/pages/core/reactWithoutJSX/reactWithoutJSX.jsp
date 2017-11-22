<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/react-without-jsx" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.7 React без JSX</h1>

  <wg:p>JSX не является обязательным при использовании React. Использование React без JSX
    особенно удобно, если вы не хотите настраивать компиляцию в своей среде сборки.</wg:p>

  <wg:p>Каждый элемент JSX является просто синтаксическим сахаром для
    вызова <code>React.createElement(component, props, ...children)</code>. Так что, всё, что
    вы можете сделать с помощью JSX, также можно выполнить и с помощью простого JavaScript.</wg:p>

  <wg:p>Например, этот код, написанный с помощью JSX:</wg:p>

  <ce:code-example-1/>

  <wg:p>Может быть скомпилирован в код, который не использует JSX:</wg:p>

  <ce:code-example-2/>

  <wg:p>Если вы хотите увидеть больше примеров того, как JSX преобразуется
    в JavaScript, вы можете попробовать
    <wg:link href="https://babeljs.io/repl/#?babili=false&evaluate=true&lineWrap=false&presets=es2015%2Creact%2Cstage-0&targets=&browsers=&builtIns=false&debug=false&experimental=false&loose=false&spec=false&playground=true&code=function%20hello()%20%7B%0A%20%20return%20%3Cdiv%3EHello%20world!%3C%2">онлайн-компилятор Babel</wg:link>.</wg:p>

  <wg:p>Компонент может быть предоставлен в виде строки, в качестве подкласса
    <code>React.Component</code> или простой функции для компонентов без состояния.</wg:p>

  <wg:p>Если вам надоело каждый раз набирать руками <code>React.createElement</code>,
    можно использовать общий паттерн - назначить сокращенное название:</wg:p>

  <ce:code-example-3/>

  <wg:p>Если вы используете такую сокращенную форму для <code>React.createElement</code>, то
    использование React может оказаться почти таким же удобным и без JSX.</wg:p>

  <wg:p>Как альтернатива, вы можете ссылаться на комьюнити проекты, такие
    как
    <wg:link href="https://github.com/mlmorg/react-hyperscript">react-hyperscript</wg:link>  и
    <wg:link href="https://github.com/ohanhi/hyperscript-helpers">hyperscript-helpers</wg:link>,
    которые предлагают краткий синтаксис.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="react-without-es6"/>
<c:url var="nextPageUrl" value="reconciliation"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>