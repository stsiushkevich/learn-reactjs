<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/components-and-props" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page components-and-props-page">
    <h1>2.5 Компоненты и свойства</h1>

    <br/>

    <p class="introduction">
        Компоненты позволяют разделить UI на независимые, повторно используемые части и
        работать с каждой из них отдельно.
    </p>

    <br/>

    <p>Концептуально, компоненты похожи на JavaScript-функции. Они принимают произвольные
        данные (называемые <b>props</b>) и возвращают React-элементы, которые описывают то,
        что должно появиться на экране.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.5.1 Компоненты-функции и компоненты-классы</h2>
    <br/>

    <p>Самый простой способ объявить компонент – это написать JavaScript-функцию:</p>

    <ce:code-example-1/>

    <p>Эта функция является корректным React-компонентом, потому что она принимает
        единственный объект <code>props</code> с данными в качестве аргумента и возвращает React-элемент.
        Такие компоненты называются «<b>функциональными</b>», так как они и есть JavaScript-функции.</p>

    <p>Компонент можно объявить другим способом. Для этого нужно использовать ES6-класс:</p>

    <ce:code-example-2/>

    <p>Два приведенных выше компонента являются эквивалентными с точки зрения React.
        Но пока мы будем использовать функциональные компоненты, так как они короче.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.5.2 Отрисовка компонентов</h2>
    <br/>

    <p>Ранее, мы наталкивались лишь на React-элементы, которые представляли собой DOM-теги:</p>

    <ce:code-example-3/>

    <p>Тем не менее, элементы могут быть представлены пользовательскими(кастомными) компонентами:</p>

    <ce:code-example-4/>

    <p>Когда React видит, что элемент представляет собой пользовательский компонент, он
        передает все JSX-атрибуты в этот компонент единым объектом. Такой
        объект называется <code>props</code>.</p>

    <p>Например, этот код отрисовывает на странице «Hello, Sara»:</p>

    <ce:code-example-5 codePenUrl="http://codepen.io/gaearon/pen/YGYmEG?editors=0010"/>

    <p>Давайте прорезюмируем то, что произошло в этом примере:</p>

    <ol>
        <li>Мы вызвали <code>ReactDOM.render()</code> с элементом <code>&lt;Welcome name="Sara" /&gt;</code>.</li>
        <li>React вызывает компонент <code>Welcome</code> с объектом <code>{name: 'Sara'}</code> в качестве свойств <code>props</code>.</li>
        <li>Наш компонент <code>Welcome</code> возвращает элемент <code>&lt;h1&gt;Hello, Sara&lt;/h1&gt;</code> как результат.</li>
        <li>React DOM эффективно обновляет DOM, чтобы соответствовать <code>&lt;h1&gt;Hello, Sara&lt;/h1&gt;</code></li>
    </ol>

    <app:alert title="Внимание!" type="warning">
        <b>Всегда именуйте свои компоненты с большой буквы.</b>
        <br/>
        Например, <code>&lt;div/&gt;</code> представляет собой DOM-тег, а <code>&lt;Welcome/&gt;</code> представляет собой компонент и
        требует, чтобы <code>Welcome</code> был в области видимости.
    </app:alert>

    <a name="composition"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.5.3 Композиция компонентов</h2>
    <br/>

    <p>Компоненты могут ссылаться на другие компоненты в своём выводе (результате отрисовки). Это позволяет
        нам использовать ту же самую абстракцию компонента для любого уровня детализации.
        Кнопка, форма, диалог, экран: в React-приложении все эти сущности выражены компонентами.</p>

    <p>К примеру, мы можем создать компонент <code>App</code>, который
        отрисовывает компонент <code>Welcome</code> много раз:</p>

    <ce:code-example-6 codePenUrl="http://codepen.io/gaearon/pen/KgQKPr?editors=0010"/>

    <p>
        Как правило, новые React-приложения имеют единственный компонент <code>App</code> на самом верху иерархии.
        Тем не менее, если вы интегрируете React в уже существующее приложение, вы можете начать снизу
        вверх с маленького компонента, такого как <code>Button</code> и постепенно двигаться вверх по
        иерархии отображения.
    </p>

    <a name="extracting-components" class="anchor"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.5.4 Извлечение компонентов</h2>
    <br/>

    <p>Не бойтесь разделять компоненты на более мелкие компоненты.</p>

    <p>Рассмотрим пример с компонентом <code>Comment</code>:</p>

    <ce:code-example-7 codePenUrl="http://codepen.io/gaearon/pen/VKQwEo?editors=0010"/>

    <p>Он принимает <code>author</code> (объект), <code>text</code> (строка) и <code>date</code> (дата) как
        свойства, и описывает комментарий на социальном веб-сайте.</p>

    <p>Данный компонент довольно сложно изменить из-за его вложенности. Также тяжело
        повторно использовать и его составные части. Давайте извлечем из него несколько небольших
        компонентов, упростив исходный компонент.</p>

    <p>Для начала давайте извлечем из него компонент <code>Avatar</code>:</p>

    <ce:code-example-8/>

    <p>Компонент <code>Avatar</code> не знает о том, что он находится внутри
        компонента <code>Comment</code>. Вот почему мы дали свойству его объекта <code>props</code> более
        общее имя: <code>user</code>, вместо <code>author</code>.</p>

    <app:alert title="Совет!" type="success">
        Мы рекомендуем именовать <code>props</code> с точки зрения компонента, а не контекста,
        в котором он будет использован.
    </app:alert>

    <p>Сейчас мы можем немного упростить компонент <code>Comment</code>:</p>

    <ce:code-example-9/>

    <p>Далее, мы извлечем компонент <code>UserInfo</code>, который отрисовывает компонент <code>Avatar</code>
        рядом с именем пользователя:</p>

    <ce:code-example-10/>

    <p>Это позволяет нам еще больше упростить компонент <code>Comment</code>:</p>

    <ce:code-example-11 codePenUrl="http://codepen.io/gaearon/pen/rrJNJY?editors=0010"/>

    <p>Извлечение компонентов по началу может показаться рутинной работой. Однако набор универсальных,
        переиспользуемых, отлаженных компонентов с лихвой окупит все усилия в больших
        приложениях, экономя массу времени.</p>

    <app:alert title="Золотое правило!" type="success">
        Если какая-то часть вашего UI используется неоднократно
        (<code>Button</code>, <code>Panel</code>, <code>Avatar</code>), или
        довольно сложная (составная) (<code>App</code>, <code>FeedStory</code>, <code>Comment</code>) – она
        хороший кандидат на то, чтобы стать переиспользуемым компонентом.
    </app:alert>


    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.5.4 Свойства props – только для чтения</h2>
    <br/>

    <p>Компонент, объявленный как функция или класс, никогда не должен
        модифицировать свои свойства <code>props</code>. Рассмотрим
        эту <code>sum</code> функцию:</p>

    <ce:code-example-12/>

    <p>Такие функции называются «чистыми». Потому что они не изменяют свои аргументы и
        всегда возвращают одинаковый результат для одних и тех же аргументов.</p>

    <p>В противоположность им, следующая функция не является чистой, потому что она
        изменяет свои аргументы:</p>

    <ce:code-example-13/>

    <p>React является очень гибким, но он имеет одно строгое правило:</p>

    <app:alert type="warning">
        Все React-компоненты должны работать как чистые функции в
        отношении своих свойств <code>props</code>.
    </app:alert>

    <p>Конечно, UI приложения – динамический и изменяется со временем. В следующем разделе
        мы познакомимся с новой концепцией «состояния». Состояние позволяет React-компонентам
        изменять их вывод со временем в ответ на действия пользователя, ответы сети или что-то
        другое, не нарушая данное правило.</p>
</div>

<%-- <c:url var="Url" value=""/> --%>

<%--
<ul>
    <li>
        <p>

        </p>
    </li>
</ul>
--%>
<%-- <app:alert title="Подсказка!" type="success"></app:alert> --%>
<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
<%-- <code></code> --%>
<%-- <b></b> --%>
<%-- <code>&lt; &gt;</code> --%>
<%-- <b><a href="${}"></a></b> --%>
<%-- <b><a href="#"></a></b> --%>
<%-- <a href="#"></a> --%>


<c:url var="prevPageUrl" value="rendering-elements"/>
<c:url var="nextPageUrl" value="state-and-lifecycle"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>