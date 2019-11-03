<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.6.0" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="changelogUrl" value="#changelog"/>
<c:url var="danJsConfUrl" value="https://reactjs.org/blog/2018/03/01/sneak-peek-beyond-react-16.html"/>
<c:url var="strictModeUrl" value="react-v16.3.0#strict-mode"/>
<c:url var="strictModeSectionUrl" value="/core/strict-mode"/>
<c:url var="findDomNodeUrl" value="https://reactjs.org/docs/strict-mode.html#warning-about-deprecated-finddomnode-usage"/>
<c:url var="reactInstallationUrl" value="/introduction/installation"/>

<c:url var="pull13748Url" value="https://github.com/facebook/react/pull/13748"/>
<c:url var="pull13885Url" value="https://github.com/facebook/react/pull/13885"/>
<c:url var="pull13760Url" value="https://github.com/facebook/react/pull/13760"/>
<c:url var="pull13841Url" value="https://github.com/facebook/react/pull/13841"/>
<c:url var="pull13732Url" value="https://github.com/facebook/react/pull/13732"/>
<c:url var="pull13799Url" value="https://github.com/facebook/react/pull/13799"/>
<c:url var="pull13922Url" value="https://github.com/facebook/react/pull/13922"/>

<c:url var="pull13728Url" value="https://github.com/facebook/react/pull/13728"/>
<c:url var="pull13746Url" value="https://github.com/facebook/react/pull/13746"/>
<c:url var="pull13829Url" value="https://github.com/facebook/react/pull/13829"/>
<c:url var="pull13778Url" value="https://github.com/facebook/react/pull/13778"/>

<c:url var="pull13855Url" value="https://github.com/facebook/react/pull/13855"/>
<c:url var="pull13889Url" value="https://github.com/facebook/react/pull/13889"/>

