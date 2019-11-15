<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/create-react-app/get-started" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="replUrl" value="https://repl.it/"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page app-frame-page">
    <h1>Начало работы</h1>

    <br/>

    <p>
        Create React App - официально поддерживаемый способ создания одностраничных
        приложений React. Он предлагает современные настройки сборки без конфигурации.
    </p>
    
    <h3>Быстрый старт</h3>
    
    <ce:code-example-1/>

    <app:alert title="Внимание!" type="warning">
        Если ранее вы установили <code>create-react-app</code> глобально с помощью
        <code>npm install -g create-react-app</code>, мы рекомендуем вам удалить пакет с
        помощью <code>npm uninstall -g create-react-app</code>, чтобы <code>npx</code> всегда
        использовал последнюю версию.
    </app:alert>
    
    <c:url var="instructionsUrl" value="https://gist.github.com/gaearon/4064d3c23a77c74a3614c498a8bb1c5f"/>
    
    <p style="font-style: italic">
        (npx поставляется с npm 5.2+ и выше, см.
        <b><a href="${instructionsUrl}">инструкции для более старых версий</a></b> npm)
    </p>
    
    <p>
        Затем откройте <code>http://localhost:3000/</code>, чтобы увидеть ваше приложение.
    </p>
    
    <p>
        Когда вы будете готовы к развертыванию на продакшен, создайте
        минимизированный пакет с помощью <code>npm run build</code>.
    </p>
    
    <p>
        <img width="500px" src="https://camo.githubusercontent.com/29765c4a32f03bd01d44edef1cd674225e3c906b/68747470733a2f2f63646e2e7261776769742e636f6d2f66616365626f6f6b2f6372656174652d72656163742d6170702f323762343261632f73637265656e636173742e737667" class="text-center">
    </p>
    <br/>
    
    <h4>Незамедлительный старт</h4>
    
    <p>
        Вам не нужно устанавливать или настраивать такие инструменты, как
        Webpack или Babel. Они предварительно настроены и скрыты, так что вы можете
        сосредоточиться на коде.
    </p>
    
    <p>
        Просто создайте проект, и все готово.
    </p>
    
    <br/>
    <h3>Создание приложения</h3>
    <br/>
    
    <c:url var="nvmUrl" value=""/>
    <c:url var="nvmWindowsUrl" value=""/>
    
    <p>
        <b>Вам понадобится Node> = 8.10 на вашем локальном компьютере</b> (на сервере это не требуется).
        Вы можете использовать <b><a href="${nvmUrl}">nvm</a></b> (macOS / Linux)
        или <b><a href="${nvmWindowsUrl}">nvm-windows</a></b> для простого переключения
        версий Node между различными проектами.
    </p>
    
    <p>
        Чтобы создать новое приложение, вы можете выбрать один из следующих методов:
    </p>
    
    <p><b>npx</b></p>
    
    <ce:code-example-2/>
    
    <p style="font-style: italic">
        (npx поставляется с npm 5.2+ и выше, см.
        <b><a href="${instructionsUrl}">инструкции для более старых версий</a></b> npm)
    </p>
    
    <p><b>npm</b></p>
    
    <ce:code-example-3/>
    
    <p style="font-style: italic">
        Команда <code>npm init &lt;initializer&gt;</code> доступна в npm 6+
    </p>
    
    <ce:code-example-4/>
    
    <p style="font-style: italic">
        Команда <code>yarn create</code> доступна в Yarn 0.25+
    </p>
    
    <br/>
    <h4>Создание TypeScript-приложения</h4>
    <br/>
    
    <c:url var="addingTypeScriptUrl" value="https://create-react-app.dev/docs/adding-typescript/"/>
    
    <p>
        Следуйте <b><a href="${addingTypeScriptUrl}">нашей документации</a></b>, чтобы создать
        приложение на TypeScript.
    </p>
    
    <br/>
    <h4>Создание TypeScript-приложения</h4>
    <br/>
    
    <c:url var="yarnUrl" value="https://yarnpkg.com/lang/en/"/>
    
    <p>
        Когда вы создаете новое приложение, CLI будет использовать <b><a href="${yarnUrl}">Yarn</a></b> для
        установки зависимостей (если они доступны). Если у вас установлен Yarn,
        но вы предпочитаете использовать npm, вы можете добавить --use-npm к
        команде создания. Например:
    </p>
    
    <ce:code-example-5/>
    
    <br/>
    <h3>Результат</h3>
    <br/>
    
    <p>
        Выполнение любой из этих команд создаст каталог под названием <code>my-app</code> внутри
        текущей папки. Внутри этого каталога будет сгенерирована исходная структура проекта
        и установятся переходные зависимости:
    </p>
    
    <ce:code-example-6/>
    
    <p>
        Никакой конфигурации или сложной структуры папок, только файлы,
        необходимые для создания приложения. После завершения установки
        вы можете открыть папку вашего проекта:
    </p>
    
    <ce:code-example-7/>
    
    <br/>
    <h3>Скрипты</h3>
    <br/>
    
    <p>
        Внутри новосозданного проекта вы можете запустить несколько команд:
    </p>
    
    <br/>
    <h4>npm start или yarn start</h4>
    <br/>
    
    <p>
        Запускает приложение в режиме разработки. Откройте
        <code>http://localhost:3000/</code>, чтобы просмотреть его в браузере.
    </p>
    
    <p>
        Страница автоматически перезагрузится, если вы внесете изменения в код.
        Ошибки сборки и lint-предупреждения вы увидите  в консоли.
    </p>
    
    <p>
        <img width="500px" src="https://cdn.rawgit.com/marionebl/create-react-app/9f62826/screencast-error.svg" class="text-center">
    </p>
    
    <br/>
    <h4>npm test или yarn test</h4>
    <br/>
    
    <p>
        Запускает наблюдатель тестов в интерактивном режиме. По умолчанию запускаются тесты,
        связанные с файлами, измененными с момента последнего коммита.
    </p>
    
    <br/>
    <h4>npm run build или yarn build</h4>
    <br/>
    
    <p>
        Собирает приложение для продакшен в папке build. Скрипт корректно создаёт
        бандлы React для продакшен режима и оптимизирует сборку для лучшей производительности.
    </p>
    
    <p>
        Сборка будет минимизирована, а имена файлов буду содержать хэши.
    </p>
    
    <p>После этого ваше приложение готово к развертыванию.</p>
</lt:layout>

<c:url var="nextPageUrl" value="/create-react-app/folder-structure"/>

<app:page-navigate
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>