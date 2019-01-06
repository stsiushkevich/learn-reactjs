<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/cdn-links" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="basicsUrl" value="/basics/topics"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
    <h1>Учебник: введение в React</h1>

    <br/>

    <p class="introduction">
        Данный учебник не предполагает каких-либо знаний React.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Перед тем как начнём</h2>
    <br/>

    <p>
        В данном разделе мы создадим небольшую игру. <b>У вас может возникнуть
        соблазн пропустить его, так как вы не пишете игры - не делайте такое поспешное решение.</b>
        Методы, которые вы здесь изучите, имеют основополагающее
        значение для создания любых React приложений, а их освоение даст вам
        глубокое понимание React.
    </p>

    <app:alert title="Подсказка" type="success">
        Этот учебник предназначен для людей, которые желают учиться на практике.
        Если же вы предпочитаете изучать теоретические концепции с нуля, ознакомьтесь
        с нашим <b><a href="${basicsUrl}">пошаговым руководством</a></b>.
        Также вы можете найти пошаговое руководство и данный учебник дополняющими друг друга.
    </app:alert>

    <p>Учебник состоит из нескольких разделов:</p>

    <ul>
        <li>
            <p>
                <b><a href="#setup">Установка</a></b>. Даст вам отправную точку, чтобы следовать учебнику.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#overview">Обзор</a></b>. Познакомит вас с основами React: компонентами, свойствами и состоянием.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#completing-the-game">Завершение игры</a></b>. Научит вас наиболее распространенным методам разработки в React.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#add-time-travel">Добавление Time Travel</a></b>. Даст вам более глубокое понимание уникальных преимуществ React.
            </p>
        </li>
    </ul>

    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>

    <%--
    <ul>
        <li>
            <p>

            </p>
        </li>
    </ul>
    --%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>

</div>

<c:url var="prevPageUrl" value="create-a-new-react-app"/>
<c:url var="nextPageUrl" value="/basics/topics"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>