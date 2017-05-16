<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/introduction/installation" %>

<lt:layout cssClass="page instalation-page">
    <wg:head size="3"><strong>Установка</strong></wg:head>


    <br/>
    <wg:head size="4"><strong>Попробовать React</strong></wg:head>
    <wg:p>
        Если вы просто хотите побаловаться с <strong>React</strong>, можно использовать
        <wg:link href="https://jsfiddle.net"><strong>JSFiddle</strong>.</wg:link> Попробуйте начать с традиционного
        примера <strong><wg:link href="https://jsfiddle.net/stzidane/u9a1ug3e/5/">Привет, мир!</wg:link></strong>
    </wg:p>
    <wg:p>
        Если вы хотите использовать React для полноценного приложения, то переходите к изучению
        следующих разделов <strong>«Создание приложения на React»</strong> и <strong>«Добавление React в существующее
        приложение»</strong>.
    </wg:p>


    <br/>
    <wg:head size="4"><strong>Создание приложения на React</strong></wg:head>
    <wg:p>
        На гитхабе есть пример создания React приложения. Это лучший путь для начала построения нового
        одностраничного React приложения. Использование этого примера позволит настроить вашу среду разработки,
        так что вы сможете использовать самые последние возможности JavaSript. Кроме того данный пример предоставляет хороший
        опыт профессиональной разработки и оптимизирует ваше приложение для продакшена.
    </wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>
    <wg:p>
        Данный пример не работает с бэк-энд логикой или базой данных. Он просто создает начальный фронт-энд каркасс. Так что мы можем
        использовать его с любой бэк-энд логикой, которая необходима. Данный пример использует инструменты билда, такие как
        <strong>Babel</strong> и
        <strong>webpack</strong>, но работает с нулевой конфигурацией. Ее необходимо будет исправить под
        нужды вашего проекта.
    </wg:p>
    <wg:p>
        Когда ваше приложение готово для разворачивания на продакшене, нужно запустить команду <code>npm run
        build</code>. Она создаст оптимизированый билд вашего приложения в папке
        <strong>build</strong>. Больше информации можно получить
        по ссылкам
        <wg:link href="https://github.com/facebookincubator/create-react-app#create-react-app-"><strong>Create React
            App</strong></wg:link>
        и
        <wg:link
                href="https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#table-of-contents"><strong>User
            Guide</strong></wg:link>.
    </wg:p>


    <br/>
    <wg:head size="4"><strong>Добавление React в существующее приложение</strong></wg:head>
    <wg:p>Нет необходимости переписывать существующее приложение, чтобы начать использовать React. Вместо этого можно добавить React в
        маленькую часть существующего приложения, например в какой-нибудь виджет. Таким образом, можно наблюдать за правильностью его работы.</wg:p>
    <wg:p>React рекомендуется использовать вместе с инфраструктурой сборки проекта для повышения продуктивности разработки. Типичная
        современная инфраструктура сборки включает:</wg:p>
    <wg:p>
        <ul>
            <li>
                <strong>Менеджер пакетов</strong>, такой как <wg:link
                    href="https://yarnpkg.com/"><strong>Yarn</strong></wg:link> или
                <wg:link
                        href="https://www.npmjs.com/"><strong>npm</strong></wg:link>. Он позволяет получить приемущество огромной экосистемы
                сторонних пакетов, позволяющей устанавливать или обновлять их.
            </li>
            <li>
                <strong>Сборщик</strong>. Например <wg:link
                    href="https://webpack.js.org/"><strong>webpack</strong></wg:link>,
                <wg:link href="http://browserify.org/"><strong>Browserify</strong></wg:link> или
                <wg:link
                        href="http://www.gulpjs.com/"><strong>gulp</strong></wg:link>. Он позволяет разбивать код на модули и затем
                связывать их в небольшие пакеты для оптимизации времени загрузки.
            </li>
            <li>
                <strong>Компилятор</strong>. Такой как <wg:link
                    href="http://babeljs.io/"><strong>Babel</strong></wg:link>. Он позволяет
                писать современный JS код, который будет работать в старых браузерах.
            </li>
        </ul>
    </wg:p>


    <br/>
    <wg:head size="5"><strong>Установка React</strong></wg:head>
    <lt:layout cssClass="alert alert-danger">
        <strong>Внимание!</strong> Установив React, рекомендуется выставить
        <strong>production</strong> режим построения проекта. Это гарантирует использование
        быстрой версии React в <strong>production</strong>-версии проекта.
    </lt:layout>
    <wg:p>
        Для управления front-end зависимостями рекомендуется использовать
        <wg:link href="https://yarnpkg.com/"><strong>Yarn</strong></wg:link> или
        <wg:link
                href="https://www.npmjs.com/"><strong>npm</strong></wg:link>. Если вы впервые сталкиваетесь с такими инструментами,
        можете изучить соответствующие документации.
    </wg:p>
    <wg:p>Для того, чтобы установить React с помощью Yarn, необходимо выполнить следующие команды в командной строке:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-2/>
    </wg:p>
    <wg:p>Для того, чтобы установить React с помощью npm, необходимо выполнить:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-3/>
    </wg:p>
    <wg:p>Данные менеджеры скачивают необходимые пакеты с <wg:link
            href="http://npmjs.com/">реестра npm</wg:link>.</wg:p>


    <br/>
    <wg:head size="5"><strong>Возможность использования ES6 и JSX</strong></wg:head>
    <wg:p>Чтобы иметь возможность использовать в JS коде JSX и ES6, рекомендуется использовать
        <strong>Babel</strong>. ES6 содержит в себе множество современных JavaScript возможностей,
        которые упрощают разработку. В свою очередь JSX – это расширение языка JavaScript, которое
        работает с React и также упрощает разработку на нём.</wg:p>
    <wg:p><wg:link href="https://babeljs.io/docs/setup/">Инструкции установки Babel</wg:link> объясняют как
        сконфигурировать этот компилятор в нескольких различных средах построения проекта. Убедитесь,
        что вы установили <code>babel-preset-react</code> и <code>babel-preset-es2015</code> и разрешили их в вашей
        <wg:link href="http://babeljs.io/docs/usage/babelrc/">.babelrc конфигурации</wg:link>.</wg:p>


    <br/>
    <wg:head size="5"><strong>Hello World с ES6 и JSX</strong></wg:head>
    <wg:p>Наименьший пример кода на Ract JS выглядит примерно так:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-4/>
    </wg:p>
    <wg:p>Данный код отрисовывается в DOM-элемент с атрибутом <code>id="root"</code>. Поэтому все, что необходимо
        сделать - это разместить <code>&lt;div id="root"&gt;&lt;/div&gt;</code> где-нибудь в HTML файле.</wg:p>
    <wg:p>Таким же образом вы можете отрисовывать React компонент внутри DOM-элемента где-нибудь внутри существующего
        приложения, написанного с помощью какой-либо другой JavaScript UI библиотеки.</wg:p>
    <wg:p>Дополнительно об интеграции React с существующим кодом можно изучить
        <wg:link href="https://facebook.github.io/react/docs/integrating-with-other-libraries.html#integrating-with-other-view-libraries">здесь</wg:link>.</wg:p>


    <br/>
    <wg:head size="5"><strong>Development и Production версии проекта</strong></wg:head>
    <wg:p>По умолчанию React содержит много полезных предупреждений, которые очень помогают в разработке.</wg:p>
    <wg:p>Тем не менее, они делают <strong>development</strong>-версию React-проекта больше и медленнее.
        Поэтому для развертывания приложения на сервере следует использовать <strong>production</strong>-версию проекта.</wg:p>
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
    <wg:head size="5"><strong>Использование CDN</strong></wg:head>
    <wg:p>Если вы не хотите использовать npm для управления пакетами клиента, то <code>react</code> и
        <code>react-dom</code> npm пакеты также предоставляют единые файлы-дистрибутивы в
        папках <code>dist</code>, которые размещены на CDN:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-5/>
    </wg:p>
    <wg:p>Версии выше подходят только для разработки, но не для production-версии проекта.
        Минифицированные и оптимизированные production-версии React находятся здесь:</wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-6/>
    </wg:p>
    <wg:p>Чтобы загрузить специфические версии <code>react</code> и <code>react-dom</code>,
        нужно поменять <code>15</code> на номер необходимой версии. Если вы хотите исопльзовать
        Bower, то React доступен через пакет <code>react</code>.</wg:p>
</lt:layout>