<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react" %>

<lt:layout cssClass="page hello-world-example-page">
  <wg:head size="3"><strong>4.1	React</strong></wg:head>

  <br/>
  <wg:head size="4"><strong>4.1.1	React Top-Level API</strong></wg:head>

  <wg:p>React - это точка входа в библиотеку React. Если вы загружаете
    React из тега <code>&lt;script&gt;</code>, эти API верхнего уровня доступны в глобальном
    объекте React. Если вы используете ES6 с npm, вы можете написать <code>import React from 'react'</code>.
    Если вы используете ES5 с <b>npm</b>, вы можете написать <code>var React = require('react')</code></wg:p>

  <br/>
  <wg:head size="4"><strong>4.1.1.1	Обзор</strong></wg:head>

  <br/>
  <wg:head size="5"><strong>4.1.1.1.1	Компоненты</strong></wg:head>

  <wg:p>React компоненты позволяют разделить UI на самостоятельные, многоразовые
    фрагменты и работать с каждой частью отдельно. React компоненты могут быть определены
    с помощью подкласса <code>React.Component</code> или <code>React.PureComponent</code>.</wg:p>

  <wg:p>
    <ul>
      <li><code>React.Component</code></li>
      <li><code>React.PureComponent</code></li>
    </ul>
  </wg:p>

  <%--todo LINK--%>
  <wg:p>Если вы не используете классы ES6, вы можете вместо этого использовать
    модуль <code>create-react-class</code>. Дополнительную информацию см. в разделе
    <wg:link href="">Использование React без ES6</wg:link>.</wg:p>

  <br/>
  <wg:head size="5"><strong>4.1.1.1.2	Создание React элементов</strong></wg:head>

  <wg:p>Рекомендуется использовать JSX для описания того, как должен выглядеть
    ваш пользовательский интерфейс. Каждый элемент JSX является просто синтаксическим
    сахаром для вызова <code>React.createElement()</code>. Как правило, вы не будете использовать
    следующие методы, если используете JSX.</wg:p>

  <wg:p>
    <ul>
      <li><code>createElement()</code></li>
      <li><code>createFactory()</code></li>
    </ul>
  </wg:p>

  <%--todo LINK--%>
  <wg:p>Дополнительную информацию см. в разделе <wg:link href="">React без JSX</wg:link>.</wg:p>

  <br/>
  <wg:head size="5"><strong>4.1.1.1.3	Преобразование элементов</strong></wg:head>

  <wg:p>React также предоставляет некоторые другие API:</wg:p>

  <wg:p>
    <ul>
      <li><code>cloneElement()</code></li>
      <li><code>isValidElement()</code></li>
      <li><code>React.Children</code></li>
    </ul>
  </wg:p>

  <br/>
  <wg:head size="4"><strong>4.1.1.2	Справка</strong></wg:head>

  <rf:definition title="React.Component">
    <wg:p>
      React.Component является базовым классом для компонентов React, когда они определены
      с использованием классов ES6.
    </wg:p>

    <ce:code-example-1/>

    <wg:p>
      См. справочник <wg:link href="">API React.Component</wg:link> для поиска методов и свойств, связанных
      с базовым классом <code>React.Component</code>.
    </wg:p>
  </rf:definition>

  <rf:definition title="React.PureComponent">
    <wg:p><code>React.PureComponent</code> такой же, как и <code>React.Component</code>, но реализует
      <code>shouldComponentUpdate()</code> с поддержкой неглубокого сравнения свойств и состояния.</wg:p>

    <wg:p>Если метод <code>render()</code> компонента React отображает тот же результат с теми же свойствами и
      состоянием, вы в некоторых случаях можете использовать <code>React.PureComponent</code>
      для повышения производительности.</wg:p>

    <app:alert type="warning" title="Замечание!">
      Метод <code>shouldComponentUpdate()</code> компонента <code>React.PureComponent</code> только поверхностно
      сравнивает объекты. Если они содержат сложные структуры данных, это может
      привести к ложным отрицаниям для более глубоких сравнений. Расширяйте PureComponent
      только в том случае, если вы будете иметь простые свойства и состояние, или
      используйте <code>forceUpdate()</code>, когда вы знаете, что изменились структуры данных. Или
      рассмотрите возможность использования неизменяемых объектов для быстрого сравнения вложенных данных.
      <wg:p>
        Кроме того, метод <code>shouldComponentUpdate()</code> компонента <code>React.PureComponent</code>
        пропускает обновления свойств для всего поддерева компонента. Убедитесь, что все дочерние
        компоненты также «чисты».
      </wg:p>
    </app:alert>
  </rf:definition>

  <rf:definition title="createElement()">
    <ce:code-example-2/>

    <wg:p>Создаёт и возвращает новый элемент React указанного типа. Типизированный
      аргумент может быть либо строкой имени тега (например, <code>'div'</code> или <code>'span'</code>), либо
      типом компонента React (класс или функция).</wg:p>

    <wg:p>Удобные оболочки  вокруг <code>React.createElement()</code> для компонентов DOM
      предоставляются <code>React.DOM</code>. Например, <code>React.DOM.a(...)</code> является удобной
      оболочкой для <code>React.createElement('a', ...)</code>. Они считаются устаревшими,
      и мы рекомендуем вам либо использовать JSX, либо
      использовать <code>React.createElement()</code> напрямую.</wg:p>

    <%--todo LINK--%>
    <wg:p>Код, написанный с помощью JSX, будет конвертирован в вызовы <code>React.createElement()</code>.
      Обычно вы не вызываете <code>React.createElement()</code>, если используете JSX.
      См. <wg:link href="">React без JSX</wg:link>, чтобы узнать больше.</wg:p>
  </rf:definition>

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
