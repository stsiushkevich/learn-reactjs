<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/component-state" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="propsVsState1Url" value="https://github.com/uberVU/react-guide/blob/master/props-vs-state.md"/>
<c:url var="propsVsState2Url" value="http://lucybain.com/blog/2016/react-state-vs-pros/"/>
<c:url var="setStateRefUrl" value="/reference/react-component#setState"/>
<c:url var="gitCommentUrl" value="https://github.com/facebook/react/issues/11527#issuecomment-360199710"/>
<c:url var="whenShouldIUseReduxUrl" value="https://redux.js.org/faq/general#when-should-i-use-redux"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page component-state">
  <h1>Состояние компонента</h1>

  <br/>
  <h3>Что делает метод setState?</h3>

  <wg:p>
    <code>setState()</code> планирует обновление объекта состояния компонента.
    Когда состояние изменяется, компонент отвечает переотрисовкой.
  </wg:p>

  <br/>
  <h3>Какая разница между state и props?</h3>

  <wg:p>
    <code>props</code> (сокращение от «properties») и <code>state</code> - оба обычные объекты JavaScript.
    Хотя каждый из них содержат информацию, которая влияет на результат отрисовки
    компонента, между ними имеется важное отличие: <code>props</code> передается компоненту (аналогично
    параметрам функции), тогда как <code>state</code> управляется <b>внутри</b> компонента (подобно
    переменным, объявленным внутри функции).
  </wg:p>

  <wg:p>
    Вот некоторые полезные ресурсы для более подробного изучения того,
    когда необходимо использовать <code>props</code> или <code>state</code>:
  </wg:p>

  <wg:p>
    <ul>
      <li><wg:link href="${propsVsState1Url}">Props vs State</wg:link></li>
      <li><wg:link href="${propsVsState2Url}">ReactJS: Props vs. State</wg:link></li>
    </ul>
  </wg:p>

  <br/>
  <h3>Почему setState мне дает неправильное значение?</h3>

  <wg:p>
    В React оба <code>this.props</code> и <code>this.state</code> представляют отображаемые значения, то есть то,
    что в данный момент отображается на экране.
  </wg:p>

  <wg:p>
    Вызовы <code>setState</code> асинхронны - не полагайтесь на <code>this.state</code>, чтобы отображать
    новое значение сразу после вызова <code>setState</code>. Передайте функцию обновления вместо
    объекта, если вам нужно вычислить значения на основе текущего состояния (подробнее см. ниже).
  </wg:p>

  <wg:p>Пример кода, который будет вести себя не так, как ожидалось:</wg:p>

  <ce:code-example-1/>

  <wg:p>Читайте далее, чтобы узнать как исправить эту проблему.</wg:p>

  <br/>
  <h3>Как мне обновлять состояние новыми значениями, которые зависят от текущего состояния?</h3>

  <wg:p>
    Передайте функцию вместо объекта в метод <code>setState</code>, чтобы гарантировать, что вызов
    всегда использует самую обновленную версию состояния (см. ниже).
  </wg:p>

  <br/>
  <h3>В чем отличие между передачей объекта и функции в метод setState?</h3>

  <wg:p>
    Передача функции обновления позволяет получить доступ к текущему значению состояния компонента
    внутри неё. Поскольку вызовы <code>setState</code> группируются, это позволяет вам выстраивать цепочку
    обновлений и обеспечивать их последовательное выполнение, избегая конфликтов:
  </wg:p>

  <ce:code-example-2/>

  <wg:link href="${setStateRefUrl}">Читайте больше о setState.</wg:link>

  <br/>
  <h3>Когда setState асинхронен?</h3>

  <wg:p>
    На данный момент <code>setState</code> асинхронен внутри обработчиков событий.
  </wg:p>

  <wg:p>
    Это гарантирует, например, что если оба <code>Parent</code> и <code>Child</code> вызывают <code>setState</code>
    во время события <code>click</code>, <code>Child</code> не перерисовывается дважды. Вместо этого React
    «сбрасывает» обновления состояния в конце события браузера. Это приводит к
    значительным улучшениям производительности в более крупных приложениях.
  </wg:p>

  <wg:p>
    Это всё детали реализации, не полагайтесь на них! В
    будущих версиях React в большинстве случаев будет группировать обновления в пакеты по умолчанию.
  </wg:p>

  <br/>
  <h3>Почему React не обновляет this.state синхронно?</h3>

  <wg:p>
    Как объяснялось в предыдущем разделе, React намеренно «ждет» до тех пор, пока
    все компоненты не вызовут <code>setState()</code> в своих обработчиках событий, перед началом
    переотрисовки. Это повышает производительность, избегая ненужных переотрисовок.
  </wg:p>

  <wg:p>
    Тем не менее, у вас все равно может оставаться вопрос, почему React просто
    не обновляет <code>this.state</code> немедленно без переотрисовки.
  </wg:p>

  <wg:p>На это есть две главные причины:</wg:p>

  <wg:p>
    <ul>
      <li>Это может поломать консистентность между <code>props</code> и <code>state</code>,
        вызывая проблемы, которые очень тяжело отладить.</li>
      <li>Это сделало бы невозможным реализацию наших некоторых новых функций.</li>
    </ul>
  </wg:p>

  <wg:p>Данный <wg:link href="${gitCommentUrl}">комментарий на GitHub</wg:link> дает глубокое
    описание специфических примеров.</wg:p>

  <br/>
  <h3>Следует ли мне использовать специальные библиотеки для
    управления состоянием, вроде Redux или MobX?</h3>

  <wg:p><wg:link href="${whenShouldIUseReduxUrl}">Возможно.</wg:link></wg:p>

  <wg:p>
    Рекомендуется сначала познакомиться с React, прежде чем добавлять дополнительные
    библиотеки. Вы можете создавать довольно сложные приложения, используя только React.
  </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="reconciliation"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>