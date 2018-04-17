<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/react-without-es6" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.6	React без ES6</h1>

  <wg:p>Обычно мы определяем компонент React как класс JavaScript:</wg:p>

  <ce:code-example-1/>

  <wg:p>Если вы не используете ES6, вместо этого вы можете использовать
    модуль <code>create-react-class</code>:</wg:p>

  <ce:code-example-2/>

  <wg:p>API классов ES6 аналогичен <code>createReactClass()</code> за несколькими исключениями.</wg:p>

  <br/>
  <h2>3.6.1 Объявление свойств по умолчанию</h2>

  <wg:p>С функциями и классами ES6 <code>defaultProps</code> определяется
    как свойство самого компонента:</wg:p>

  <ce:code-example-3/>

  <wg:p>С <code>createReactClass()</code> вам необходимо определить <code>getDefaultProps()</code>
  как функцию в передаваемом объекте:</wg:p>

  <ce:code-example-4/>

  <br/>
  <h2>3.6.2 Установка начального состояния</h2>

  <wg:p>В классах ES6 вы можете определить начальное состояние,
    назначив <code>this.state</code> в конструкторе:</wg:p>

  <ce:code-example-5/>

  <wg:p>С <code>createReactClass()</code> вы должны предоставить
    отдельный метод <code>getInitialState</code>, который возвращает исходное состояние:</wg:p>

  <ce:code-example-6/>

  <br/>
  <h2>3.6.3 Автопривязка</h2>

  <wg:p>В компонентах React, объявленных как классы ES6, методы следуют
    той же семантике, что и обычные классы ES6. Это означает, что они
    не привязывают <code>this</code> к экземпляру автоматически. Вам нужно будет
    явно использовать <code>.bind(this)</code> в конструкторе:</wg:p>

  <ce:code-example-7/>

  <wg:p>С <code>createReactClass()</code> это необязательно, потому что он связывает все методы:</wg:p>

  <ce:code-example-8/>

  <wg:p>Это означает, что написание классов ES6 требует немного больше шаблонного кода для
    обработчиков событий, но положительной стороной является несколько лучшая
    производительность в больших приложениях.</wg:p>

  <wg:p>Если шаблонный код слишком непривлекателен для вас, вы можете включить
    экспериментальную возможность
    <wg:link href="https://babeljs.io/docs/plugins/transform-class-properties/">синтаксиса свойств класса</wg:link> от Babel:</wg:p>

  <ce:code-example-9/>

  <wg:p>Обратите внимание, что приведенный выше синтаксис является экспериментальным
    и может измениться, или данная возможность может быть не добавлена в язык.</wg:p>

  <wg:p>Если вы хотите перестраховаться, у вас есть несколько вариантов:</wg:p>

  <wg:p>
    <ul>
      <li>Свяжите методы в конструкторе.</li>
      <li>Используйте стрелочные функции, например. <code>onClick = {(e) => this.onTrigger (e)}</code>.</li>
      <li>Продолжайте использовать <code>createReactClass</code>.</li>
    </ul>
  </wg:p>

  <br/>
  <h2>3.6.4 Миксины</h2>

  <lt:layout cssClass="alert alert-warning">
    <b>Внимание</b>: ES6 запущен без какой-либо поддержки миксинов. Поэтому при использовании React с
    классами ES6 поддержка миксинов тоже не поддерживается.

    <wg:link href="https://facebook.github.io/react/blog/2016/07/13/mixins-considered-harmful.html">Разработчики обнаружили множество проблем</wg:link> с
    использованием миксинов и не рекомендуют использовать их в новом коде.

    Этот раздел существует только для справки.
  </lt:layout>

  <wg:p>Часто разные компоненты могут совместно использовать некоторые общие функции.
    Иногда их называют
    <wg:link href="https://en.wikipedia.org/wiki/Cross-cutting_concern">сквозной функциональностью</wg:link>.
    <code>createReactClass</code> позволяет использовать для этого устаревшую систему миксинов.</wg:p>

  <wg:p>Одним из распространенных вариантов использования является компонент,
    который хочет обновить себя на каком-то временном интервале. Легко использовать
    <code>setInterval()</code>, но важно отменить ваш интервал, когда он вам больше не нужен,
    чтобы освободить память. React предоставляет методы жизненного цикла, которые
    позволяют вам знать, когда компонент будет создан или уничтожен. Давайте
    создадим простой миксин, который использует эти методы, чтобы предоставить
    простую функцию <code>setInterval()</code>, которая будет автоматически очищаться, когда
    ваш компонент будет уничтожен.</wg:p>

  <ce:code-example-10/>

  <wg:p>
    Если компонент использует множество миксинов, и некоторые из них определяют один и тот
    же метод жизненного цикла (например несколько миксинов хотят выполнить некоторую очистку
    при уничтожении компонента), все методы жизненного цикла гарантированно будут вызваны.
    Методы, определенные в миксинах, выполняются в порядке перечисления миксинов в списке,
    после чего следует вызов данного метода в самом компоненте.
  </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="optimizing-performance"/>
<c:url var="nextPageUrl" value="react-without-jsx"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>