<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/createReactApp-2.0" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="createReactAppUrl" value="https://github.com/facebook/create-react-app"/>
<c:url var="createReactAppAddingSassUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-a-sass-stylesheet"/>
<c:url var="createReactAppAddingCSSUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-a-css-modules-stylesheet"/>
<c:url var="babel7Url" value="https://babeljs.io/blog/2018/08/27/7.0.0"/>
<c:url var="fragmentsUrl" value="/core/fragments"/>
<c:url var="webpack4Url" value="https://medium.com/webpack/webpack-4-released-today-6cdb994702d4"/>
<c:url var="Url" value="https://jestjs.io/blog/2018/05/29/jest-23-blazing-fast-delightful-testing.html"/>
<c:url var="jest23Url" value="https://jestjs.io/blog/2018/05/29/jest-23-blazing-fast-delightful-testing#interactive-snapshot-mode"/>
<c:url var="jest23InteractiveSnapshotModeUrl" value=""/>
<c:url var="postCSSUrl" value="https://preset-env.cssdb.org/features#stage-3"/>
<c:url var="apolloUrl" value="https://github.com/leoasis/graphql-tag.macro#usage"/>
<c:url var="relayModernUrl" value="https://github.com/facebook/relay/pull/2171#issuecomment-411459604"/>
<c:url var="mdxUrl" value="https://github.com/facebook/create-react-app/issues/5149#issuecomment-425396995"/>
<c:url var="babelMacrosUrl" value="https://babeljs.io/blog/2017/09/11/zero-config-with-babel-macros"/>
<c:url var="svgUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-svgs"/>
<c:url var="yarnPlugNPlayUrl" value="https://github.com/yarnpkg/rfcs/pull/101"/>
<c:url var="proxyUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#configuring-the-proxy-manually"/>
<c:url var="nodePackagesUrl" value="https://github.com/sindresorhus/ama/issues/446#issuecomment-281014491"/>
<c:url var="workboxUrl" value="https://developers.google.com/web/tools/workbox/"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-react-app-2.0">
    <h1>Create React App 2.0: Babel 7, Sass и другое</h1>

    <wg:p><b>Октябрь 01, 2018 Джой Хаддад и Дэн Абрамов</b></wg:p>

    <br/>

    <p>
        Сегодня состоялся релиз приложения <b>Create React App 2.0</b>, который
        предоставил годичные улучшения в едином обновлении зависимостей
    </p>

    <p>
        Хотя сам сам по себе React не требует каких-либо зависимостей для билда, иногда
        бывает непросто написать сложное приложение без исполнителя тестов, минификатора
        продакшена и модульной кодовой базы. Начиная с самого первого релиза, цель
        <b><a href="${createReactAppUrl}">Create React App</a></b> состояла в том,
        чтобы помочь вам сосредоточиться на том, что важнее всего - на коде приложения, - и наладить
        для вас настройку сборки и тестирования.
    </p>

    <p>
        Многие из инструментов, на которые оно опирается, с тех пор также выпустили новые версии,
        содержащие новые функции и улучшения производительности: <b>Babel 7</b>, <b>webpack 4</b> и <b>Jest 23</b>. Однако
        обновление их вручную и обеспечение совместной работы требуют больших усилий. И это именно то,
        чем авторы <b><a href="${createReactAppUrl}">Create React App 2.0</a></b> были заняты последние несколько месяцев: <b>миграция конфигурации и
        зависимостей, так что вам не нужно делать это самостоятельно.</b>
    </p>

    <p>
        Теперь, когда <b><a href="${createReactAppUrl}">Create React App 2.0</a></b> вышел из бета-версии, давайте посмотрим,
        что нового появилось и как вы можете это попробовать.
    </p>

    <app:alert title="Внимание!" type="warning">
        Не испытывайте психологическое давление от необходимости что-либо обновить. Если вы удовлетворены текущим набором функций, его
        производительностью и надежностью, вы можете продолжать использовать версию, на которой вы сейчас находитесь!
        Также было бы неплохо позволить выпуску 2.0 стабилизироваться, прежде чем переходить на него в продакшене.
    </app:alert>

    <br/>
    <h2>Что нового?</h2>

    <p>Вот краткое резюме того, что нового в данном релизе:</p>

    <ul>
        <li><p>🎉 Больше параметров стиллизации: вы можете использовать модули
            <b><a href="${createReactAppAddingSassUrl}">Sass</a></b> и
            <b><a href="${createReactAppAddingCSSUrl}">CSS</a></b> из коробки.</p></li>

        <li><p>🐠 Мы обновились до <b><a href="${babel7Url}">Babel 7</a></b>, включающего
            поддержку синтаксиса <b><a href="${fragmentsUrl}">фрагментов React</a></b> и множество исправлений.</p></li>

        <li><p>📦 Мы обновились до <b><a href="${webpack4Url}">webpack 4</a></b>, который автоматически разбивает JS бандлы более интеллектуально.</p></li>

        <li><p>🃏 Мы обновились до <b><a href="${jest23Url}">Jest 23</a></b>, который включает в
            себя <b><a href="${jest23InteractiveSnapshotModeUrl}">интерактивный режим для просмотра снимков</a></b>.</p></li>

        <li><p>💄 Мы добавили <b><a href="${postCSSUrl}">PostCSS</a></b>, чтобы вы могли использовать новые функции CSS в старых браузерах.</p></li>

        <li><p>💎 Вы можете использовать <b><a href="${apolloUrl}">Apollo</a></b>, <b><a href="${relayModernUrl}">Relay Modern</a></b>,
            <b><a href="${mdxUrl}">MDX</a></b> и другие сторонние преобразования <b><a href="${babelMacrosUrl}">Babel Macros</a></b>.</p></li>

        <li><p>🌠 Теперь вы можете <b><a href="${svgUrl}">импортировать SVG как компонент React</a></b> и использовать его в JSX.</p></li>

        <li><p>🐈 Вы можете попробовать экспериментальный режим <b><a href="${yarnPlugNPlayUrl}">Yarn Plug’n’Play</a></b>, который удаляет node_modules.</p></li>

        <li><p>🕸 Теперь вы можете <b><a href="${proxyUrl}">подключить свою собственную прокси-реализацию</a></b> в режиме разработки чтобы соответствовать вашему бэкэнд-API.</p></li>

        <li><p>🚀 Теперь вы можете использовать <b><a href="${nodePackagesUrl}">пакеты, написанные для последних версий Node</a></b>, не ломая билд.</p></li>

        <li><p>✂ Теперь при желании вы можете получить меньший бандл CSS, если планируете использовать только современные браузеры.</p></li>

        <li><p>👷‍♀ Service workers теперь подключены и построены с использованием Google <b><a href="${workboxUrl}">Workbox</a></b>.</p></li>
    </ul>

    <p><b>Все эти функции работают "из коробки"</b> - чтобы включить их, следуйте приведенным ниже инструкциям.</p>

    <br/>
    <h2>Старт проекта с Create React App 2.0</h2>

    <p>Вам не нужно ничего специально обновлять. Начиная с сегодняшнего дня, когда вы запускаете
        команду <code>create-react-app</code>, она по умолчанию будет использовать версию шаблона <b>2.0</b>. Великолепно!</p>

    <p>
        Если по какой-то причине вы <b>хотите использовать старый шаблон 1.x</b>, вы можете сделать это,
        передав <code>--scripts-version=react-scripts@1.x</code> в качестве аргумента для <code>create-react-app</code>.
    </p>

    <br/>
    <h2>Обновление проекта до Create React App 2.0</h2>

    <p>Обновление невыгруженного проекта до Create React App 2.0 как правило должно
        быть простым. Откройте файл <b>package.json</b> в корне вашего проекта и найдите в нем поле <code>react-scripts</code>.</p>

    <p>Затем измените его версию на <code>2.0.3</code>:</p>

    <ce:code-example-1/>

    <p>Выполните команду <code>npm install</code> (или <code>yarn</code>, если вы его используете). <b>Для многих проектов этого
        однострочного изменения достаточно для обновления!</b></p>
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

    <%--  <b><a href="${}"></a></b>  --%>

</div>

<c:url var="prevPageUrl" value="react-profiler"/>

<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"/>