<c:url var="pull13683Url" value="https://github.com/facebook/react/pull/13683"/>
<c:url var="pull13720Url" value="https://github.com/facebook/react/pull/13720"/>
<c:url var="pull13842Url" value="https://github.com/facebook/react/pull/13842"/>
<c:url var="pull13740Url" value="https://github.com/facebook/react/pull/13740"/>
<c:url var="pull13785Url" value="https://github.com/facebook/react/pull/13785"/>
<c:url var="pull13731Url" value="https://github.com/facebook/react/pull/13731"/>
<c:url var="pull13590Url" value="https://github.com/facebook/react/pull/13590"/>
<c:url var="pull13766Url" value="https://github.com/facebook/react/pull/13766"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page react-v16.6.0">
    <h1>React v16.6.0: lazy, memo и contextType</h1>

    <wg:p><b>Октябрь 23, 2018 Sebastian Markbåge</b></wg:p>

    <br/>

    <p>
        Сегодня мы выпускаем React 16.6 с несколькими новыми удобными функциями. Форма <code>PureComponent</code>/<code>shouldComponentUpdate</code>
        для компонентов-функций, способ разбиения кода с использованием приостановки и более простой способ
        потребления контекста из компонентов-классов.
    </p>

    <p>
        Изучите полный список изменений <b><a href="${changelogUrl}">ниже</a></b>.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>React.memo</h2>

    <br/>

    <p>Компоненты-классы позволяют избежать перерисовки, когда их входные свойства одинаковы
        при использовании <code>PureComponent</code> или <code>shouldComponentUpdate</code>. Теперь вы можете
        делать то же самое с компонентами-функциями, обернув их в <code>React.memo</code>.</p>

    <ce:code-example-1/>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>React.lazy: Разбиение кода с помощью приостановки (suspense)</h2>

    <br/>

    <p>Возможно, вы видели <b><a href="${danJsConfUrl}">выступление Дэна о React Suspense на JSConf Iceland</a></b>. Теперь вы
        можете использовать компонент <code>Suspense</code> для разбиения кода, оборачивая динамический
        импорт в вызов <code>React.lazy()</code>.</p>

    <ce:code-example-2/>

    <p>Также в будущем компонент <code>Suspense</code> позволит авторам библиотек
        реализовывать извлечение данных с поддержкой приостановки.</p>

    <app:alert type="warning" title="Внимание!">
        Данная функция пока не доступна для отрисовки на стороне сервера. Поддержка приостановки будет
            добавлена в более будущем релизе.
    </app:alert>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>static contextType</h2>

    <br/>

    <p>В React 16.3 мы ввели официальный API-интерфейс контекста в качестве замены предыдущего устаревшего.</p>

    <ce:code-example-3/>

    <br/>
    <p>Мы слышали отзывы о том, что примение нового render prop API может оказаться сложным в
        компонентах-классах. Поэтому мы добавили удобный API для потребления значения контекста внутри компонента-класса.</p>

    <ce:code-example-4/>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>static getDerivedStateFromError()</h2>

    <br/>

    <p>В React 16 введены границы ошибок для обработки ошибок, возникающих при отрисовке.
        У нас уже есть метод жизненного цикла <code>componentDidCatch</code>, который срабатывает после того, как ошибка
        уже произошла. Он отлично подходит для регистрации ошибок на сервере, а также позволяет
        вам показать альтернативный UI пользователю, вызвав <code>setState</code>.</p>

    <p>Перед тем, как он сработает, мы отрисовываем <code>null</code> вместо дерева, которое выдало ошибку.
        Иногда это ломает родительские компоненты, которые не ожидают, что их ссылки <code>ref</code> будут
        пустыми. Он также не работает для восстановления после ошибок на сервере, поскольку
        методы жизненного цикла <code>Did</code> не запускаются во время отрисовки на стороне сервера.</p>

    <p>Мы добавляем еще один метод, который позволяет отрисовывать резервный UI до
        завершения отрисовки. См. документацию для <code>getDerivedStateFromError()</code>.</p>

    <app:alert type="warning" title="Внимание!">
        <code>getDerivedStateFromError()</code> пока недоступен для отрисовки на стороне сервера. Он спроектирован
        для работы с ней в будущем релизе. Мы выпускаем данный метод пораньше, чтобы
        вы могли начать готовиться к его использованию.
    </app:alert>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>Устаревшие элементы в StrictMode</h2>

    <br/>

    <p>В <b><a href="${strictModeUrl}">16.3</a></b> мы представили компонент <b><a href="${strictModeSectionUrl}">StrictMode</a></b>. Он позволяет включить ранние предупреждения
        для шаблонов, которые могут вызвать проблемы в будущем.</p>

    <p>Мы добавили еще два элемента в список устаревших API в <code>StrictMode</code>. Если вы не используете <code>StrictMode</code>, вам
        не нужно беспокоиться - эти предупреждения для вас не сработают.</p>

    <ul>
        <li>
            <p><b>ReactDOM.findDOMNode()</b> Этот API часто неправильно понимают, и в большинстве случаев его
                использование не обязательно. Также в React 16 он, к удивлению, может быть медленным.
                <b><a href="${findDomNodeUrl}">Смотрите документацию</a></b> о возможных путях апгрейда.</p>
        </li>
        <li>
            <p><b>Устаревший контекст:</b> использование <code>contextTypes</code> и <code>getChildContext</code>. Устаревший
                контекст делает React немного медленнее и больше, чем нужно. Именно поэтому мы настоятельно рекомендуем
                перейти на новый API контекста. Надеемся, что добавление <code>contextType</code> API немного упростит задачу.</p>
        </li>
    </ul>

    <p>Если у вас возникли проблемы с апгрейдом, мы хотели бы услышать ваши отзывы.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>Установка</h2>

    <br/>

    <p>React v16.6.0 доступен в реестре <b>npm</b>.</p>

    <p>Чтобы установить React 16 с помощью Yarn, запустите:</p>

    <ce:code-example-5/>

    <p>Чтобы установить React 16 с помощью npm, запустите:</p>

    <ce:code-example-6/>

    <p>Мы также предоставляем UMD-сборки React на CDN:</p>

    <ce:code-example-7/>

    <p>Обратитесь к документации для получения подробных <b><a href="${reactInstallationUrl}">инструкций по установке</a></b>.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>

    <h2>Список изменений</h2>

    <br/>

    <h3>React</h3>

    <ul>
        <li>
            <p>Добавлен <code>React.memo()</code> в качестве альтернативы <code>PureComponent</code>
                для функций. (<a href="${pull13748Url}">#13748</a>)</p>
        </li>
        <li>
            <p>Добавлен <code>React.lazy()</code> для разбиения кода компонентов.
                (<a href="${pull13885Url}">#13885</a>)</p>
        </li>
        <li>
            <p><code>React.StrictMode</code> теперь предупреждает об устаревшем API контекста.
                (<a href="${pull13760Url}">#13760</a>)</p>
        </li>
        <li>
            <p><code>React.StrictMode</code> теперь предупреждает о <code>findDOMNode</code>.
                (<a href="${pull13841Url}">#13841</a>)</p>
        </li>
        <li>
            <p>Переименование <code>unstable_AsyncMode</code> в <code>unstable_ConcurrentMode</code>.
                (<a href="${pull13732Url}">#13732</a>)</p>
        </li>
        <li>
            <p>Переименование <code>unstable_Placeholder</code> в <code>Suspense</code>,
                и <code>delayMs</code> в <code>maxDuration</code>.
                (<a href="${pull13799Url}">#13799</a> и <a href="${pull13922Url}">#13922</a>)</p>
        </li>
    </ul>

    <br/>
    <h3>React DOM</h3>

    <ul>
        <li>
            <p>Добавление <code>contextType</code> как более эргономичного способа подписки на контекст из класса.
                (<a href="${pull13728Url}">#13728</a>)</p>
        </li>
        <li>
            <p>Добавлен метод жизненного цикла <code>getDerivedStateFromError</code> для отлова ошибок в будущей асинхронной
                отрисовке на стороне сервера. (<a href="${pull13746Url}">#13746</a>)</p>
        </li>
        <li>
            <p>Предупреждение, когда вместо <code>&lt;Context.Consumer&gt;</code> используется <code>&lt;Context&gt;</code>.
                (<a href="${pull13829Url}">#13829</a>)</p>
        </li>
        <li>
            <p>Исправление серого оверлея на iOS Safari.
                (<a href="${pull13778Url}">#13778</a>)</p>
        </li>
        <li>
            <p>Исправлена ошибка, вызванная перезаписью <code>window.event</code> в режиме разработки.</p>
        </li>
    </ul>

    <br/>
    <h3>React DOM Server</h3>

    <ul>
        <li>
            <p>Добавлена поддержка <code>React.memo()</code>.
                (<a href="${pull13855Url}">#13855</a>)</p>
        </li>
        <li>
            <p>Добавлена поддержка <code>contextType</code>.
                (<a href="${pull13889Url}">#13889</a>)</p>
        </li>
    </ul>

    <br/>
    <h3>Scheduler (экспериментальный)</h3>

    <ul>
        <li>
            <p>Переименование пакета в <code>scheduler</code>.
                (<a href="${pull13683Url}">#13683</a>)</p>
        </li>
        <li>
            <p>Поддержка уровней приоритетов, продолжений и обернутых обратных вызовов.
                (<a href="${pull13720Url}">#13720</a> и <a href="${pull13842Url}">#13842</a>)</p>
        </li>
        <li>
            <p>Улучшение механизма резерва в средах, не относящихся к DOM.
                (<a href="${pull13740Url}">#13740</a>)</p>
        </li>
        <li>
            <p>Запланировать <code>requestAnimationFrame</code> ранее.
                (<a href="${pull13785Url}">#13785</a>)</p>
        </li>
        <li>
            <p>Исправлено обнаружение DOM, теперь оно работает более тщательно.
                (<a href="${pull13731Url}">#13731</a>)</p>
        </li>
        <li>
            <p>Исправлены ошибки, связанные с отслеживанием взаимодействия.
                (<a href="${pull13590Url}">#13590</a>)</p>
        </li>
        <li>
            <p>В пакет добавлено преобразование <code>envify</code>.
                (<a href="${pull13766Url}">#13766</a>)</p>
        </li>
    </ul>
</div>

<c:url var="prevPageUrl" value="create-react-app-2.0"/>
<c:url var="nextPageUrl" value="react-v16.x-road-map"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>