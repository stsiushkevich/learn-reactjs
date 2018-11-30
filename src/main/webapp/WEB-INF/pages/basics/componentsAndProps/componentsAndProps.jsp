<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/components-and-props" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page components-and-props-page">
    <h1>2.5 Компоненты и свойства</h1>

    <wg:p>Компоненты позволяют вам разделить UI на независимые, переиспользуемые части и
        работать с каждой из них отдельно.</wg:p>

    <wg:p>Концептуально, компоненты подобны JavaScript-функциям. Они принимают произвольные
        данные (называемые <b>props</b>) и возвращают React-элементы, описывающие
        что должно появиться на экране.</wg:p>

    <br/>
    <h2>2.5.1 Компоненты-функции и компоненты-классы</h2>

    <wg:p>Самый простой способ объявить компонент – это написать JavaScript-функцию:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>

    <wg:p>Эта функция является валидным React-компонентом, потому что она принимает
        единственный объект <code>props</code> с данными как аргумент и возвращает React-элемент.
        Такие компоненты называются «<b>функциональными</b>», потому что они буквально
        являются JavaScript-функциями.</wg:p>

    <wg:p>Другой способ объявить компонент заключается в использовании ES6-классов:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-2/>
    </wg:p>

    <wg:p>Два приведенных выше компонента являются эквивалентными с точки зрения React.</wg:p>

    <wg:p>Классы имеют некоторые дополнительные возможности, которые будут рассматриваться в
        следующем разделе. До тех пор мы будем использовать функциональные компоненты за их краткость.</wg:p>


    <br/>
    <h2>2.5.2 Отрисовка компонентов</h2>

    <wg:p>Ранее, мы наталкивались лишь на React-элементы, которые представляют собой DOM-теги:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-3/>
    </wg:p>

    <wg:p>Тем не менее, элементы могут представлять собой определенные пользователем компоненты:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-4/>
    </wg:p>

    <wg:p>Когда React видит, что элемент представляет собой пользовательский компонент, он
        передает все JSX-атрибуты в этот компонент единым объектом. Такой объект называется props.</wg:p>

    <wg:p>Например, этот код отрисовывает «Hello, Sara» на странице:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-5/>
    </wg:p>

    <wg:p><wg:link href="http://codepen.io/gaearon/pen/YGYmEG?editors=0010">Попробовать это в CodePen.</wg:link></wg:p>

    <wg:p>Давайте прорезюмируем, что произошло в этом примере:</wg:p>

    <wg:p>
        <ol>
            <li>Мы вызвали <code>ReactDOM.render()</code> с элементом <code>&lt;Welcome name="Sara" /&gt;</code>.</li>
            <li>React вызывает компонент <code>Welcome</code> с объектом <code>{name: 'Sara'}</code> в качестве свойств.</li>
            <li>Наш компонент <code>Welcome</code> возвращает элемент <code>&lt;h1&gt;Hello, Sara&lt;/h1&gt;</code> как результат.</li>
            <li>React DOM эффективно обновляет DOM, чтобы соответствовать <code>&lt;h1&gt;Hello, Sara&lt;/h1&gt;</code></li>
        </ol>
    </wg:p>

    <lt:layout cssClass="alert alert-warning">
        <b>Внимание! Всегда именуйте свои компоненты с большой буквы.</b>
        <br/>
        Например, <code>&lt;div/&gt;</code> представляет собой DOM-тег, а <code>&lt;Welcome/&gt;</code> представляет собой компонент и
        требует, чтобы <code>Welcome</code> был в области видимости.
    </lt:layout>


    <br/>
    <h2>2.5.3 Композиция компонентов</h2>

    <wg:p>Компоненты могут ссылаться на другие компоненты в своём выводе (результате отрисовки). Это позволяет
        нам использовать ту же самую абстракцию компонента для любого уровня детализации.
        Кнопка, форма, диалог, экран: в React-приложении все эти сущности выражены компонентами.</wg:p>

    <wg:p>К примеру, мы можем создать компонент <code>App</code>, который
        отрисовывает <code>Welcome</code> много раз:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-6/>
    </wg:p>
    <wg:p><wg:link href="http://codepen.io/gaearon/pen/KgQKPr?editors=0010">Попробовать это в CodePen.</wg:link></wg:p>

    <wg:p>
        Как правило, новые React-приложения имеют единственный компонент <code>App</code> на самом верху иерархии.
        Тем не менее, если вы интегрируете React в уже существующее приложение, вы можете начать снизу
        вверх с маленького компонента, такого как <code>Button</code> и постепенно двигаться вверх по
        иерархии отображения.
    </wg:p>

    <br/>
    <h2><a name="extracting-components" class="anchor">2.5.4 Извлечение компонентов</a></h2>

    <wg:p>Не бойтесь разделять компоненты на более маленькие компоненты.</wg:p>

    <wg:p>Рассмотрим пример с компонентом <code>Comment</code>:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-7/>
    </wg:p>
    <wg:p><wg:link href="http://codepen.io/gaearon/pen/VKQwEo?editors=0010">Попробовать это в CodePen.</wg:link></wg:p>

    <wg:p>Он принимает <code>author</code> (объект), <code>text</code> (строка) и <code>date</code> (дата) как
        свойства, и описывает комментарий на социальном медиа веб-сайте.</wg:p>

    <wg:p>Данный компонент может быть сложно изменим из-за вложенности. Также тяжело
        переиспользовать и его составные части. Давайте извлечем из него несколько небольших
        компонентов, упростив исходный компонент.</wg:p>

    <wg:p>Для начала давайте извлечем из него компонент <code>Avatar</code>:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-8/>
    </wg:p>

    <wg:p>Компонент <code>Avatar</code> не знает о том, что он отрисовывается внутри
        компонента <code>Comment</code>. Вот почему мы дали его свойству объекта <code>props</code> более
        общее имя: <code>user</code>, вместо <code>author</code>.</wg:p>

    <lt:layout cssClass="alert alert-success">
        <b>Совет!</b> Мы рекомендуем именовать <code>props</code> с точки зрения компонента, а не контекста,
        в котором он будет использован.
    </lt:layout>

    <wg:p>Сейчас мы можем немного упростить компонент <code>Comment</code>:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-9/>
    </wg:p>

    <wg:p>Далее, мы извлечем компонент <code>UserInfo</code>, который отрисовывает компонент <code>Avatar</code>
        рядом с именем пользователя:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-10/>
    </wg:p>

    <wg:p>Это позволяет нам еще больше упростить компонент <code>Comment</code>:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-11/>
    </wg:p>
    <wg:link href="http://codepen.io/gaearon/pen/rrJNJY?editors=0010">Попробовать это в CodePen.</wg:link>

    <wg:p>Извлечение компонентов по началу может показаться рутинной работой, но наличие набора
        переиспользуемых компонентов окупается в больших приложениях.</wg:p>

    <lt:layout cssClass="alert alert-success">
        <b>Золотое правило</b>: если какая-то часть вашего UI используется неоднократно
        (<code>Button</code>, <code>Panel</code>, <code>Avatar</code>), или
        довольно сложная (составная) (<code>App</code>, <code>FeedStory</code>, <code>Comment</code>) – она
        хороший кандидат на то, чтобы стать переиспользуемым компонентом
    </lt:layout>


    <br/>
    <h2>2.5.4 Свойства props – только для чтения</h2>

    <wg:p>Будете ли вы объявлять компонент как функцию или класс, он никогда не должен
        модифицировать свои свойства <code>props</code>. Рассмотрим
        эту <code>sum</code> функцию:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-12/>
    </wg:p>

    <wg:p>Такие функции называются «чистыми». Потому что они не пытаются изменить свои аргументы и
        всегда возвращают одинаковый результат для тех же самых аргументов.</wg:p>

    <wg:p>В противоположность им, следующая функция не является чистой, потому что она
        изменяет свои аргументы:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-13/>
    </wg:p>

    <wg:p>React является очень гибким, но он имеет одно строгое правило:</wg:p>

    <lt:layout cssClass="alert alert-danger">
        <b>Все React-компоненты должны работать как чистые функции в отношении своих свойств “props”</b>
    </lt:layout>

    <wg:p>Конечно, UI приложения – динамический и изменяется со временем. В следующем разделе
        мы познакомимся с новой концепцией «состояния». Состояние позволяет React-компонентам
        изменять их вывод со временем в ответ на действия пользователя, ответы сети или что-либо
        другое, не нарушая данное правило.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="rendering-elements"/>
<c:url var="nextPageUrl" value="state-and-lifecycle"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>