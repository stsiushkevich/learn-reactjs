<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/context" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="Url" value=""/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page home-page-page">
    <h1>5.4 Домашняя страница</h1>

    <br/>

    <p class="introduction">
        Настала пора создать нашу первую страницу, используя готовый макет. Мы начнём с
        домашней страницы, так как она является главной в приложении и осуществляет
        навигацию пользователя по его ключевым разделам.
    </p>

    <br/>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.4.1 Стиль кода и методология БЭМ</h2>
    <br/>

    <p>
        Перед тем как мы приступим к реализации нашей первой страницы приложения, важно
        установить определенные соглашения по наименованию CSS-классов, компонентов, элементов
        со всей командой. Все члены команды должны придерживаться единого установленного стиля кода.
        Если этим пренебречь, в коде проекта очень скоро начнётся настоящая вакханалия! На чтение
        такого кода будет уходить очень много времени и каждый компонент будет резать глаза.
        Будет создаваться впечатление, что код писали индусы из 10 разных сёл. Эту плачевную
        ситуацию лучше всего предусмотреть заранее и предпринять все меры по её недопущению!
    </p>

    <c:url var="jsCodeStyleUrl" value="https://github.com/leonidlebedev/javascript-airbnb"/>
    <c:url var="reactCodeStyleUrl" value="https://github.com/leonidlebedev/javascript-airbnb/tree/master/react"/>

    <p>
        Не менее важно установить единый стиль написания компонентов. Они не должны быть
        разношёрстными, все методы должны идти в определённом порядке. Есть очень хорошие
        ресурсы по <b><a href="${jsCodeStyleUrl}">стилю написания кода JavaScript</a></b>, а
        также <b><a href="${reactCodeStyleUrl}">стилю кода React/JSX</a></b>. Я настоятельно
        рекомендую вам усвоить информацию из этих источников! Поверьте - это очень важно.
        Ваш код будет красив, ваши компоненты будут простые, а читать исходники будет интереснее,
        чем смотреть "игры престолов".
    </p>

    <p>
        Со стилем кода мы разобрались, теперь стоит рассказать ещё об одной вещи.
        Когда мы пишем разметку наших компонентов, то часто используем CSS-классы.
        Стиль их имён тоже имеет большое значение. Во-первых - единый стиль имён легко
        читать. А во вторых, правильно подобранный стиль имён позволит избежать уменьшения
        производительности UI.
    </p>

    <c:url var="bemUrl" value="https://ru.bem.info/methodology/"/>

    <p>
        Если кто-то ещё не знаком, то самое время познакомиться с замечательной методологией,
        под названием <b><a href="${bemUrl}">БЭМ</a></b>. Я опять же настаиваю на том, чтобы вы полностью изучили все разделы
        сайта. Это ощутимо поднимет ваш уровень знаний и откроет глаза на многие, казалось бы,
        незаметные вещи. Материал читается быстро и легко, а пользу трудно переоценить.
    </p>

    <c:url var="namingConvUrl" value="https://ru.bem.info/methodology/naming-convention/#%D1%81%D1%82%D0%B8%D0%BB%D1%8C-react"/>

    <p>
        Мы в своём коде будем использовать <b><a href="${namingConvUrl}">вот это соглашение</a></b>. То
        есть схема именования наших CSS-классов будет такой:
    </p>

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

</lt:layout>

<c:url var="prevPageUrl" value="/training-project/page-mockups"/>
<c:url var="nextPageUrl" value="/training-project/appointments"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>