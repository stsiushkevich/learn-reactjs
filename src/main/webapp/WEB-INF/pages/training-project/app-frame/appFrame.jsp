<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/training-project/app-frame" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="replUrl" value="https://repl.it/"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page app-frame-page">
    <h1>5.2 Каркасс приложения</h1>

    <br/>

    <p class="introduction">
        Несколько слов о том, где будет находиться наше приложение,
        а также о том, как будет выглядеть структура проекта.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.2.1 Среда разработки проекта</h2>
    <br/>

    <p>
        Для максимального удобства и простоты мы будем разрабатывать проект нашего
        приложения в онлайн среде <b><a href="${replUrl}">Repl</a></b>. Эта среда довольно
        похожа на настоящую (например WebStorm) и очень удобна для обучения. Вот
        начальный проект на React:
    </p>

    <br/>

    <iframe
            height="400px"
            width="100%"
            src="https://repl.it/@stsiushkevich/Hello-world?lite=true"
            scrolling="no"
            frameborder="no"
            allowtransparency="true"
            allowfullscreen="true"
            sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals">
    </iframe>

    <br/>
    <br/>

    <p>
        Вы можете поизменять код, чтобы посмотреть на результат. Всё очень похоже на CodePen.
    </p>

    <p>
        Теперь, выбрав среду разработки, самое время перейти к структуре проекта.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.2.2 Структура проекта</h2>
    <br/>

    <c:url var="fileStructureUrl" value="https://learn-reactjs.ru/faq/file-structure"/>

    <p>
        В главе <b><a href="${fileStructureUrl}">FAQ о структуре файлов</a></b> можно найти несколько разных вариантов.
        Мы же выберем вариант <b>группирования по типу файлов</b>. Как вы увидите позднее - это
        очень удобная структура проекта, когда используется библиотека Redux.
    </p>

    <p>
        В первую очередь давайте определим самую важную директорию под
        названием <code>components</code>. В ней мы будем располагать все наши пользовательские
        компоненты. По сути <code>components</code> - это наша библиотека пользовательских компонентов.
    </p>

    <p>
        Помимо <b>components</b> нам также понадобится какая-то глобальная
        конфигурация всего приложения. То есть нам необходим такой файл, в
        котором мы бы могли задавать такие важные параметры как: доменное имя
        сервера с данными, время ожидания ответа сервера и многие другие. Создадим
        файл конфигурации приложения и назовём его <b>config.js</b>. Также в качестве примера
        зададим в нём максимальное время ожидания запроса:
    </p>

    <ce:code-example-1/>

    <p>
        С учетом вышесказанного проект будет выглядеть так:
    </p>

    <br/>

    <iframe
            height="400px"
            width="100%"
            src="https://repl.it/@stsiushkevich/custom-app-10?lite=true"
            scrolling="no"
            frameborder="no"
            allowtransparency="true"
            allowfullscreen="true"
            sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals">
    </iframe>

    <br/>
    <br/>

    <p>
        Постепенно мы будем добавлять и другие необходимые директории и файлы
        для реализации тех или иных задач, таких как состояние приложения или
        сервисы загрузки данных.
    </p>
</lt:layout>

<c:url var="prevPageUrl" value="/training-project/introduction"/>
<c:url var="nextPageUrl" value="/training-project/page-mockups"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>