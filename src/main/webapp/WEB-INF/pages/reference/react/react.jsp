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
<c:url var="codeSplittingReactLazyUrl" value="/core/code-splitting#react.lazy"/>
<c:url var="referenceReactComponentUrl" value="/reference/react-component"/>
<c:url var="optimizingPerformanceUrl" value="/core/optimizing-performance"/>
<c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
<c:url var="codeSplittingReactLazyArticleUrl" value="https://hackernoon.com/lazy-loading-and-preloading-components-in-react-16-6-804de091c82d"/>
<c:url var="reactV16XRoadMapUrl" value="/updates/react-v16.x-road-map"/>

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
    <li><p><a href="#react.memo"><b>React.memo</b></a></p></li>
  </ul>

  <br/>
  <h4>4.1.1.1.2	Создание React-элементов</h4>

  <wg:p>Рекомендуется использовать JSX для описания того, как должен выглядеть
    ваш пользовательский интерфейс. Каждый элемент JSX является просто синтаксическим
    сахаром для вызова <code>React.createElement()</code>. Как правило, вы не будете использовать
    следующие методы, если используете JSX.</wg:p>

  <wg:p>
    <ul>
      <li><p><a href="#react.create-element"><b>createElement()</b></a></p></li>
      <li><p><a href="#react.create-factory"><b>createFactory()</b></a></p></li>
    </ul>
  </wg:p>

	<c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
  <p>Дополнительную информацию см. в разделе <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link>.</p>

  <br/>
  <h4>4.1.1.1.3	Преобразование элементов</h4>

  <wg:p><code>React</code> также различные API для манипуляции элементами:</wg:p>

  <wg:p>
    <ul>
      <li><p><a href="#react.clone-element"><b>cloneElement()</b></a></p></li>
      <li><p><a href="#react.is-valid-element"><b>isValidElement()</b></a></p></li>
      <li>
        <p><a href="#react.children"><b>React.Children</b></a></p>
        <ul>
          <li><p><a href="#react.children.map"><b>React.Children.map</b></a></p></li>
          <li><p><a href="#react.children.for-each"><b>React.Children.forEach</b></a></p></li>
          <li><p><a href="#react.children.count"><b>React.Children.count</b></a></p></li>
          <li><p><a href="#react.children.only"><b>React.Children.only</b></a></p></li>
          <li><p><a href="#react.children.to-array"><b>React.Children.toArray</b></a></p></li>
        </ul>
      </li>
    </ul>
  </wg:p>
  
  <br/>
  <h4>4.1.1.1.4	Фрагменты</h4>
  
  <wg:p><code>React</code> также предоставляет компонент для отрисовки множества элементов без обёртки:</wg:p>
  
  <wg:p>
    <ul>
      <li><p><a href="#react.fragment"><b>React.Fragment</b></a></p></li>
    </ul>
  </wg:p>
  
  <br/>
  <h4>4.1.1.1.5	Ссылки</h4>
  
  <wg:p>
    <ul>
      <li><p><a href="#react.create-ref"><b>React.createRef</b></a></p></li>
      <li><p><a href="#react.forward-ref"><b>React.forwardRef</b></a></p></li>
    </ul>
  </wg:p>

  <br/>
  <h4>4.1.1.1.6	Приостановка (Suspense)</h4>

  <p>
    Приостановка позволяет компонентам «подождать» что-либо перед отрисовкой.
    Сегодня приостановка поддерживает только один вариант использования: <a href="${codeSplittingReactLazyUrl}"><b>динамическая
  загрузка компонентов с помощью React.lazy</b></a>. В будущем она будет поддерживать и другие
    варианты использования, такие как выборка данных.
  </p>

  <wg:p>
    <ul>
      <li><p><a href="#react.lazy"><b>React.lazy</b></a></p></li>
      <li><p><a href="#react.suspense"><b>React.Suspense</b></a></p></li>
    </ul>
  </wg:p>

  <br/>
  <h3>4.1.1.2	Справка</h3>

  <a name="react.component"></a>
  <rf:definition title="React.Component">
    <wg:p>
      <code>React.Component</code> является базовым классом для компонентов React, когда они определены
      с использованием классов ES6.
    </wg:p>

    <ce:code-example-1/>

    <wg:p>
      См. справочник <a href="${referenceReactComponentUrl}"><b>API React.Component</b></a> для поиска методов и свойств, связанных
      с базовым классом <code>React.Component</code>.
    </wg:p>
  </rf:definition>

  <a name="react.pure-component"></a>
  <rf:definition title="React.PureComponent">
    <wg:p><code>React.PureComponent</code> такой же, как и <code>React.Component</code>. Разница между ними заключается в
      том, что <code>React.Component</code> не реализует <code>shouldComponentUpdate()</code>, а <code>React.PureComponent</code>
      реализует его с помощью неглубокого сравнения свойств и состояния.</wg:p>

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

  <a name="react.memo"></a>
  <rf:definition title="React.memo">
    <ce:code-example-1.1/>

    <p><code>React.memo</code> является компонентом более высокого порядка. Он
      похож на <code>React.PureComponent</code>, но предназначен для компонентов-функций.</p>

    <p>Если ваш компонент-функция отображает один и тот же результат при
      неизменных <code>props</code>, вы можете заключить его в вызов <code>React.memo</code> для повышения
      производительности в некоторых случаях, мемоизируя результат. Это означает,
      что React пропустит отрисовку компонента, повторно используя последний
      результат отрисовки.</p>

    <p>
      По умолчанию он только поверхностно сравнивает сложные объекты в объекте <code>props</code>.
      Если вы всё же хотите контролировать сравнение, вы также можете предоставить
      пользовательскую функцию сравнения в качестве второго аргумента.
    </p>

    <ce:code-example-1.2/>

    <p>
      Этот метод существует только для <a href="${optimizingPerformanceUrl}"><b>оптимизации производительности</b></a>.
      Не полагайтесь на него, чтобы «предотвратить» отрисовку, так как
      это может привести к ошибкам.
    </p>

    <app:alert title="Внимание!" type="warning">
      В отличие от метода <code>shouldComponentUpdate()</code> для компонентов классов,
      функция <code>areEqual</code> возвращает значение <code>true</code>, если <code>props</code> равны, и значение <code>false</code>,
      если значения не равны. Это инверсия <code>shouldComponentUpdate</code>.
    </app:alert>

  </rf:definition>

  <a name="react.create-element"></a>
  <rf:definition title="createElement()">
    <ce:code-example-2/>

    <wg:p>Создаёт и возвращает новый элемент React указанного типа. Типизированный
      аргумент может быть либо строкой имени тега (например, <code>'div'</code> или <code>'span'</code>), либо
      типом компонента React (класс или функция), либо фрагментом React.</wg:p>

    <wg:p>Код, написанный с помощью JSX, будет конвертирован в вызовы <code>React.createElement()</code>.
      Обычно вы не вызываете <code>React.createElement()</code>, если используете JSX.
      См. <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link>, чтобы узнать больше.</wg:p>
  </rf:definition>

  <a name="react.clone-element"></a>
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

  <a name="react.create-factory"></a>
  <rf:definition title="createFactory()">
    <ce:code-example-5/>

    <wg:p>Возвращает функцию, которая создает элементы React данного типа. Подобно
      <code>React.createElement()</code>, аргумент типа может быть либо строкой имени
      тега (например, <code>'div'</code> или <code>'span'</code>), либо типом
      компонента React (класс или функция), либо фрагментом React.</wg:p>

    <wg:p>Этот помощник считается устаревшим. Вместо него рекомендуется использовать
      либо JSX, либо <code>React.createElement()</code>.</wg:p>

	  <c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
    <wg:p>Как правило, вы не вызываете напрямую <code>React.createFactory()</code>, если используете JSX.
      См. <wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link> , чтобы узнать больше.</wg:p>
  </rf:definition>

  <a name="react.is-valid-element"></a>
  <rf:definition title="isValidElement()">
  <ce:code-example-6/>

  <wg:p>Проверяет, является ли объект элементом React. Возвращает <code>true</code> или <code>false</code>.</wg:p>
  </rf:definition>

  <a name="react.children"></a>
  <rf:definition title="React.Children">

  <wg:p><code>React.Children</code> предоставляет утилиты для работы с непрозрачной
    структурой данных <code>this.props.children</code>.</wg:p>
  </rf:definition>

  <a name="react.children.map"></a>
 <rf:definition title="React.Children.map">
   <ce:code-example-7/>

  <wg:p>Вызывает функцию для каждого дочернего элемента, содержащегося в <code>children</code>,
    с <code>this</code> установленным в <code>thisArg</code>. Если <code>children</code> представляет собой
    массив, он будет пройден и функция будет вызвана для каждого его элемента.
    Если <code>children</code> имеет значение <code>null</code> или <code>undefined</code>,
    метод вернет значение <code>null</code> или <code>undefined</code>, а не массив.</wg:p>

   <app:alert title="Внимание!" type="warning">
     Если <code>children</code> - это <code>Fragment</code>, он будет
     рассматриваться как единичный потомок и не будет пройден.
   </app:alert>

 </rf:definition>

  <a name="react.children.for-each"></a>
 <rf:definition title="React.Children.forEach">
   <ce:code-example-8/>

  <wg:p>То же, что и <code>React.Children.map()</code>, но не возвращает массив.</wg:p>
  </rf:definition>

  <a name="react.children.count"></a>
  <rf:definition title="React.Children.count">
   <ce:code-example-9/>

  <wg:p>Возвращает общее количество компонентов в <code>children</code>,
    равное количеству раз, которое будет вызван коллбэк, переданный
    для <code>map</code> или <code>forEach</code>.</wg:p>
  </rf:definition>

  <a name="react.children.only"></a>
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

  <a name="react.children.to-array"></a>
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

  <a name="react.fragment"></a>
  <rf:definition title="React.Fragment">
    <wg:p>Компонент <code>React.Fragment</code> позволяет возвращать множество элементов
      из метода <code>render()</code> без создания дополнительного элемента DOM:</wg:p>
  
    <ce:code-example-12/>
    
    <p>
      Вы также можете использовать сокращенный синтаксис <code>&lt;&gt;&lt;/&gt;</code>. Для получения
      дополнительной информации см. <a href="${updatesReact16_2_0Url}"><b>React v16.2.0: Улучшенная
      поддержка фрагментов</b>.</a>
    </p>
  </rf:definition>

  <a name="react.create-ref"></a>
  <rf:definition title="React.createRef">
    <wg:p><code>React.createRef</code> создает ссылку, которая может быть
      присоединена к элементу React с помощью атрибута <code>ref</code>:</wg:p>
    
    <ce:code-example-13/>
  </rf:definition>

  <a name="react.forward-ref"></a>
  <rf:definition title="React.forwardRef">
    <wg:p><code>React.forwardRef</code> создает компонент React, передающий атрибут <code>ref</code>,
      который он сам же получает, другому компоненту, расположенному ниже в дереве.
      Несмотря на то, что этот подход не очень распространен, он особенно полезен в
      двух сценариях:</wg:p>
    
    <wg:p>
      <ul>
        <li><p><a href="${forwardingRefsToDOMComponentsUrl}"><b>Передача ссылок в компоненты DOM</b></a></p></li>
        <li><p><a href="${forwardingRefsInHOCUrl}"><b>Передача ссылок в старшие компоненты</b></a></p></li>
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
      <a href="${forwardingRefsUrl}"><b>Передача ссылок</b>.</a>
    </wg:p>
  </rf:definition>

  <a name="react.lazy"></a>
  <rf:definition title="React.lazy">
    <p>
      <code>React.lazy()</code> позволяет вам определять компонент, который загружается динамически.
      Это помогает уменьшить размер бандла, отложив загрузку компонентов, которые не
      используются во время начальной отрисовки.
    </p>

    <p>
      Более подробно о его использовании вы можете узнать из раздела документации
      по <b><a href="${codeSplittingReactLazyUrl}">разделению кода</a></b>. Также можете
      изучить <b><a href="${codeSplittingReactLazyArticleUrl}">эту статью</a></b>.
    </p>

    <ce:code-example-15/>

    <p>
      Обратите внимание, что для отрисовки ленивых компонентов
      требуется, чтобы в отрисовываемом дереве находился компонент &lt;React.Suspense&gt;.
      К тому же с его помощью вы можете указать индикатор загрузки.
    </p>

  </rf:definition>

  <a name="react.suspense"></a>
  <rf:definition title="React.Suspense">
    <p>
      <code>React.Suspense</code> позволяет указать индикатор загрузки в случае,
      если некоторые компоненты в дереве под ним еще не готовы к отрисовке
      (подгружаются). Сегодня отложенная загрузка компонентов - это единственный
      вариант использования, поддерживаемый <code>&lt;React.Suspense&gt;</code>:
    </p>

    <ce:code-example-16/>

    <p>
      Это задокументировано в разделе по <b><a href="${codeSplittingReactLazyUrl}">разбиению кода</a></b>. Обратите внимание,
      что ленивые компоненты могут быть глубоко внутри дерева <code>Suspense</code> - ему не
      обязательно оборачивать каждый из них. Лучше всего размещать <code>&lt;Suspense&gt;</code> там,
      где вы хотите видеть индикатор загрузки, а <code>lazy()</code> использовать везде, где
      вы хотите выполнить разбиение кода.
    </p>

    <p>
      Хотя это не поддерживается сегодня, в будущем мы планируем позволить <code>Suspense</code>
      обрабатывать больше сценариев, например таких как извлечение данных. Вы можете прочитать
      об этом в нашем <b><a href="${reactV16XRoadMapUrl}">плане действий</a></b>.
    </p>

    <app:alert title="Внимание!" type="warning">
      <code>React.lazy()</code> и <code>&lt;React.Suspense&gt;</code> пока не поддерживаются ReactDOMServer.
      Это известное ограничение, которое в будущем будет устранено.
    </app:alert>

  </rf:definition>
</lt:layout>

<c:url var="prevPageUrl" value="/core/topics"/>
<c:url var="nextPageUrl" value="react-component"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>
