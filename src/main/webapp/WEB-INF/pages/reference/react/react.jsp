<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/react" %>

<c:url var="updatesReact16_2_0Url" value="/updates/react-v16.2.0-fragments-improved-support"/>
<c:url var="forwardingRefsToDOMComponentsUrl" value="/core/forwarding-refs#forwardingRefsToDOMComponents"/>
<c:url var="forwardingRefsInHOCUrl" value="/core/forwarding-refs#forwardingRefsInHOC"/>
<c:url var="forwardingRefsUrl" value="/core/forwarding-refs"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>4.1 React</h1>

  <br/>

  <p class="introduction">React - это точка входа в библиотеку React. Если вы загружаете
    React из тега <code>&lt;script&gt;</code>, эти API верхнего уровня доступны в глобальном
    объекте React. Если вы используете ES6 с npm, вы можете написать <code>import React from 'react'</code>.
    Если вы используете ES5 с <b>npm</b>, вы можете написать <code>var React = require('react')</code></p>

  <br/>
  <h2>4.1.1	React Top-Level API</h2>

  <br/>
  <h3>4.1.1.1	Обзор</h3>

  <br/>
  <h4>4.1.1.1.1	Компоненты</h4>

  <wg:p>React-компоненты позволяют разделить UI на самостоятельные, многоразовые
    фрагменты и работать с каждой частью отдельно. React-компоненты могут быть определены
    с помощью подкласса <code>React.Component</code> или <code>React.PureComponent</code>.</wg:p>

  <wg:p>
    <ul>
      <li><p><a href="#react.component"><b>React.Component</b></a></p></li>
      <li><p><a href="#react.pure-component"><b>React.PureComponent</b></a></p></li>
    </ul>
  </wg:p>

  <c:url var="reactWithoutES6Url" value="/core/react-without-es6"/>
  <wg:p>Если вы не используете классы ES6, вы можете вместо этого использовать
    модуль <code>create-react-class</code>. Дополнительную информацию см. в разделе
    <wg:link href="${reactWithoutES6Url}">Использование React без ES6</wg:link>.</wg:p>

  <p>
    Компоненты React также могут быть определены как функции, которые могут быть упакованы в:
  </p>

  <ul>
    <li><code>React.memo</code></li>
  </ul>

  <br/>
  <h4>4.1.1.1.2	Создание React-элементов</h4>

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

	<c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
  <wg:p>Дополнительную информацию см. в разделе <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link>.</wg:p>

  <br/>
  <h4>4.1.1.1.3	Преобразование элементов</h4>

  <wg:p>React также предоставляет некоторые другие API:</wg:p>

  <wg:p>
    <ul>
      <li><code>cloneElement()</code></li>
      <li><code>isValidElement()</code></li>
      <li><code>React.Children</code></li>
    </ul>
  </wg:p>
  
  <br/>
  <h4>4.1.1.1.4	Фрагменты</h4>
  
  <wg:p>React также предоставляет компонент для отрисовки множества элементов без обёртки:</wg:p>
  
  <wg:p>
    <ul>
      <li><code>React.Fragment</code></li>
    </ul>
  </wg:p>
  
  <br/>
  <h4>4.1.1.1.5	Ссылки</h4>
  
  <wg:p>
    <ul>
      <li><code>React.createRef</code></li>
      <li><code>React.forwardRef</code></li>
    </ul>
  </wg:p>

  <br/>
  <h3>4.1.1.2	Справка</h3>

  <a name="react.component"></a>
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

  <a name="react.pure-component"></a>
  <rf:definition title="React.PureComponent">
    <wg:p><code>React.PureComponent</code> такой же, как и <code>React.Component</code>, но реализует
      <code>shouldComponentUpdate()</code> с поддержкой неглубокого сравнения свойств и состояния.</wg:p>

    <wg:p>Если метод <code>render()</code> компонента React отображает тот же результат с теми же свойствами и
      состоянием, вы в некоторых случаях можете использовать <code>React.PureComponent</code>
      для повышения производительности.</wg:p>

    <app:alert type="warning" title="Замечание.">
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

	  <c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
    <wg:p>Код, написанный с помощью JSX, будет конвертирован в вызовы <code>React.createElement()</code>.
      Обычно вы не вызываете <code>React.createElement()</code>, если используете JSX.
      См. <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link>, чтобы узнать больше.</wg:p>
  </rf:definition>

  <rf:definition title="cloneElement()">
    <ce:code-example-3/>

    <wg:p>Клонировать и вернуть новый элемент React, используя <code>element</code> в качестве
      отправной точки. Получившийся элемент будет иметь свойства оригинального элемента
      с новыми свойствами, смердженными неглубоко. Новые потомки заменят существующих потомков.
      <code>key</code> и <code>ref</code> из исходного элемента будут сохранены.</wg:p>

    <wg:p><code>React.cloneElement()</code> почти эквивалентен:</wg:p>

    <ce:code-example-4/>

    <wg:p>Однако он также сохраняет и ссылки. Это означает, что если вы
      получите потомка с <code>ref</code> на нем, вы не сможете случайно украсть этот
      атрибут у своего предка. Вы получите тот же <code>ref</code>, присоединенный
      к вашему новому элементу.</wg:p>

    <wg:p>Этот API был введен как замена устаревшего <code>React.addons.cloneWithProps()</code>.</wg:p>
  </rf:definition>

  <rf:definition title="createFactory()">
    <ce:code-example-5/>

    <wg:p>Возвращает функцию, которая создает элементы React данного типа. Подобно
      <code>React.createElement()</code>, аргумент типа может быть либо строкой имени
      тега (например, <code>'div'</code> или <code>'span'</code>), либо типом
      компонента React (класс или функция).</wg:p>

    <wg:p><code>React.cloneElement()</code> почти эквивалентен:</wg:p>

    <wg:p>Этот помощник считается устаревшим. Вместо него рекомендуется использовать
      либо JSX, либо <code>React.createElement()</code>.</wg:p>

	  <c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
    <wg:p>Как правило, вы не вызываете <code>React.createFactory()</code>, если используете JSX.
      См. <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link> , чтобы узнать больше.</wg:p>
  </rf:definition>

  <rf:definition title="isValidElement()">
  <ce:code-example-6/>

  <wg:p>Проверяет, является ли объект элементом React. Возвращает <code>true</code> или <code>false</code>.</wg:p>
  </rf:definition>

  <rf:definition title="React.Children">

  <wg:p><code>React.Children</code> предоставляет утилиты для работы с непрозрачной
    структурой данных <code>this.props.children</code>.</wg:p>
  </rf:definition>

 <rf:definition title="React.Children.map">
   <ce:code-example-7/>

  <wg:p>Вызывает функцию для каждого дочернего элемента, содержащегося в <code>children</code>,
    с <code>this</code> установленным в <code>thisArg</code>. Если <code>children</code> представляют собой фрагмент или
    массив с ключами, он будет пройден. Если <code>children</code> имеет значение <code>null</code> или <code>undefined</code>,
    возвращается значение <code>null</code> или <code>undefined</code>, а не массив.</wg:p>
  </rf:definition>

 <rf:definition title="React.Children.forEach">
   <ce:code-example-8/>

  <wg:p>То же, что и <code>React.Children.map()</code>, но не возвращает массив.</wg:p>
  </rf:definition>

  <rf:definition title="React.Children.count">
   <ce:code-example-9/>

  <wg:p>Возвращает общее количество компонентов в <code>children</code>,
    равное количеству раз, которое будет вызван коллбэк, переданный
    для <code>map</code> или <code>forEach</code>.</wg:p>
  </rf:definition>

  <rf:definition title="React.Children.only">
   <ce:code-example-10/>

    <wg:p>Проверяет, что <code>children</code> имеет только одного потомка
    (React-элемент) и возвращает его. Иначе выбрасывает исключение.</wg:p>

    <br/>
    <app:alert type="warning" title="Замечание.">
      <code>React.Children.only()</code> не принимает значение, возвращаемое
      <code>React.Children.map()</code>, потому что оно является массивом, а не элементом React.
    </app:alert>
  </rf:definition>

  <rf:definition title="React.Children.toArray">
   <ce:code-example-11/>

  <wg:p>Возвращает непрозрачную структуру данных <code>children</code> как плоский массив с ключами,
    назначенными каждому потомку. Это полезно, если вы хотите манипулировать коллекциями
    потомков в ваших методах отрисовки, особенно если вы хотите изменить порядок или
    обрезать <code>this.props.children</code>, прежде чем передавать его.</wg:p>

    <app:alert type="warning" title="Внимание!">
      <code>React.Children.toArray()</code> изменяет ключи, чтобы сохранить семантику вложенных
      массивов при выравнивании списков потомков. То есть <code>toArray</code> будет являться
      префиксом каждого ключа в возвращаемом массиве, так что ключ каждого элемента
      получает пространство имен содержащего его входного массива.
    </app:alert>
  </rf:definition>
  
  <rf:definition title="React.Fragment">
    <wg:p>Компонент <code>React.Fragment</code> позволяет возвращать множество элементов
      из метода <code>render()</code> без создания дополнительного элемента DOM:</wg:p>
  
    <ce:code-example-12/>
    
    <wg:p>
      Вы также можете использовать сокращенный синтаксис <code>&lt;&gt;&lt;/&gt;</code>. Для получения
      дополнительной информации см. <wg:link href="${updatesReact16_2_0Url}">React v16.2.0: Улучшенная поддержка фрагментов.</wg:link>
    </wg:p>
  </rf:definition>
  
  <rf:definition title="React.createRef">
    <wg:p><code>React.createRef</code> создает ссылку, которая может быть
      присоединена к элементу React с помощью атрибута <code>ref</code>:</wg:p>
    
    <ce:code-example-13/>
  </rf:definition>
  
  <rf:definition title="React.forwardRef">
    <wg:p><code>React.forwardRef</code> создает компонент React, передающий атрибут <code>ref</code>,
      который он сам же получает, другому компоненту, расположенному ниже в дереве.
      Несмотря на то, что этот подход не очень распространен, он особенно полезен в
      двух сценариях:</wg:p>
    
    <wg:p>
      <ul>
        <li><wg:link href="${forwardingRefsToDOMComponentsUrl}">Передача ссылок в компоненты DOM</wg:link></li>
        <li><wg:link href="${forwardingRefsInHOCUrl}">Передача ссылок в старшие компоненты</wg:link></li>
      </ul>
    </wg:p>
        
    <wg:p>
      <code>React.forwardRef</code> принимает функцию отрисовки в качестве аргумента.
      React вызовет эту функцию с двумя аргументами <code>props</code> и <code>ref</code>. Эта функция
      должна возвращать узел React.
    </wg:p>
  
    <ce:code-example-14/>
    
    <wg:p>
      В приведенном выше примере React передает ссылку <code>ref</code>, переданную
      элементу <code>&lt;FancyButton ref = {ref}&gt;</code>, функции отрисовки внутри вызова
      <code>React.forwardRef</code> в качестве второго аргумента. Затем эта функция
      передает <code>ref</code> в элемент <code>&lt;button ref = {ref}&gt;</code>.
    </wg:p>
    
    <wg:p>
      В результате после того, как React присоединит <code>ref</code>, <code>ref.current</code>
      будет указывать непосредственно на элемент <code>&lt;button&gt;</code> DOM.
    </wg:p>
    
    <wg:p>
      Для получения дополнительной информации см. раздел
      <wg:link href="${forwardingRefsUrl}">Передача ссылок.</wg:link>
    </wg:p>
  </rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="/core/topics"/>
<c:url var="nextPageUrl" value="react-component"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>
