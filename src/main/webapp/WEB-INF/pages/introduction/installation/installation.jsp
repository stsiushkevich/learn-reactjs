<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/installation" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="helloWorldCodePenUrl" value="https://reactjs.org/redirect-to-codepen/hello-world"/>
<c:url var="helloWorldCodeSandboxUrl" value="https://codesandbox.io/s/new"/>
<c:url var="minHtmlTmplUrl" value="https://raw.githubusercontent.com/reactjs/reactjs.org/master/static/html/single-file-example.html"/>
<c:url var="createReactAppUrl" value="https://github.com/facebook/create-react-app"/>
<c:url var="npxUrl" value="https://www.npmjs.com/package/npx"/>
<c:url var="readMeUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#table-of-contents"/>
<c:url var="userGuideUrl" value="https://github.com/facebook/create-react-app#create-react-app-"/>
<c:url var="kitsUrl" value="https://reactjs.org/community/starter-kits.html"/>
<c:url var="otherKitsUrl" value="https://reactjs.org/community/starter-kits.html#other-starter-kits"/>

<c:url var="yarnUrl" value="https://yarnpkg.com/lang/en/"/>
<c:url var="npmUrl" value="https://www.npmjs.com/"/>
<c:url var="webpackUrl" value="https://webpack.js.org/"/>
<c:url var="browserifyUrl" value="http://browserify.org/"/>
<c:url var="gulpUrl" value="http://www.gulpjs.com/"/>
<c:url var="babelUrl" value="http://babeljs.io"/>
<c:url var="npmRegisterUrl" value="http://babeljs.io"/>

<c:url var="babelInstructionsUrl" value="https://babeljs.io/docs/setup/"/>
<c:url var="babelrcUrl" value="http://babeljs.io/docs/usage/babelrc/"/>

