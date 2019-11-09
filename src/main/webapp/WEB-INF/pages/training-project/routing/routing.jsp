<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/training-project/routing" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="Url" value=""/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page routing-page">
    <h1>5.6 Маршрутизация</h1>

    <br/>

    <p class="introduction">
        Здесь мы поговорим о такой важной составляющей любого серьезного веб-приложения,
        как маршрутизация. Пользователь должен видеть где он находится в данный момент времени
        в приложении, а также иметь возможность навигации по истории. Сам по себе React маршрутизацию
        не поддерживает, зато есть мощные библиотеки с целым арсеналом возможностей. Как раз одну
        из таких библиотек мы интегрируем в наш проект.
    </p>

    <br/>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.6.1 Для чего нужна маршрутизация?</h2>
    <br/>

    <p>
        В любом реальном веб-приложении нужны маршруты, и приложение React не исключение. Пользователь
        должен видеть, где он находится в приложении в любой момент времени. А видит он свое текущее
        местоположение в адресной строке браузера. Следовательно приложение должно уметь сопоставлять
        определённый URL с соответствующей ему страницей. То есть, если мы введём в адресную строку
        например <code>https://health-imperium/appointmens</code>, то приложение должно направить нас на страницу
        списка приёмов, но не на какую-либо другую.
    </p>

    <p>
        Также должна работать история. То есть когда пользователь кликает на стрелку "Назад" в браузере, приложение
        должно направить нас на предыдущую страницу.
    </p>

    <p>
        Сам по себе React не предоставляет такой возможности, это задача специальных библиотек.
        Как правило, используя API такой библиотеки мы подключаем компоненты страниц нашего положения,
        сопоставляя их с определёнными путями. После этого, переходя с одной страницы на другую мы
        будем видеть в адресной строке, как изменяется текущий путь.
    </p>

    <c:url var="routingUrl" value="https://ru.reactjs.org/community/routing.html"/>

    <p>
        На данный момент есть несколько популярных библиотек для
        маршрутизации: <code>react-router</code>, <code>router5</code>, <code>aviator</code> и пр.
        Полный список можно <b><a href="${routingUrl}">посмотреть здесь</a></b>. Мы
        будем использовать <code>react-router</code>. Хотя в вашем проекте может
        быть любая другая - все зависит от бизнес-требований.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.6.2 Библиотека react-router</h2>
    <br/>

    <c:url var="reactRouterUrl" value="https://reacttraining.com/react-router/web/guides/quick-start"/>

    <p>
        Эта библиотека популярна, довольна проста в использовании и
        обладает <b><a href="${reactRouterUrl}">хорошей документацией</a></b>.
        Она предоставляет такие возможности как:
    </p>

    <ul>
        <li>
            <p>
                Навигация по клику (компонент <code>&lt;Link&gt;</code>)
            </p>
        </li>
        <li>
            <p>
                Перенаправление (компонент <code>&lt;Redirect&gt;</code>)
            </p>
        </li>
        <li>
            <p>
                Маршрутизация (компонент <code>Route</code>)
            </p>
        </li>
        <li>
            <p>
                История (свойство <code>history</code>)
            </p>
        </li>
    </ul>

    <p>
        Это лишь малая часть того, что умеет библиотека. В нашем приложении мы будем
        использовать самые базовые вещи, чтобы у вас было общее представление о сути
        маршрутизации, о том как её подключать и использовать.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.6.3 Добавление react-router в приложение</h2>
    <br/>

    <c:url var="historyUrl" value="https://github.com/ReactTraining/history"/>

    <p>
        Для начала нам нужно добавить возможность работы с историей. Для этого есть
        специальная библиотека <b><a href="${historyUrl}">history</a></b>:
    </p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/history-npm.png"/>" class="text-center">
    </p>
    <br/>

    <p>
        Теперь подключим в наше приложение эту возможность, обновив
        файл <code>index.js</code>:
    </p>

    <ce:code-example-1/>

    <p>
        Мы создали объект кастомной истории и передали его как свойство в
        компонент <code>&lt;Router&gt;</code>. Этого можно и не делать. Достаточно использовать
        компонент <code>&lt;BrowserRouter&gt;</code> вместо <code>&lt;Router&gt;</code>,
        тогда будет использован API истории HTML5.
    </p>

    <p>
        Далее необходимо подключить саму библиотеку <code>react-router</code>. Для
        этого нужно установить модуль <code>react-router-dom</code>.
    </p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/react-router-dom-npm.png"/>" class="text-center">
    </p>
    <br/>

    <ce:code-example-2/>

    <p>
        Как видно, у нас пока два маршрута: <code>/home</code> и <code>/appointments</code>. Введя в
        адресную строку один из них, приложение перенаправит нас на соответствующую
        страницу. Элемент <code>&lt;Redirect&gt;</code> здесь задаёт страницу по умолчанию.
        Отдельно стоит поговорить о <code>withRouter</code>. Это старший компонент, он же HOC. С помощью
        него вы можете получить доступ к свойствам объекта <code>history</code> и к объекту <code>match</code>,
        ближайшего <code>&lt;Route&gt;</code>. <code>withRouter</code> будет передавать в обёрнутый компонент
        обновленные свойства <code>match</code>, <code>location</code>, и <code>history</code> каждый раз,
        когда тот отрисовывается.
    </p>

    <p>
        Наконец, нам осталось обновить компонент <code>&lt;Home&gt;</code>, добавив в него
        навигацию, с помощью компонента <code>&lt;Link&gt;</code>:
    </p>

    <ce:code-example-3/>

    <c:url var="customAppV34Url" value="https://repl.it/@stsiushkevich/custom-app-v34"/>

    <p>
        Все необходимые изменения сделаны, и теперь вы можете
        <b><a href="${customAppV34Url}">протестировать работу приложения</a></b>,
        открыв его в отдельной вкладке:
    </p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/routing-home-page-1.png"/>" class="text-center">
    </p>
    <br/>

    <p>Перейдя на новую вкладку вы увидите текущий путь в адресной строке:</p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/routing-home-page-2.png"/>" class="text-center">
    </p>
    <br/>

    <p>
        Теперь попробуйте перейти на список приёмов и понаблюдайте за изменением
        текущего пути. Затем вернитесь назад, нажав на соответствующую кнопку в браузере.
        Сейчас вы видите маршрутизацию и историю в действии.
    </p>
</lt:layout>

<c:url var="prevPageUrl" value="/training-project/appointments"/>
<c:url var="nextPageUrl" value="/training-project/async-data-loading"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>