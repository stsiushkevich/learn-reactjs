<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.6.0" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="changelogUrl" value="#changelog"/>
<c:url var="danJsConfUrl" value="https://reactjs.org/blog/2018/03/01/sneak-peek-beyond-react-16.html"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page react-v16.6.0">
    <h1>React v16.6.0: lazy, memo и contextType</h1>

    <wg:p><b>Октябрь 23, 2018 Sebastian Markbåge</b></wg:p>

    <br/>

    <p>
        Сегодня мы выпускаем React 16.6 с несколькими новыми удобными функциями. Форма <code>PureComponent</code>/<code>shouldComponentUpdate</code>
        для компонентов-функций, способ разбиения кода с использованием ожидания и более простой способ
        потребления контекста из компонентов-классов.
    </p>

    <p>
        Изучите полный список изменений <b><a href="${changelogUrl}">ниже</a></b>.
    </p>

    <br/>
    <h2>React.memo</h2>

    <p>Компоненты-классы позволяют избежать перерисовки, когда их входные свойства одинаковы
        при использовании <code>PureComponent</code> или <code>shouldComponentUpdate</code>. Теперь вы можете
        делать то же самое с компонентами-функциями, обернув их в <code>React.memo</code>.</p>

    <ce:code-example-1/>

    <br/>
    <h2>React.lazy: Разбиение сода с помощью ожидания (suspense)</h2>

    <p>Возможно, вы видели <b><a href="${danJsConfUrl}">выступление Дэна о React Suspense на JSConf Iceland</a></b>. Теперь вы
        можете использовать компонент <code>Suspense</code> для разбиения кода, оборачивая динамический
        импорт в вызов <code>React.lazy()</code>.</p>

    <ce:code-example-2/>

    <%--  <b><a href="${}"></a></b>  --%>
    <p>Также в будущем компонент <code>Suspense</code> позволит авторам библиотек
        реализовывать извлечение данных с поддержкой ожидания.</p>

    <app:alert type="warning" title="Внимание!">
        <b>Данная функция пока не доступна для отрисовки на стороне сервера. Поддержка ожидания будет
            добавлена в более позднем релизе.</b>
    </app:alert>

    <br/>
    <h2>static contextType</h2>

    <br/>
    <p>В React 16.3 мы ввели официальный API-интерфейс контекста в качестве замены предыдущего устаревшего.</p>

    <ce:code-example-3/>

    <br/>
    <p>Мы слышали отзывы о том, что примение нового render prop API может оказаться сложным в
        компонентах-классах. Поэтому мы добавили удобный API для потребления значения контекста внутри компонента-класса.</p>

    <ce:code-example-4/>

    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</div>

<c:url var="prevPageUrl" value="create-react-app-2.0"/>

<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"/>