<c:url var="integratingUrl" value="http://babeljs.io/docs/usage/babelrc/"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page instalation-page">
    <h1>1.2 Установка</h1>

    <br/>
    <h2>1.2.1 Попробовать React</h2>

    <h3>1.2.1.1 Онлайн</h3>
    <wg:p>
        Если вы просто хотите побаловаться с <b>React</b>, то можете использовать онлайн площадку для кода.
        Попробуйте пример <b>Hello World</b> на <wg:link href="${helloWorldCodePenUrl}">CodePen</wg:link> или
        <wg:link href="${helloWorldCodeSandboxUrl}">CodeSandbox</wg:link>.
    </wg:p>

    <br/>
    <h3>1.2.1.2 Минимальный HTML шаблон</h3>

    <wg:p>
        Если вы предпочитаете использовать собственный текстовый редактор, вы также
        можете загрузить <wg:link href="${minHtmlTmplUrl}">этот HTML-файл</wg:link>,
        отредактировать его и открыть его из локальной файловой системы в своем браузере.
        Он выполняет медленное runtime-преобразование кода, поэтому не используйте его в продакшене.
    </wg:p>

    <wg:p>
        Если вы хотите использовать React для полноценного приложения, то переходите к изучению
        следующих разделов <b>«Создание приложения на React»</b> и <b>«Добавление React в существующее
        приложение»</b>.
    </wg:p>

    <br/>
    <h2>1.2.2 Следующие шаги</h2>

    <br/>
    <h3>1.2.2.1 Быстрый старт</h3>

    <wg:p>
        <ul>
            <li>Перейдите к разделу «Быстрый старт» для пошагового ознакомления с концепциями React.</li>
            <li>Перейдите к разделу «Для продвинутых» для более глубокого изучения.</li>
        </ul>
    </wg:p>

    <br/>
    <h3>1.2.2.2 Полноценная среда разработки</h3>

    <wg:p>Более легкие решения выше подходят, если вы новичок в React или просто экспериментируете.</wg:p>

    <wg:p>
        Когда вы будете готовы создать свое первое приложение с помощью React, ознакомьтесь с
        руководствами по установке ниже. Эти настройки предназначены для того, чтобы вы могли
        работать, используя богатый опыт разработчиков и были готовы к продакшену. Они включают
        в себя встроенный линт, тестирование и оптимизацию, однако для их установки и конфигурации
        требуется больше времени и места на диске.
    </wg:p>

    <wg:p>
        <ul>
            <li><b>Добавление React в новое приложение</b>: создайте новое приложение с полнофункциональным стартовым комплектом.</li>
            <li><b>Добавление React в существующее приложение</b>: добавьте React в систему сборки или большее приложение.</li>
        </ul>
    </wg:p>

    <br/>
    <h2>1.2.3 Добавить React в новое приложение</h2>

    <wg:p>
        Самый простой способ начать работу над новым проектом React - это использовать стартовый комплект.
    </wg:p>

    <app:alert type="warning" title="Внимание!">
        <wg:p>
            На данной странице описывается настройка одностраничного приложения со всем необходимым
            для удобного процесса разработки, включая линт, тестирование, оптимизацию продакшена и
            многое другое. Полнофункциональные инструменты, такие как эти, для установки требуют
            некоторое время и место на диске.
        </wg:p>

        <wg:p>Если вы не создаете одностраничное приложение, вы можете либо добавить React в
            существующий конвейер сборки, либо использовать его из CDN без стадии сборки.</wg:p>
    </app:alert>

    <br/>
    <h3>1.2.3.1 Создание React приложения</h3>

    <wg:p>
        Пример <wg:link href="${createReactAppUrl}">Create React App</wg:link> - это лучший способ начать разработку нового одностраничного
        приложения React. Он настраивает вашу среду разработки, чтобы вы могли использовать
        новейшие функции JavaScript, предоставляет хороший опыт разработки и оптимизирует
        ваше приложение для продакшен. Вам понадобится <b>Node >= 6</b> на вашем компьютере.
    </wg:p>

    <ce:code-example-1/>

    <wg:p>Если у вас установлен <b>npm 5.2.0+</b>, вы можете использовать <wg:link href="${npxUrl}">npx</wg:link>.</wg:p>

    <ce:code-example-1.1/>

    <wg:p>
        Данный пример не работает с бекенд логикой или базой данных. Он просто создает начальный фронтенд каркас. Так что мы можем
        использовать его с любой бекенд логикой, которая необходима. Данный пример использует инструменты билда, такие как
        <b>Babel</b> и <b>webpack</b>, но работает с нулевой конфигурацией. Ее необходимо будет исправить под
        нужды вашего проекта.
    </wg:p>

    <wg:p>
        Когда ваше приложение готово для разворачивания на продакшене, нужно запустить команду <code>npm run build</code>.
        Она создаст оптимизированный билд вашего приложения в папке <b>build</b>.
        Больше информации можно получить по ссылкам <wg:link href="${readMeUrl}">Read Me</wg:link> и
        <wg:link href="${userGuideUrl}"><b>User Guide</b></wg:link>.
    </wg:p>

    <br/>
    <h3>1.2.3.2 Создание React приложения</h3>

    <wg:p>
        Мы создали <wg:link href="${kitsUrl}">кураторский список сторонних стартовых комплектов</wg:link>, которые официально рекомендуем.
    </wg:p>

    <wg:p>
        Они немного отличаются своим фокусом, но все они готовы к продакшену, хорошо поддерживаются и не
        требуют настройки для начала работы.
    </wg:p>

    <wg:p>
        Вы также можете просмотреть <wg:link href="${otherKitsUrl}">список других комплектов</wg:link>, предоставленных сообществом.
    </wg:p>

    <br/>
    <h2>1.2.4 Добавление React в существующее приложение</h2>

    <wg:p>
        Нет необходимости переписывать существующее приложение, чтобы начать использовать React.
        Вместо этого можно добавить React в маленькую часть существующего приложения, например,
        в какой-нибудь виджет. Таким образом, можно наблюдать за правильностью его работы.
    </wg:p>

    <wg:p>React рекомендуется использовать вместе с инфраструктурой сборки проекта для повышения продуктивности разработки. Типичная
        современная инфраструктура сборки включает:</wg:p>
    <wg:p>
        <ul>
            <li>
                <b>Менеджер пакетов</b>, такой как <wg:link href="${yarnUrl}"><b>Yarn</b></wg:link> или
                <wg:link href="${npmUrl}"><b>npm</b></wg:link>. Он позволяет получить преимущество огромной экосистемы
                сторонних пакетов, позволяющей устанавливать или обновлять их.
            </li>
            <li>
                <b>Сборщик</b>. Например <wg:link href="${webpackUrl}"><b>webpack</b></wg:link>,
                <wg:link href="${browserifyUrl}"><b>Browserify</b></wg:link> или
                <wg:link href="${gulpUrl}"><b>gulp</b></wg:link>. Он позволяет разбивать код на модули и затем
                связывать их в небольшие пакеты для оптимизации времени загрузки.
            </li>
            <li>
                <b>Компилятор</b>. Такой как <wg:link href="${babelUrl}"><b>Babel</b></wg:link>. Он позволяет
                писать современный JS код, который будет работать в старых браузерах.
            </li>
        </ul>
    </wg:p>


    <br/>
    <h3>1.2.4.1 Установка React</h3>

    <app:alert type="warning" title="Внимание!">
        Установив React, рекомендуется выставить <b>production</b> режим построения проекта. Это гарантирует
        использование быстрой версии React в <b>production</b>-версии проекта.
    </app:alert>

    <wg:p>
        Для управления front-end зависимостями рекомендуется использовать
        <wg:link href="${yarnUrl}"><b>Yarn</b></wg:link> или <wg:link href="${npmUrl}"><b>npm</b></wg:link>. Если вы
        впервые сталкиваетесь с такими инструментами, можете изучить соответствующие документации.
    </wg:p>

    <wg:p>
        Для того, чтобы установить React с помощью <b>Yarn</b>, необходимо выполнить следующие команды в командной строке:
    </wg:p>

    <ce:code-example-2/>

    <wg:p>Для того, чтобы установить React с помощью <b>npm</b>, необходимо выполнить:</wg:p>

    <ce:code-example-3/>

    <wg:p>Данные менеджеры скачивают необходимые пакеты с <wg:link href="${npmRegisterUrl}">реестра npm</wg:link>.</wg:p>

    <app:alert type="warning" title="Внимание!">
        Чтобы предотвратить потенциальные несовместимости, все React пакеты должны использовать
        одну и ту же версию. (Сюда входят <code>react</code>, <code>react-dom</code>, <code>react-test-renderer</code> и т.д.)
    </app:alert>

    <br/>
    <h3>1.2.4.2 Возможность использования ES6 и JSX</h3>

    <wg:p>
        Чтобы иметь возможность использовать в JS коде JSX и ES6, рекомендуется использовать
        <b>Babel</b>. ES6 содержит в себе множество современных JavaScript возможностей,
        которые упрощают разработку. В свою очередь JSX – это расширение языка JavaScript, которое
        работает с React и также упрощает разработку на нём.
    </wg:p>

    <wg:p>
        <wg:link href="${babelInstructionsUrl}">Инструкции установки Babel</wg:link> объясняют как
        сконфигурировать этот компилятор в нескольких различных средах построения проекта. Убедитесь,
        что вы установили <code>babel-preset-react</code> и <code>babel-preset-env</code> и разрешили их в вашей
        <wg:link href="${babelrcUrl}">.babelrc конфигурации</wg:link>.
    </wg:p>

    <br/>
    <h3>1.2.4.3 Hello World с ES6 и JSX</h3>

    <wg:p>
        Рекомендуется использовать бандлер, такой как <b>webpack</b> или <b>Browserify</b>, чтобы
        вы могли писать модульный код и объединять его в небольшие пакеты для оптимизации времени загрузки.
    </wg:p>

    <wg:p>Наименьший пример кода на ReactJS выглядит примерно так:</wg:p>

    <ce:code-example-4/>

    <wg:p>
        Данный код отрисовывается в DOM-элемент с атрибутом <code>id="root"</code>. Поэтому все, что необходимо
        сделать - это разместить <code>&lt;div id="root"&gt;&lt;/div&gt;</code> где-нибудь в HTML файле.
    </wg:p>

    <wg:p>
        Таким же образом вы можете отрисовывать React-компонент внутри DOM-элемента где-нибудь внутри существующего
        приложения, написанного с помощью какой-либо другой JavaScript UI библиотеки.
    </wg:p>

    <wg:p>
        Дополнительно об интеграции React с существующим кодом можно
        изучить <wg:link href="${integratingUrl}">здесь</wg:link>.
    </wg:p>

    <br/>
    <h3>1.2.4.4 Development и Production версии проекта</h3>

    <wg:p>
        По умолчанию React содержит много полезных предупреждений, которые очень помогают в разработке.
    </wg:p>

    <wg:p>
        Тем не менее, они делают <b>development</b>-версию React-проекта <b>больше и медленнее</b>.
        Поэтому для развертывания приложения на сервере следует использовать <b>production</b>-версию проекта.
    </wg:p>

    <wg:p>
        Изучите как узнать использует ли ваше приложение правильную версию React и как
        сконфигурировать production-сборку наиболее эффективно:
    </wg:p>

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
    <h3>1.2.4.5 Использование CDN</h3>

    <wg:p>
        Если вы не хотите использовать npm для управления пакетами клиента, то <code>react</code> и
        <code>react-dom</code> npm пакеты также предоставляют единые файлы-дистрибутивы в
        папках <code>umd</code>, которые размещены на CDN:
    </wg:p>

    <ce:code-example-5/>

    <wg:p>
        Версии выше подходят только для разработки, но не для production-версии проекта.
        Минифицированные и оптимизированные production-версии React находятся здесь:
    </wg:p>

    <ce:code-example-6/>

    <wg:p>
        Чтобы загрузить специфические версии <code>react</code> и <code>react-dom</code>,
        нужно поменять <code>16</code> на номер необходимой версии.
    </wg:p>

    <br/>
    <h4>1.2.4.5.1 Что такое crossorigin атрибут?</h4>

    <wg:p>
        Если вы подключаете React из CDN, разработчики рекомендуют установить значение
    атрибута <code>crossorigin</code>:
    </wg:p>

    <ce:code-example-7/>

    <wg:p>
        Также рекомендовано проверить, что используемый вами CDN устанавливает HTTP
        заголовок <code>Access-Control-Allow-Origin: *</code>:
    </wg:p>

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