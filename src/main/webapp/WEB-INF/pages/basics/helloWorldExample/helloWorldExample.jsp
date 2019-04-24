<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/hello-world-example" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="helloWorldUrl" value="https://reactjs.org/redirect-to-codepen/hello-world"/>
<c:url var="installationUrl" value="/introduction/installation"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
    <h1>2.2 Hello, World!</h1>

    <br/>

    <p class="introduction">
        Самый маленький пример на React выглядит так:
    </p>

    <ce:code-example-1 codePenUrl="https://codepen.io/stzidane/pen/xeJmgO"/>

    <wg:p>Он отрисовывает на странице заголовок с текстом «Hello, world!».</wg:p>

    <p>
        Перейдите по ссылке, чтобы открыть онлайн-редактор кода. Смело внесите изменения в код и
        посмотрите, как они повлияют на результат. Большинство разделов в этом руководстве будут
        иметь подобные редактируемые примеры.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.2.1 Как читать данное руководство</h2>
    <br/>

    <p>
        В этом руководстве мы рассмотрим строительные блоки приложений React: элементы и компоненты.
        Как только вы их освоите, сможете уверенно создавать сложные приложения из маленьких
        многократно используемых частей.
    </p>

    <c:url var="tutorialUrl" value="/tutorial"/>

    <app:alert title="Подсказка!" type="success">
        Текущая глава "Быстрый старт" предназначен для людей, которые предпочитают изучать
        концепции шаг за шагом. Если вы предпочитаете учиться на практике, ознакомьтесь с
        нашим <b><a href="${tutorialUrl}">практическим руководством</a></b>. В какой-то
        момент вы можете обнаружить, что они дополняют друг друга.
    </app:alert>

    <p>
        Это первый раздел в главе "Быстрый старт". Полный список разделов
        находится на боковой панели навигации.
    </p>

    <c:url var="introductionToJsxUrl" value="/basics/introduction-to-jsx"/>

    <p>
        Каждый раздел в этой главе основан на знаниях, полученных из предыдущего раздела.
        Вы можете изучить большую часть React, прочитав разделы <b>текущей главы</b> в том порядке, в котором они
        расположены на боковой панели. Например, <b><a href="${introductionToJsxUrl}">Знакомство с JSX</a></b> - это следующий раздел.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.2.2 Давайте начнём!</h2>
    <br/>

    <p>
        Приступайте к изучению следующего раздела прямо сейчас, используя стрелки навигации ниже.
    </p>

    <%-- <c:url var="Url" value=""/> --%>

    <%--
    <ul>
        <li>
            <p>

            </p>
        </li>
    </ul>
    --%>
    <%-- <app:alert title="Подсказка!" type="success"></app:alert> --%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>
</lt:layout>

<c:url var="prevPageUrl" value="note-to-javascript"/>
<c:url var="nextPageUrl" value="introduction-to-jsx"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>