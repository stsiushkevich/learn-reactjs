<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/state-and-lifecycle" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<lt:layout cssClass="page hello-world-example-page">
    <wg:head size="3"><b>Состояние и жизненный цикл</b></wg:head>

    <wg:p>Рассмотрим пример тикающих часов из предыдущего раздела.</strong></wg:p>

    <wg:p>До сих поло мы изучили только один способ обновления UI.</wg:p>

    <wg:p>Мы вызываем <code>ReactDOM.render()</code> чтобы изменить отрисовывамый вывод:</wg:p>

    <code-example:code-example-1 codePenUrl="https://codepen.io/stzidane/pen/QgWgNP?editors=0010"/>

    <wg:p>В этом разделе мы изучим, как сделать компонент <code>Timer</code> по-настоящему переиспользумым и
        инкапсулированным. Он будет устанавливать свой таймер и обновлять себя каждый определенный
        промежуток времени.</wg:p>

    <wg:p>Мы можем начать с инкапсуляции кода в компонент <code>Timer</code>:</wg:p>

    <code-example:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/yXLXKY?editors=0010"/>

    <wg:p>Тем не менее, он упускает ключевое требование: установка таймера и обновление UI
        каждую секунду должны быть деталью реализации <code>Timer</code>.</wg:p>
    <wg:p>В идеале, нам необходимо написать следующий код с компонентом <code>Timer</code>, обновляющим самого себя:</wg:p>

    <code-example:code-example-3/>

    <wg:p>Для того, чтобы это реализовать, нам необходимо добавить «<b>состояние</b>» к компоненту <code>Timer</code>.</wg:p>

    <wg:p>Состояние подобно свойствам <b>props</b>, но является приватным и полностью контролируется компонентом.</wg:p>

    <wg:p>Ранее мы упоминали что, компоненты, определённые как классы, имеют некоторые дополнительный возможности.
        <b>Локальное состояние является возможностью, доступной только для классов.</b></wg:p>
    <wg:p></wg:p>

    <br/>
    <wg:head size="4"><strong>Отрисовка элемента в DOM</strong></wg:head>

</lt:layout>