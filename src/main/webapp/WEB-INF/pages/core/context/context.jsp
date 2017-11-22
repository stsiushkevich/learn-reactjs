<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/context" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.9 Контекст</h1>

  <lt:layout cssClass="alert alert-warning">
    <b>Примечание</b>. Что касается React v15.5, то <b>React.PropTypes helper</b> устарел,
    и мы рекомендуем использовать библиотеку
    <wg:link href="https://www.npmjs.com/package/prop-types">prop-types</wg:link>
    для определения <code>contextTypes</code>.
  </lt:layout>

  <wg:p>С помощью React легко отслеживать поток данных через компоненты React.
    Когда вы смотрите на компонент, вы можете видеть, какие свойства передаются,
    что позволяет вам легко анализировать ваши приложения.</wg:p>

  <wg:p>В некоторых случаях вы хотите передавать данные через дерево компонентов без
    необходимости передавать свойства вручную на каждом уровне. Вы можете делать это
    напрямую в React с помощью мощного «контекстного» API.</wg:p>

  <br/>
  <h2>3.9.1 Почему не стоит использовать контекст</h2>

  <wg:p>Подавляющему большинству приложений не нужно использовать контекст.</wg:p>

  <wg:p>Если вы хотите, чтобы ваше приложение было стабильным, не используйте
    контекст. Это экспериментальный API, и он, вероятно, поломается в будущих выпусках React.</wg:p>

  <wg:p>Если вы не знакомы с библиотеками управления состоянием, такими как <b>Redux</b> или <b>MobX</b>, не
    используйте контекст. Для многих практических приложений эти библиотеки и их привязки React
    являются хорошим выбором для управления состоянием, которое актуально для многих компонентов.
    Скорее всего, Redux - правильное решение вашей проблемы, нежели контекст.</wg:p>

  <wg:p>Если вы не являетесь опытным разработчиком React, не используйте контекст. В большинстве случаев
    лучшим и простым способом реализовать функциональность будет использование
    <code>props</code> и <code>state</code>.</wg:p>

  <wg:p>Если вы настаиваете на использовании контекста, несмотря на эти предупреждения,
    попытайтесь изолировать его использование в небольшой области и избегайте использования
    контекстного API напрямую, когда это возможно, чтобы было легче провести апгрэйд когда API поменяются.</wg:p>

  <br/>
  <h2>3.9.2 Как использовать контекст</h2>

  <wg:p>Предположим, у вас есть структура вроде:</wg:p>

  <ce:code-example-1/>

  <wg:p>В этом примере мы вручную передаем через дерево вниз свойство color, чтобы стилизировать
    элементы <code>CancelButton</code> и <code>Alert</code>. Используя контекст, мы можем
    передать это свойство через дерево автоматически:</wg:p>

  <ce:code-example-2/>

  <wg:p>Добавляя <code>childContextTypes</code> и <code>getChildContext</code> в
    <code>AlertList</code> (поставщик контекста),
    React передает информацию вниз по дереву автоматически, и любой компонент в
    поддереве (в данном случае <code>CancelButton</code>) может получить к нему
    доступ, указав <code>contextTypes</code>.</wg:p>

  <wg:p>Если <code>contextTypes</code> не определен, то context будет пустым объектом.</wg:p>

  <br/>
  <h2>3.9.3 Коммуникация между родителем и потомком</h2>

  <wg:p>Контекст может позволить вам создавать API, через которые могут общаться родители и
    потомки. Например, существует библиотека, которая работает именно таким образом,
    это <wg:link href="https://reacttraining.com/react-router/">React Router V4</wg:link>:</wg:p>

  <ce:code-example-3/>

  <wg:p>При передаче вниз некоторой информации из компонента <code>Router</code>,
    каждая <code>Link</code> и <code>Router</code> могут связываться с
    объемлющим <code>Router</code>.</wg:p>

  <wg:p>Прежде чем создавать компоненты с использованием API, подобными этим,
    подумайте, есть ли более прозрачные альтернативы. Например, если необходимо,
    вы можете передать весь компонент React как <code>props</code>.</wg:p>

  <br/>
  <h2>3.9.4 Ссылка на контекст в методах жизненного цикла</h2>

  <wg:p>Если <code>contextTypes</code> определен внутри компонента, следующие методы
    жизненного цикла получат дополнительный параметр - объект контекста:</wg:p>

  <wg:p>
    <ul>
      <li><code>constructor(props, context)</code></li>
      <li><code>componentWillReceiveProps(nextProps, nextContext)</code></li>
      <li><code>shouldComponentUpdate(nextProps, nextState, nextContext)</code></li>
      <li><code>componentWillUpdate(nextProps, nextState, nextContext)</code></li>
      <li><code>componentDidUpdate(prevProps, prevState, prevContext)</code></li>
    </ul>
  </wg:p>

  <br/>
  <h2>3.9.5 Ссылка на контекст в функциональных
    компонентах, не имеющих состояния</h2>

  <wg:p>Функциональные компоненты без состояния также могут ссылаться на
    контекст, если <code>contextTypes</code> определяется как свойство функции. Следующий
    код показывает компонент <code>Button</code>, написанный как функциональный компонент без состояния.</wg:p>

  <ce:code-example-4/>

  <br/>
  <h2>3.9.6 Обновление контекста</h2>

  <wg:p>Не делайте этого.</wg:p>

  <wg:p>React имеет API для обновления контекста, но они имеют
    принципиальные нарушения, и вы не должны их использовать.</wg:p>

  <wg:p>Функция <code>getChildContext</code> вызывается при изменении state или props.
    Чтобы обновить данные в контексте, инициируйте обновление локального
    состояния с помощью <code>this.setState</code>. Это создаст новый контекст,
    и потомки получат изменения.</wg:p>

  <wg:p>Рассмотрим пример, взятый из официальной документации:</wg:p>

  <ce:code-example-5/>

  <wg:p>Проблема в том, что если значение контекста, предоставлено изменениями компонента,
    потомки, которые используют это значение, не будут обновляться, если промежуточный
    родитель возвращает <code>false</code> из <code>shouldComponentUpdate</code>. Это полностью вне области контроля
    компонентов, использующих контекст, поэтому в принципе нет возможности надежно обновлять
    контекст. В <wg:link href="https://medium.com/@mweststrate/how-to-safely-use-react-context-b7e343eff076">этой статье</wg:link>
    в блоге есть хорошее объяснение, почему это является проблемой и как вы можете её обойти.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="reconciliation"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>