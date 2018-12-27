<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/code-splitting" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="helloWorldCodePenUrl" value="https://reactjs.org/redirect-to-codepen/hello-world"/>
<c:url var="helloWorldCodeSandboxUrl" value="https://codesandbox.io/s/new"/>
<c:url var="minHtmlTmplUrl" value="https://raw.githubusercontent.com/reactjs/reactjs.org/master/static/html/single-file-example.html"/>
<c:url var="addReactToWebsiteUrl" value="add-react-to-a-website"/>
<c:url var="createNewReactAppUrl" value="create-a-new-react-app"/>
<c:url var="tutorialUrl" value="https://reactjs.org/tutorial/tutorial.html"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="reactjsUrl" value="https://reactjs.org/"/>
<c:url var="taniarasciaUrl" value="https://www.taniarascia.com/getting-started-with-react/"/>
<c:url var="reactfordesignersUrl" value="https://reactfordesigners.com/"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page react-v16.7">
    <h1>1.1 Начало работы</h1>

    <p class="introduction">
        В данной странице представлен обзор документации React и связанных ресурсов.
    </p>

    <br/>

    <ul>
        <li><p><b><a href="try-react">1.1.1 Попробовать React</a></b></p></li>
        <li><p><b><a href="learn-react">1.1.2 Изучить React</a></b></p></li>
        <li><p><b><a href="be-aware">1.1.3 Быть в курсе последней информации</a></b></p></li>
    </ul>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>1.1.1 Попробовать React</h2>

    <br/>

    <p>React с самого начала был разработан для постепенного внедрения. <b>Вы можете использовать
        React в таком объеме, насколько вам это удобно</b>. Если вы хотите просто попробовать React,
        добавить интерактивность к простой HTML-странице или разработать сложное приложение,
        ссылки в этом разделе помогут вам начать работу.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h3>1.1.1.1 Онлайн площадки</h3>

    <br/>

    <p>
        Если вы просто хотите побаловаться с React, то можете использовать онлайн площадку для кода.
        Попробуйте пример <b>Hello World</b> на <wg:link href="${helloWorldCodePenUrl}">CodePen</wg:link> или
        <wg:link href="${helloWorldCodeSandboxUrl}">CodeSandbox</wg:link>.
    </p>

    <p>
        Если вы предпочитаете использовать собственный текстовый редактор, вы также
        можете загрузить <wg:link href="${minHtmlTmplUrl}">этот HTML-файл</wg:link>,
        отредактировать его и открыть его из локальной файловой системы в своем браузере.
        Он выполняет медленное runtime-преобразование кода, поэтому мы рекомендуем использовать
        его только для простых демонстраций.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h3>1.1.1.2 Добавить React на веб-сайт</h3>

    <br/>

    <p>Вы можете <b><a href="${addReactToWebsiteUrl}">добавить React на страницу HTML за одну минуту</a></b>. Затем вы можете либо
        постепенно расширить его присутствие, либо сохранить его в нескольких динамических виджетах.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h3>1.1.1.3 Создать новое React приложение</h3>

    <br/>

    <p>Для старта проекта React отличным вариантом может служить простая
        HTML-страница со <code>&lt;script&gt;</code> тегами. Понадобится всего минута для настройки!</p>

    <p>
        По мере роста вашего приложения вы можете рассмотреть возможность более интегрированной
        настройки. Есть несколько <b><a href="${createNewReactAppUrl}">наборов инструментов JavaScript</a></b>, которые мы рекомендуем для более
        крупных приложений. Каждый из них может работать практически без конфигурации и позволяет
        вам в полной мере использовать преимущества богатой экосистемы React.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>1.1.2 Изучить React</h2>

    <br/>

    <p>Люди приходят в React из разных слоев общества и с разными стилями обучения. Вне
        зависимости от того, какой подход: более теоретический либо более практический - вы предпочитаете,
        мы надеемся, что для вас данный раздел окажется полезным.</p>

    <ul>
        <li><p>Если вы предпочитаете учиться на практике, начните с <b><a href="${tutorialUrl}">практического руководства</a></b>.</p></li>
        <li><p>Если вы предпочитаете изучать концепции шаг за шагом, начните с раздела <b><a href="${basicsUrl}">быстрый старт</a></b>.</p></li>
    </ul>

    <p>Как и любая незнакомая технология, React обладает кривой обучения.
        С практикой и некоторым терпением, вы им обязательно овладеете.</p>

    <br/>
    <h3>1.1.2.1 Первые примеры</h3>

    <br/>

    <p>Официальная <b><a href="${reactjsUrl}">домашняя страница React</a></b> содержит несколько небольших примеров с живым редактором.
        Даже если вы еще ничего не знаете о React, попробуйте изменить код и посмотрите,
        как это повлияет на результат.</p>

    <br/>
    <h3>1.1.2.2 React для начинающих</h3>

    <br/>

    <p>Если вы чувствуете, что документация по React пока тяжеловата, ознакомьтесь с <b><a href="${taniarasciaUrl}">данным обзором</a></b> React от Tania Rascia.
        В нем представлены наиболее важные концепции React в подробном, удобном для начинающих виде. Когда вы закончите,
        попробуйте снова вернуться к документации!</p>

    <br/>
    <h3>1.1.2.2 React для дизайнеров</h3>

    <br/>

    <p>Если вы работаете в сфере дизайна, <b><a href="${reactfordesignersUrl}">данные ресурсы</a></b> - отличное место для начала.</p>

    <br/>
    <h3>1.1.2.2 JavaScript ресурсы</h3>

    <br/>

    <p></p>
    <p></p>

    <%--  --%>
    <%-- <code></code> --%>
    <%--  <b><a href="${}"></a></b> --%>

</div>

<c:url var="prevPageUrl" value="error-boundaries"/>
<c:url var="nextPageUrl" value="web-components"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>