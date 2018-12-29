<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/code-splitting" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="helloWorldCodePenUrl" value="https://reactjs.org/redirect-to-codepen/hello-world"/>
<c:url var="helloWorldCodeSandboxUrl" value="https://codesandbox.io/s/new"/>
<c:url var="minHtmlTmplUrl" value="https://raw.githubusercontent.com/reactjs/reactjs.org/master/static/html/single-file-example.html"/>
<c:url var="addReactToWebsiteUrl" value="add-react-to-a-web-site#add-react-in-one-minute"/>
<c:url var="createNewReactAppUrl" value="create-a-new-react-app"/>
<c:url var="tutorialUrl" value="https://reactjs.org/tutorial/tutorial.html"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="reactjsUrl" value="https://reactjs.org/"/>
<c:url var="taniarasciaUrl" value="https://www.taniarascia.com/getting-started-with-react/"/>
<c:url var="reactfordesignersUrl" value="https://reactfordesigners.com/"/>
<c:url var="javaScriptUrl" value="https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript"/>
<c:url var="mdnUrl" value="https://developer.mozilla.org/en-US/docs/Web/JavaScript"/>
<c:url var="javascriptLearnUrl" value="https://learn.javascript.ru/"/>
<c:url var="supportUrl" value="https://reactjs.org/community/support.html"/>
<c:url var="thinkingInReactUrl" value="/basics/thinking-in-react"/>
<c:url var="coursesUrl" value="https://reactjs.org/community/courses.html"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="contextUrl" value="/core/context"/>
<c:url var="refsUrl" value="/core/refs-and-the-dom"/>
<c:url var="referenceUrl" value="/reference/topics"/>
<c:url var="glossaryUrl" value="https://reactjs.org/docs/glossary.html"/>
<c:url var="ajaxUrl" value="/faq/ajax-and-apis"/>
<c:url var="stateUrl" value="/faq/component-state"/>
<c:url var="fileStructureUrl" value="/faq/file-structure"/>
<c:url var="updatesUrl" value="/updates/topics"/>
<c:url var="reactjsAccountUrl" value="https://twitter.com/reactjs"/>
<c:url var="changelogUrl" value="https://github.com/facebook/react/blob/master/CHANGELOG.md"/>
<c:url var="releasesUrl" value="https://github.com/facebook/react"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page getting-started">
    <h1>1.1 Начало работы</h1>
    
    <br/>
    
    <p class="introduction">
        В данной странице представлен обзор документации React и связанных ресурсов.
    </p>

    <br/>

    <ul>
        <li><p><b><a href="#try-react">1.1.1 Попробовать React</a></b></p></li>
        <li><p><b><a href="#learn-react">1.1.2 Изучить React</a></b></p></li>
        <li><p><b><a href="#be-aware">1.1.3 Быть в курсе последней информации</a></b></p></li>
    </ul>

    <br/>
    <br/>
    <a name="try-react"></a>
    <div class="gray-line"></div>
    <h2>1.1.1 Попробовать React</h2>

    <br/>

    <p>React с самого начала был разработан для постепенного внедрения. <b>Вы можете использовать
        React в том объеме, в котором вам это необходимо</b>. Если вы хотите просто попробовать React,
        добавить интерактивность к простой HTML-странице или разработать сложное приложение,
        ссылки в этом разделе помогут вам начать работу.</p>

    <br/>
    <h3>1.1.1.1 Онлайн площадки</h3>

    <br/>

    <p>
        Если вы просто хотите побаловаться с React, то можете использовать онлайн площадку для кода.
        Попробуйте пример <b>Hello World</b> на <b><a href="${helloWorldCodePenUrl}">CodePen</a></b> или
        <b><a href="${helloWorldCodeSandboxUrl}">CodeSandbox</a></b>.
    </p>

    <p>
        Если вы предпочитаете использовать собственный текстовый редактор, вы также
        можете загрузить <b><a href="${minHtmlTmplUrl}">этот HTML-файл</a></b>,
        отредактировать его и открыть его из локальной файловой системы в своем браузере.
        Он выполняет медленное runtime-преобразование кода, поэтому мы рекомендуем использовать
        его только для простых демонстраций.
    </p>

    <br/>
    <h3>1.1.1.2 Добавить React на веб-сайт</h3>

    <br/>

    <p>Вы можете <b><a href="${addReactToWebsiteUrl}">добавить React на страницу HTML за одну минуту</a></b>. Затем вы можете либо
        постепенно расширить его присутствие, либо сохранить его в нескольких динамических виджетах.</p>

    <br/>
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
    <a name="learn-react"></a>
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
    <h3>1.1.2.3 React для дизайнеров</h3>

    <br/>

    <p>Если вы работаете в сфере дизайна, <b><a href="${reactfordesignersUrl}">данные ресурсы</a></b> - отличное место для начала.</p>

    <br/>
    <h3>1.1.2.4 JavaScript ресурсы</h3>

    <br/>

    <p>Документация React предполагает наличие некоторых навыков программирования на
        языке JavaScript. Вам не обязательно быть экспертом, но гараздо сложнее выучить и React, и
        JavaScript одновременно.</p>
    
    <p>
        Мы рекомендуем посмотреть <b><a href="${javaScriptUrl}">этот обзор JavaScript</a></b>, чтобы проверить свой уровень знаний.
        Это займет у вас от 30 минут до часа, но зато вы будете чувствовать себя более уверенно, изучая React.
    </p>
    
    <br/>
    
    <app:alert title="Внимание!" type="warning">
        Каждый раз, когда у вас возникают трудности в JavaScript, <b><a href="${mdnUrl}">MDN</a></b> и <b><a href="${javascriptLearnUrl}">learn.javascript.ru</a></b> - отличные
        сайты для проверки. Есть также <b><a href="${supportUrl}">форумы поддержки сообщества</a></b>, где вы можете обратиться за помощью.
    </app:alert>
    
    <br/>
    <h3>1.1.2.5 Практическое руководство</h3>
    
    <br/>
    
    <p>Если вы предпочитаете учиться на практике, ознакомьтесь с нашим <b><a href="${tutorialUrl}">практическим руководством</a></b>.
        В нем мы строим игру в крестики-нолики на React. Методы, которые вы изучите в этом руководстве,
        имеют основополагающее значение для создания любых приложений React, а их освоение даст
        вам более глубокое понимание.</p>
    
    <br/>
    <h3>1.1.2.6 Пошаговое руководство</h3>
    
    <br/>
    
    <p>Если вы предпочитаете изучать концепции шаг за шагом, лучше всего начать с <b><a href="${basicsUrl}">руководства по
            базовым понятиям</a></b>. Каждый последующий раздел основан на знаниях, представленных в предыдущих
        разделах, поэтому вы ничего не упустите по мере изучения.</p>
    
    <br/>
    <h3>1.1.2.7 Мышление в React</h3>
    
    <br/>
    
    <p>
        Многие пользователи React считают, что чтение раздела <b><a href="${thinkingInReactUrl}">"мышление в React"</a></b> окончательно
        «щелкнуло» по ним. Вероятно, это старейший раздел React, но оно все еще актуален.
    </p>
    
    <br/>
    <h3>1.1.2.8 Рекомендуемые курсы</h3>
    
    <br/>
    
    <p>
        Иногда люди находят сторонние книги и видеокурсы более полезными, чем официальная документация.
        Мы поддерживаем список <b><a href="${coursesUrl}">часто рекомендуемых ресурсов</a></b>, некоторые из которых бесплатны.
    </p>
    
    <br/>
    <h3>1.1.2.9 Продвинутое руководство</h3>
    
    <br/>
    
    <p>
        Когда вы изучите <b><a href="${basicsUrl}">основные понятия</a></b> и немного поиграетесь с React, вас могут заинтересовать более
        сложные темы. <b><a href="${coreUrl}">Этот раздел</a></b> познакомит вас с мощными, но менее часто используемыми функциями React,
        такими как <b><a href="${contextUrl}">контекст</a></b> и <b><a href="${refsUrl}">ссылки</a></b>.
    </p>
    
    <br/>
    <h3>1.1.2.10 Справочное руководство</h3>
    
    <br/>
    
    <p>
        <b><a href="${referenceUrl}">Данный раздел документации</a></b> полезен в случаях, когда вы хотите узнать больше информации о конкретном React API.
        Например, справка по API <code>React.Component</code> может предоставить вам подробную информацию о том, как работает <code>setState()</code>, и
        для чего полезны различные методы жизненного цикла.
    </p>
    
    <br/>
    <h3>1.1.2.11 Глоссарий и FAQ</h3>
    
    <br/>
    
    <p><b><a href="${glossaryUrl}">Глоссарий</a></b> содержит обзор наиболее распространенных терминов, которые вы встретите в
        документации React. Существует также раздел часто задаваемых вопросов FAQ, посвященный коротким
        вопросам и ответам на общие темы, такие как <b><a href="${ajaxUrl}">выполнение запросов AJAX</a></b>, <b><a href="${stateUrl}">состояние
            компонентов</a></b> и <b><a href="${fileStructureUrl}">структура файлов</a></b>.</p>
    
    <br/>
    <br/>
    <a name="be-aware"></a>
    <div class="gray-line"></div>
    <h2>1.1.3 Быть в курсе последней информации</h2>
    
    <br/>
    
    <p>Раздел <b><a href="${updatesUrl}">"обновления"</a></b> является источником обновлений от команды React. Все важные сведения, в
        том числе заметки о выпуске или уведомления об устаревании, будут публиковаться там в первую очередь.</p>
    
    <p>
        Также Вы можете подписаться на аккаунт <b><a href="${reactjsAccountUrl}">@reactjs</a></b> в Твиттере, но вы всё равно не
        пропустите ничего важного, если будет читать только раздел обновлений.
    </p>
    
    <p>
	    Не каждый релиз React заслуживает отдельного поста в блоге, но подробный список изменений для каждого
	    релиза можно найти в <b><a href="${changelogUrl}">файле CHANGELOG.md в репозитории React</a></b>, а
	    также на <b><a href="${releasesUrl}">странице релизов</a></b>.
    </p>
</div>

<c:url var="prevPageUrl" value="/home"/>
<c:url var="nextPageUrl" value="add-react-to-a-web-site"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>