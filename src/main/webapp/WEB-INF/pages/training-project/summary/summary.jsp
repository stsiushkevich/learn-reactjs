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
<lt:layout cssClass="page summary-page">
    <h1>5.9 Резюме-шпаргалка</h1>

    <br/>

    <p class="introduction">
        Подведём итоги нашего изучения, вспомнив ключевые моменты, жизненно
        необходимые для того, чтобы построить профессиональное и действительно
        качественное приложение.
    </p>

    <br/>
    <h3>Дизайн</h3>
    <br/>
    
    <c:url var="figmaUrl" value="https://www.figma.com/files/recent"/>
    
    <p>
        Если дизайна проекта у вас нет, вы смело сможете сделать его сами. Онлайн
        инструмент <b><a href="${figmaUrl}">Figma</a></b> поможет вам сделать красивые макеты приложения, не дожидаясь
        дизайнера.  Данный редактор окажется особенно полезным для тех, кто создаёт
        свой собственный проект.
    </p>
    
    <c:url var="flaticonUrl" value="https://www.flaticon.com/"/>
    <c:url var="materialUrl" value="https://material.io/"/>
    <c:url var="colorsUrl" value="https://material.io/tools/color/#!/?view.left=0&view.right=0"/>
    
    <p>
        Бесплатные картинки можно скачать на популярном сервисе <b><a href="${flaticonUrl}">Flat Icon</a></b>.
        Если вы хотите использовать <b><a href="${materialUrl}">Material Design</a></b>, то подобрать палитру
        цветов вам поможет <b><a href="${colorsUrl}">этот инструмент</a></b>.
    </p>
    
    <br/>
    <h3>Стиль кода</h3>
    <br/>
    
    <c:url var="jsStyleUrl" value="https://github.com/leonidlebedev/javascript-airbnb"/>
    <c:url var="reactStyleUrl" value="https://github.com/leonidlebedev/javascript-airbnb/tree/master/react"/>
    
    <p>
        Нельзя забывать про стиль написания кода: он должен быть единый для всего
        приложения. Есть очень хорошие ресурсы по <b><a href="${jsStyleUrl}">стилю написания кода JavaScript</a></b>, а
        также <b><a href="${reactStyleUrl}">стилю кода React/JSX</a></b>.
    </p>
    
    <c:url var="bemUrl" value=""/>
    
    <p>
        Рука об руку со стилем кода идет стиль именования CSS-классов и построения
        структуры разметки компонентов. С этими вещами вам поможет методология <b><a href="${bemUrl}">БЭМ</a></b>.
        Она содержит богатый набор концепций на все случаи жизни!
    </p>
    
    <br/>
    <h3>Популярные инструменты</h3>
    <br/>
    
    <p>
        При построении приложения важно использовать популярные инструменты - они
        сильно экономят время, освобождая вас от необходимости писать большое количество
        собственного кода, который затем ещё нужно хорошо протестировать. Многие вещи уже
        сделаны за вас - их нужно лишь найти и правильно применить.
    </p>
    
    <p>
        Для продвинутой работы с CSS очень хорош <b>SASS</b>. C ним можно делать порой
        невероятные вещи. <b>Flexbox</b> поможет вам быстро получить необходимую
        компоновку элементов.
    </p>
    
    <c:url var="uiLibsUrl" value="https://www.codeinwp.com/blog/react-ui-component-libraries-frameworks/"/>
    
    <p>
        UI библиотеки, наподобие React Bootstrap, Material UI, React Virtualized,
        Blueprint, Semantic UI React, React Toolbox и пр. - способны сильно сэкономить
        ваше время на создание базовых компонентов. Иногда создание базового компонента
        сводится лишь к созданию обёртки с последующим переопределением стилей.
        Расширенный список UI библиотек можно <b><a href="${uiLibsUrl}">посмотреть здесь</a></b>.
    </p>
    
    <br/>
    <h3>Маршрутизация</h3>
    <br/>
    
    <c:url var="routerUrl" value="https://reacttraining.com/react-router/web/guides/quick-start"/>
    <c:url var="routersUrl" value="https://ru.reactjs.org/community/routing.html"/>
    
    <p>
        В любом серьёзном приложении требуется маршрутизация. Пользователь должен видеть,
        где он находится в приложении в любой момент времени. В нашем проекте мы
        использовали <b><a href="${routerUrl}">react-router</a></b>, но есть и другие: router5, aviator и пр.
        Полный список можно <b><a href="${routersUrl}">посмотреть здесь</a></b>.
    </p>
    
    <br/>
    <h3>Асинхронная загрузка данных</h3>
    <br/>
    
    <c:url var="clientServerWikiUrl" value="https://ru.wikipedia.org/wiki/%D0%9A%D0%BB%D0%B8%D0%B5%D0%BD%D1%82_%E2%80%94_%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80"/>
    <c:url var="httpWikiUrl" value="https://ru.wikipedia.org/wiki/HTTP"/>
    <c:url var="httpMdnUrl" value="https://developer.mozilla.org/ru/docs/Web/HTTP/Overview"/>
    
    <p>
        Как правило приложение всегда работает с какими-то данными. Обычно
        источником этих данных служит удалённый сервер. Чтобы правильно построить
        взаимодействие вашего приложения и сервера необходимо хорошо понимать
        <b><a href="${clientServerWikiUrl}">архитектуру клиент-сервер</a></b> и <b><a href="${httpWikiUrl}">протокол HTTP</a></b>. Довольно подробно о
        клиент-серверном взаимодействии написано в <b><a href="${httpMdnUrl}">документации MDN</a></b>.
    </p>
    
    <c:url var="superagentUrl" value="https://github.com/visionmedia/superagent"/>
    <c:url var="superagentDocsUrl" value="http://visionmedia.github.io/superagent/"/>
    
    <p>
        Для обращения к удалённому серверу можно использовать библиотеку <b><a href="${superagentUrl}">superagent</a></b>,
        у которой, помимо прочего, <b><a href="${superagentDocsUrl}">хорошая документация</a></b>.
    </p>
    
    <br/>
    <h3>Диаграммы UML</h3>
    <br/>
    
    <c:url var="drawUrl" value="https://www.draw.io/"/>
    
    <p>
        Если вам вдруг понадобятся UML-диаграммы, то на помощь придёт мощный
        бесплатный онлайн-инструмент draw.io<b><a href="${drawUrl}"></a></b>. C ним вы точно соорудите диаграммы
        любой сложности, которые можно использовать воплощения в жизнь своих
        архитектурных идей.
    </p>
    
    <br/>
    <h3>Состояние приложения</h3>
    <br/>
    
    <c:url var="reduxUrl" value="https://redux.js.org/"/>
    <c:url var="fluxUrl" value="https://facebook.github.io/flux/"/>
    <c:url var="mobxUrl" value="https://github.com/mobxjs/mobx"/>
    <c:url var="apolloUrl" value="https://www.apollographql.com/docs/react/"/>
    
    <p>
        Современные приложения нуждаются в состоянии. Но по мере роста
        количества кода управлять состоянием становится крайне сложно.
        Для борьбы с этой сложностью изобретены специальные инструменты,
        с одним из которых мы уже познакомились: <b><a href="${reduxUrl}">Redux</a></b>.
        Существуют и другие хорошие инструменты, такие как
        <b><a href="${fluxUrl}">Flux</a></b>, <b><a href="${mobxUrl}">MobX</a></b>
        и <b><a href="${apolloUrl}">Apollo</a></b> для GraphQL.
        Возможно их концепции вам понравятся больше.
    </p>
    
    <br/>
    <h3>Напутствие</h3>
    <br/>
    
    <p>
        В разработке фронтенда важно не отставать от инноваций. Они появляются
        не просто так, а чтобы облегчить нам жизнь! Ниже я перечислю некоторые
        советы, которые позволят поддерживать ваше приложение "в форме":
    </p>
    
    <ul>
        <li>
            <p>
                Используйте известные паттерны проектирования и избегайте антипаттернов.
            </p>
        </li>
        <li>
            <p>
                Ищите, изучайте новые интересные технологии и концепции, которые могли
                бы значительно улучшить ваш проект в плане архитектуры, быстродействия,
                читабельности и пр.
            </p>
        </li>
        <li>
            <p>
                Переписывайте "старые" части приложения, использующие устаревшие библиотеки
                или подходы.
            </p>
        </li>
        <li>
            <p>
                Постоянно обновляйте версии своих библиотек.
            </p>
        </li>
        <li>
            <p>
                Избавляйтесь от проблемных мест в приложении. Дискутируйте,
                советуйтесь, ищите подходы, которые могли бы дать элегантное решение.
            </p>
        </li>
        <li>
            <p>
                Создавайте правильные абстракции. В этом вам помогут диаграммы UML.
            </p>
        </li>
        <li>
            <p>
                Дробите большую проблему на более мелкие - иначе говоря, проводите
                декомпозицию. Сама компонентная природа React располагает к этому!
            </p>
        </li>
        <li>
            <p>
                Обязательно читайте книги по архитектуре, рефакторингу и стилю кода.
                Во-первых это придаст ясности вашему коду, что сократит количество
                ошибок и облегчит поддержку. Во-вторых это обеспечит хорошее
                масштабирование приложения, что важно в постоянно развивающемся проекте.
            </p>
        </li>
        <li>
            <c:url var="oopUrl" value="https://github.com/Prokopenko/Linkage/blob/master/%D0%91%D1%83%D1%87%20%D0%93.%20-%20%D0%9E%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BD%D0%BE-%D0%BE%D1%80%D0%B8%D0%B5%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%20%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B0%D0%BC%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BD%D0%B0%20c%2B%2B.pdf"/>
            
            <p>
                Уделите достаточно времени на проведение объектно ориентированного анализа.
                Во время этого процесса очень важно правильно определить все сущности, что
                позволит создать хорошую архитектуру приложения. <b><a href="${oopUrl}">Данная книга</a></b> содержит в себе
                массу полезной информации по ООА. А если же вы до сих пор с ним не знакомы,
                обязательно изучите предложенный источник. Ваш уровень знаний в области
                анализа существенно возрастёт, что неминуемо улучшит ваш код.
            </p>
        </li>
    </ul>
    
    <p>
        Это лишь небольшое количество советов, способных существенно улучшить
        качество вашего кода. На этом мы заканчиваем данную главу. Я очень надеюсь,
        что информация оказалась для вас полезной. Успехов в разработке, и да прибудет
        с вами сила React!
    </p>
</lt:layout>

<c:url var="prevPageUrl" value="/training-project/app-state"/>
<c:url var="nextPageUrl" value="/training-project/practice"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>