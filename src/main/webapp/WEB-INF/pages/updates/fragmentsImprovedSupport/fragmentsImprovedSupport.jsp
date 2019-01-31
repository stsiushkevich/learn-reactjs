<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/fragmentsImprovedSupport" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="jsxCodePenUrl" value="https://codepen.io/reactjs/pen/VrEbjE?editors=1000"/>
<c:url var="presentReactUrl" value="https://www.npmjs.com/package/@babel/preset-react"/>
<c:url var="flowUrl" value="https://flow.org"/>
<c:url var="flowV59Url" value="https://github.com/facebook/flow/releases/tag/v0.59.0"/>
<c:url var="prettierUrl" value="https://github.com/prettier/prettier"/>
<c:url var="prettierV19Url" value="https://prettier.io/blog/2017/12/05/1.9.0.html#jsx-fragment-syntax-3237-https-githubcom-prettier-prettier-pull-3237-by-duailibe-https-githubcom-duailibe"/>
<c:url var="esLintUrl" value="https://eslint.org/"/>
<c:url var="babelEsLintUrl" value="https://github.com/babel/babel-eslint"/>
<c:url var="issue9662Url" value="https://github.com/eslint/eslint/issues/9662"/>
<c:url var="installationUrl" value="https://learn-reactjs.ru/introduction/installation"/>
<c:url var="clemmyGitUrl" value="https://github.com/clemmy"/>
<c:url var="issue10783Url" value="https://github.com/facebook/react/pull/10783"/>
<c:url var="MatteoVHGitUrl" value="https://github.com/MatteoVH"/>
<c:url var="issue11422Url" value="https://github.com/facebook/react/pull/11422"/>
<c:url var="landvibeGitUrl" value="https://github.com/landvibe"/>
<c:url var="issue11227Url" value="https://github.com/facebook/react/pull/11227"/>
<c:url var="jquenseGitUrl" value="https://github.com/jquense"/>
<c:url var="issue11028Url" value="https://github.com/facebook/react/pull/11028"/>
<c:url var="accordeiroGitUrl" value="https://github.com/accordeiro"/>
<c:url var="issue11507Url" value="https://github.com/facebook/react/pull/11507"/>
<c:url var="rivenhkGitUrl" value="https://github.com/rivenhk"/>
<c:url var="issue11683Url" value="https://github.com/facebook/react/pull/11683"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page react-v16.2.0-fragments-improved-support-page">
    <h1>React v16.2.0: улучшенная поддержка фрагментов</h1>

    <wg:p><b>Ноябрь 28, 2017 Клемент Хонг</b></wg:p>

    <br/>

    <wg:p>
        <b>React 16.2 теперь доступен!</b> Самым большим дополнением является улучшенная поддержка
        возврата нескольких дочерних элементов из метода отрисовки(рендеринга) компонента.
        Мы называем эту возможность <b>фрагментами</b>.
    </wg:p>

    <wg:p>Фрагменты выглядят как пустые теги JSX. Они позволяют группировать список дочерних
        элементов без добавления дополнительных узлов в DOM:</wg:p>

    <ce:code-example-1/>

    <wg:p>Эта потрясающая новая функция стала возможной благодаря дополнениям как к React,
        так и к JSX.</wg:p>

    <br/>
    <h2>Что такое фрагменты?</h2>

    <wg:p>Общим примером является компонент, который возвращает список дочерних
        элементов. Рассмотрим данный пример HTML:</wg:p>

    <ce:code-example-2/>

    <wg:p>До версии 16 единственным способом достичь этого в React было обертывание
        потомков в дополнительный элемент, обычно <code>div</code> или <code>span</code>:</wg:p>

    <ce:code-example-3/>

    <wg:p>Чтобы устранить это ограничение, в React 16.0 была добавлена поддержка
        возврата массива элементов из метода отрисовки компонента. Вместо того,
        чтобы обертывать дочерние элементы в элемент DOM, вы можете поместить их в массив:</wg:p>

    <ce:code-example-4/>

    <wg:p>Однако такой подход имеет некоторые значительные отличия от обычного JSX:</wg:p>

    <wg:p>
        <ul>
            <li>Потомки в массиве должны быть разделены запятыми.</li>
            <li>У потомков в массиве должен быть ключ, предотвращающий React предупреждения в консоли.</li>
            <li>Строки должны быть заключены в кавычки.</li>
        </ul>
    </wg:p>

    <wg:p>Чтобы обеспечить наиболее совместимую разработку фрагментов, React теперь предоставляет
        первоклассный компонент <code>Fragment</code>, который можно использовать вместо массивов.</wg:p>

    <ce:code-example-5/>

    <wg:p>Вы можете использовать <code>&lt;Fragment/&gt;</code> так же, как используете любой другой элемент,
        не изменяя способ написания JSX. Никаких запятых, никаких ключей, никаких кавычек. </wg:p>

    <wg:p>Компонент <code>Fragment</code> доступен в главном объекте <code>React</code>:</wg:p>

    <ce:code-example-6/>

    <br/>
    <h2>JSX синтаксис фрагментов</h2>

    <wg:p>Фрагменты - это общий паттерн в нашей кодовой базе в Facebook. Мы ожидаем, что они
        будут широко приняты другими командами. Чтобы сделать опыт разработки максимально
        удобным, мы добавляем синтаксическую поддержку для фрагментов в JSX:</wg:p>

    <ce:code-example-7/>

    <wg:p>В React это является синтаксическим сахаром для элемента <code>&lt;React.Fragment/&gt;</code>
        из примера в предыдущем разделе. (Не-React фреймворки, которые
        используют JSX, могут компилировать во что-то другое).</wg:p>

    <wg:p>Синтаксис фрагментов в JSX был вдохновлен изящным предшественником, таким как
        конструктор <code>XMLList() &lt;&gt; &lt;/&gt;</code> в <b>E4X</b>. Использование
        пары пустых тегов предназначено для того, чтобы обозначить, что в DOM не
        будет добавлено реального элемента.</wg:p>

    <h3>Фрагменты с ключами</h3>

    <wg:p>Обратите внимание, что синтаксис <code>&lt;&gt; &lt;/&gt;</code> не принимает атрибуты, включая ключи.
        Если вам нужен фрагмент с ключом, вы можете напрямую использовать
        <code>&lt;Fragment/&gt;</code>. Вариант использования для этого - маппинг коллекции в массив
        фрагментов - например, для создания списка описания:</wg:p>

    <ce:code-example-8/>

    <wg:p><code>key</code> - это единственный атрибут, который может быть передан <code>Fragment</code>.
        В будущем мы можем добавить поддержку дополнительных атрибутов,
        таких как обработчики событий.</wg:p>

    <h3>Демо</h3>

    <wg:p>Вы можете поэкспериментировать с JSX синтаксисом фрагментов с
        помощью данного <wg:link href="${jsxCodePenUrl}">CodePen</wg:link>.</wg:p>

    <br/>
    <h2>Поддержка синтаксиса фрагментов</h2>

    <wg:p>Поддержка синтаксиса фрагментов в JSX будет зависеть от инструментов, которые вы
        используете для построения своего приложения. Пожалуйста, будьте терпеливы, поскольку
        сообщество JSX работает над принятием нового синтаксиса. Мы тесно сотрудничаем с
        разработчиками самых популярных проектов:</wg:p>

    <h3>Create React App</h3>

    <wg:p>Экспериментальная поддержка синтаксиса фрагментов будет добавлена в приложение
        <b>Create React</b>. Устойчивый выпуск может занять немного больше времени, так как мы
        ожидаем одобрения другими проектами.</wg:p>

    <h3>Babel</h3>

    <wg:p>Поддержка фрагментов JSX доступна в <b>Babel v7.0.0-beta</b> и выше! Если
        вы уже на Babel 7, просто обновите последнюю версию Babel и
        плагина преобразования:</wg:p>

    <ce:code-example-9/>

    <wg:p>Или, если вы используете
        <wg:link href="${presentReactUrl}">react-present</wg:link>:</wg:p>

    <ce:code-example-10/>

    <wg:p>Обратите внимание, что Babel 7 технически все еще в бета-версии,
        но стабильный релиз уже скоро.</wg:p>

    <wg:p>К сожалению отсутствует поддержка для Babel 6.x, и в настоящее
        время нет планов по обратной совместимости.</wg:p>

    <h4>Babel с Webpack</h4>

    <wg:p>Если вы используете <b>Babel</b> с <b>Webpack</b>, дополнительных шагов не требуется,
        потому что <code>babel-loader</code> будет использовать установленную вами версию <b>Babel</b>.</wg:p>

    <h4>Babel c другими фреймворками</h4>

    <wg:p>Если вы используете JSX с не-React фреймворком, например <b>Inferno</b> или <b>Preact</b>,
        есть опция <code>pragma</code>, доступная в <code>babel-plugin-transform-react-jsx</code>, которая настраивает
        компилятор Babel для работы с синтаксисом <code>&lt;&gt; &lt;/&gt;</code>.</wg:p>

    <h3>TypeScript</h3>

    <wg:p>TypeScript имеет полную поддержку синтаксиса фрагментов! Обновитесь до версии 2.6.2.
        (Обратите внимание, что это важно, даже если вы уже на версии 2.6.1, так как поддержка
        была добавлена как релиз патча в 2.6.2.) </wg:p>

    <wg:p>Проведите апгрейд до последнего TypeScript с помощью команды:</wg:p>

    <ce:code-example-11/>

    <h3>Flow</h3>

    <wg:p><wg:link href="${flowUrl}">Flow</wg:link> поддерживает фрагменты JSX начиная
        с <wg:link href="${flowV59Url}">версии 0.59</wg:link>! Просто запустите:</wg:p>

    <ce:code-example-12/>

    <wg:p>чтобы обновить Flow до последней версии.</wg:p>

    <h3>Prettier</h3>

    <wg:p><wg:link href="${prettierUrl}">Prettier</wg:link> добавляет
        поддержку фрагментов в своем <wg:link href="${prettierV19Url}">19 релизе</wg:link>.</wg:p>

    <h3>ESLint</h3>

    <wg:p>JSX фрагменты поддерживаются <wg:link href="${esLintUrl}">ESLint</wg:link> 3.x,
        когда он используются вместе с <wg:link href="${babelEsLintUrl}">babel-eslint</wg:link>:</wg:p>

    <ce:code-example-13/>

    <wg:p>или если он у вас уже есть, то сделайте апгрейд:</wg:p>

    <ce:code-example-14/>

    <wg:p>Убедитесь, что у вас есть следующая строка внутри вашего файла
        конфигурации <code>.eslintrc</code>:</wg:p>

    <ce:code-example-15/>

    <wg:p>Это всё!</wg:p>

    <wg:p>Обратите внимание, что <code>babel-eslint</code> официально не поддерживается ESLint.
        Мы рассмотрим возможность добавления фрагментов к ESLint 4.x в
        ближайшие недели (см. <wg:link href="${issue9662Url}">issue #9662</wg:link>).</wg:p>

    <br/>
    <h3>Поддержка редактором</h3>

    <wg:p>Может потребоваться некоторое время для поддержки синтаксиса фрагментов в текстовом
        редакторе. Будьте терпеливы, поскольку сообщество работает над принятием последних
        изменений. Тем временем вы можете увидеть ошибки или некорректную подсветку, если ваш
        редактор еще не поддерживает синтаксис фрагментов. Как правило, эти ошибки можно
        безопасно игнорировать.</wg:p>

    <h4>Поддержка синтаксиса TypeScript редактором</h4>

    <wg:p>Если вы пользователь TypeScript - отличная новость! Поддержка редактором
        фрагментов JSX уже доступна в <b>Visual Studio 2015</b>, <b>Visual Studio 2017</b>,
        <b>Visual Studio Code</b> и <b>Sublime Text</b> с помощью функции <b>Package Control</b>.</wg:p>

    <br/>
    <h3>Другие инструменты</h3>

    <wg:p>Для других инструментов ознакомьтесь с соответствующей документацией,
        чтобы проверить наличие поддержки. Однако, если вы заблокированы своей
        инструментальной базой, вы всегда можете начать с использования
        компонента &lt;Fragment&gt; и позже выполнить <b>codemod</b>, чтобы заменить его
        сокращенным синтаксисом, когда соответствующая поддержка будет доступна.</wg:p>

    <br/>
    <h2>Установка</h2>

    <wg:p><b>React v16.2.0</b> доступен в реестре <b>npm</b>.</wg:p>

    <wg:p>Чтобы установить React 16, запустите:</wg:p>

    <ce:code-example-16/>

    <wg:p>Мы также предоставляем сборки UMD React-а через CDN:</wg:p>

    <ce:code-example-17/>

    <wg:p>Обратитесь к документации для подробных
        <wg:link href="${installationUrl}">инструкций по установке</wg:link>.</wg:p>

    <br/>
    <h2>Лог изменений</h2>

    <h3>React</h3>

    <wg:p>
        <ul>
            <li>Добавление <code>Fragment</code> как именованный export в React.
                (<wg:link href="${clemmyGitUrl}">@clemmy</wg:link> в <wg:link href="${issue10783Url}">#10783</wg:link>)</li>
            <li>Поддержка экспериментальных типов Call/Return в утилитах React.Children.
                (<wg:link href="${MatteoVHGitUrl}">@MatteoVH</wg:link> в <wg:link href="${issue11422Url}">#11422</wg:link>)</li>
        </ul>
    </wg:p>

    <h3>React-DOM</h3>

    <wg:p>
        <ul>
            <li>Исправление радиокнопок, которые не выбираются при использовании нескольких списков радиокнопок.
                (<wg:link href="${landvibeGitUrl}">@landvibe</wg:link> в <wg:link href="${issue11227Url}">#11227</wg:link>)</li>
            <li>Исправление радиокнопок, не принимающих событие <code>onChange</code> в некоторых случаях.
                (<wg:link href="${jquenseGitUrl}">@jquense</wg:link> в <wg:link href="${issue11028Url}">#11028</wg:link>)</li>
        </ul>
    </wg:p>

    <h3>React Test Renderer</h3>

    <wg:p>
        <ul>
            <li>Исправлен баг слишком раннего срабатывания коллбэка метода setState(), когда он
                вызывается из метода componentWillMount.
                (<wg:link href="${accordeiroGitUrl}">@accordeiro</wg:link> в <wg:link href="${issue11507Url}">#11507</wg:link>)</li>
        </ul>
    </wg:p>

    <h3>React Reconciler</h3>

    <wg:p>
        <ul>
            <li>Представлен response-reconciler/reflection с утилитами, полезными для кастомной отрисовки.
                (<wg:link href="${rivenhkGitUrl}">@rivenhk</wg:link> в <wg:link href="${issue11683Url}">#11683</wg:link>)</li>
        </ul>
    </wg:p>

    <h3>Внутренние изменения</h3>

    <wg:p>Многие тесты были переписаны в отличие от публичного API.
        Большое спасибо всем, кто внес свой вклад!</wg:p>

    <br/>
    <h2>Благодарности</h2>

    <wg:p>Этот выпуск стал возможным благодаря нашим open source участникам.
        Большое спасибо всем, кто создавал issue, внес свой вклад в обсуждениях
        синтаксиса, проверял PR-ы, добавил поддержку фрагментов JSX в сторонние
        библиотеки и многое другое!</wg:p>

    <wg:p>Особая благодарность командам <b>TypeScript</b> и <b>Flow</b>, а также команде сопровождения
        <b>Babel</b>, которые помогли реализовать инструментальную поддержку нового синтаксиса.</wg:p>

    <wg:p>Благодарим <b>Gajus Kuizinas</b> и других участников, которые прототипировали
        компонент <code>Fragment</code> в open source.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="react-v16.0"/>
<c:url var="nextPageUrl" value="update-on-async-rendering"/>

<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"
                   nextPageUrl="${nextPageUrl}"/>