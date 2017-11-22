<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/installation" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page instalation-page">
    <h1>1.2 Установка</h1>

    <br/>
    <h2>1.2.1 Попробовать React</h2>
    <wg:p>
        Если вы просто хотите побаловаться с <b>React</b>, можно использовать
        <wg:link href="https://jsfiddle.net"><b>JSFiddle</b>.</wg:link> Попробуйте начать с традиционного
        примера <b><wg:link href="https://jsfiddle.net/stzidane/u9a1ug3e/5/">Привет, мир!</wg:link></b>
    </wg:p>
    <wg:p>
        Если вы хотите использовать React для полноценного приложения, то переходите к изучению
        следующих разделов <b>«Создание приложения на React»</b> и <b>«Добавление React в существующее
        приложение»</b>.
    </wg:p>


    <br/>
    <h2>1.2.2 Создание приложения на React</h2>
    <wg:p>
        На гитхабе есть пример создания React приложения. Это лучший путь для начала построения нового
        одностраничного React приложения. Использование этого примера позволит настроить вашу среду разработки,
        так что вы сможете использовать самые последние возможности JavaScript. Кроме того, данный пример предоставляет хороший
        опыт профессиональной разработки и оптимизирует ваше приложение для продакшена.
    </wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-1/>
    </wg:p>
    <wg:p>
        Данный пример не работает с бэк-энд логикой или базой данных. Он просто создает начальный фронт-энд каркасс. Так что мы можем
        использовать его с любой бэк-энд логикой, которая необходима. Данный пример использует инструменты билда, такие как
        <b>Babel</b> и
        <b>webpack</b>, но работает с нулевой конфигурацией. Ее необходимо будет исправить под
        нужды вашего проекта.
    </wg:p>
    <wg:p>
        Когда ваше приложение готово для разворачивания на продакшене, нужно запустить команду <code>npm run
        build</code>. Она создаст оптимизированный билд вашего приложения в папке
        <b>build</b>. Больше информации можно получить
        по ссылкам
        <wg:link href="https://github.com/facebookincubator/create-react-app#create-react-app-"><b>Create React
            App</b></wg:link>
        и
        <wg:link
                href="https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#table-of-contents"><b>User
            Guide</b></wg:link>.
    </wg:p>


    <br/>
    <h2>1.2.3 Добавление React в существующее приложение</h2>

    <wg:p>Нет необходимости переписывать существующее приложение, чтобы начать использовать React. Вместо этого можно добавить React в
        маленькую часть существующего приложения, например, в какой-нибудь виджет. Таким образом, можно наблюдать за правильностью его работы.</wg:p>
    <wg:p>React рекомендуется использовать вместе с инфраструктурой сборки проекта для повышения продуктивности разработки. Типичная
        современная инфраструктура сборки включает:</wg:p>
    <wg:p>
        <ul>
            <li>
                <b>Менеджер пакетов</b>, такой как <wg:link
                    href="https://yarnpkg.com/"><b>Yarn</b></wg:link> или
                <wg:link
                        href="https://www.npmjs.com/"><b>npm</b></wg:link>. Он позволяет получить преимущество огромной экосистемы
                сторонних пакетов, позволяющей устанавливать или обновлять их.
            </li>
            <li>
                <b>Сборщик</b>. Например <wg:link
                    href="https://webpack.js.org/"><b>webpack</b></wg:link>,
                <wg:link href="http://browserify.org/"><b>Browserify</b></wg:link> или
                <wg:link
                        href="http://www.gulpjs.com/"><b>gulp</b></wg:link>. Он позволяет разбивать код на модули и затем
                связывать их в небольшие пакеты для оптимизации времени загрузки.
            </li>
            <li>
                <b>Компилятор</b>. Такой как <wg:link
                    href="http://babeljs.io/"><b>Babel</b></wg:link>. Он позволяет
                писать современный JS код, который будет работать в старых браузерах.
            </li>
        </ul>
    </wg:p>


    <br/>
    <h3>1.2.3.1 Установка React</h3>

    <lt:layout cssClass="alert alert-danger">
        <b>Внимание!</b> Установив React, рекомендуется выставить
        <b>production</b> режим построения проекта. Это гарантирует использование
        быстрой версии React в <b>production</b>-версии проекта.
    </lt:layout>
    <wg:p>
        Для управления front-end зависимостями рекомендуется использовать
        <wg:link href="https://yarnpkg.com/"><b>Yarn</b></wg:link> или
        <wg:link
                href="https://www.npmjs.com/"><b>npm</b></wg:link>. Если вы впервые сталкиваетесь с такими инструментами,
        можете изучить соответствующие документации.
    </wg:p>
    <wg:p>Для того, чтобы установить React с помощью Yarn, необходимо выполнить следующие команды в командной строке:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-2/>
    </wg:p>
    <wg:p>Для того, чтобы установить React с помощью npm, необходимо выполнить:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-3/>
    </wg:p>
    <wg:p>Данные менеджеры скачивают необходимые пакеты с <wg:link
            href="http://npmjs.com/">реестра npm</wg:link>.</wg:p>


    <br/>
    <h3>1.2.3.2 Возможность использования ES6 и JSX</h3>

    <wg:p>Чтобы иметь возможность использовать в JS коде JSX и ES6, рекомендуется использовать
        <b>Babel</b>. ES6 содержит в себе множество современных JavaScript возможностей,
        которые упрощают разработку. В свою очередь JSX – это расширение языка JavaScript, которое
        работает с React и также упрощает разработку на нём.</wg:p>
    <wg:p><wg:link href="https://babeljs.io/docs/setup/">Инструкции установки Babel</wg:link> объясняют как
        сконфигурировать этот компилятор в нескольких различных средах построения проекта. Убедитесь,
        что вы установили <code>babel-preset-react</code> и <code>babel-preset-es2015</code> и разрешили их в вашей
        <wg:link href="http://babeljs.io/docs/usage/babelrc/">.babelrc конфигурации</wg:link>.</wg:p>


    <br/>
    <h3>1.2.3.3 Hello World с ES6 и JSX</h3>

    <wg:p>Наименьший пример кода на ReactJS выглядит примерно так:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-4/>
    </wg:p>
    <wg:p>Данный код отрисовывается в DOM-элемент с атрибутом <code>id="root"</code>. Поэтому все, что необходимо
        сделать - это разместить <code>&lt;div id="root"&gt;&lt;/div&gt;</code> где-нибудь в HTML файле.</wg:p>
    <wg:p>Таким же образом вы можете отрисовывать React-компонент внутри DOM-элемента где-нибудь внутри существующего
        приложения, написанного с помощью какой-либо другой JavaScript UI библиотеки.</wg:p>
    <wg:p>Дополнительно об интеграции React с существующим кодом можно изучить
        <wg:link href="https://facebook.github.io/react/docs/integrating-with-other-libraries.html#integrating-with-other-view-libraries">здесь</wg:link>.</wg:p>


    <br/>
    <h3>1.2.3.4 Development и Production версии проекта</h3>

    <wg:p>По умолчанию React содержит много полезных предупреждений, которые очень помогают в разработке.</wg:p>
    <wg:p>Тем не менее, они делают <b>development</b>-версию React-проекта больше и медленнее.
        Поэтому для развертывания приложения на сервере следует использовать <b>production</b>-версию проекта.</wg:p>
    <wg:p>Изучите как узнать использует ли ваше приложение правильную версию React и как
        сконфигурировать production-сборку наиболее эффективно:</wg:p>
    <wg:p>
        <ul>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#create-react-app">Создание production-сборки с Create React App</wg:link></li>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#single-file-builds">Создание production-сборки с Single-File Builds</wg:link></li>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#brunch">Создание production-сборки с Brunch</wg:link></li>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#browserify">Создание production-сборки с Browserify</wg:link></li>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#rollup">Создание production-сборки с Rollup</wg:link></li>
            <li><wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#webpack">Создание production-сборки с Webpack</wg:link></li>
        </ul>
    </wg:p>


    <br/>
    <h3>1.2.3.5 Использование CDN</h3>

    <wg:p>Если вы не хотите использовать npm для управления пакетами клиента, то <code>react</code> и
        <code>react-dom</code> npm пакеты также предоставляют единые файлы-дистрибутивы в
        папках <code>umd</code>, которые размещены на CDN:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-5/>
    </wg:p>
    <wg:p>Версии выше подходят только для разработки, но не для production-версии проекта.
        Минифицированные и оптимизированные production-версии React находятся здесь:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <ce:code-example-6/>
    </wg:p>
    <wg:p>Чтобы загрузить специфические версии <code>react</code> и <code>react-dom</code>,
        нужно поменять <code>16</code> на номер необходимой версии. Если вы хотите использовать
        Bower, то React доступен через пакет <code>react</code>.</wg:p>

    <br/>
    <h4>1.2.3.5.1 Что такое crossorigin атрибут?</h4>

    <wg:p>Если вы подключаете React из CDN, разработчики рекомендуют установить значение
    атрибута <code>crossorigin</code>:</wg:p>

    <ce:code-example-7/>

    <wg:p>Также рекомендовано проверить, что используемый вами CDN устанавливает HTTP
    заголовок <code>Access-Control-Allow-Origin: *</code>:</wg:p>

    <c:url var="httpHeaderUrl" value="/resources/imges/pages/introduction/installation/http_header.png"/>
    <wg:p cssClass="text-center"><wg:img src="${httpHeaderUrl}"/></wg:p>

    <wg:p>Это обеспечивает улучшенную <wg:link href="https://reactjs.org/blog/2017/07/26/error-handling-in-react-16.html">обработку ошибок в React</wg:link>,
        начиная с 16 версии.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="introduction-in-reactjs"/>
<c:url var="nextPageUrl" value="devtools"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>