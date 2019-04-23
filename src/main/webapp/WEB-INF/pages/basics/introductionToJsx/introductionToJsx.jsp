<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/introduction-to-jsx" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="socUrl" value="https://ru.wikipedia.org/wiki/Разделение_ответственности"/>
<c:url var="componentsUrl" value="components-and-props"/>
<c:url var="talkUrl" value="https://www.youtube.com/watch?v=x7cQ3mrcKaY"/>
<c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
<c:url var="xssUrl" value="https://ru.wikipedia.org/wiki/Межсайтовый_скриптинг"/>
<c:url var="reactElementUrl" value="https://github.com/facebook/react/blob/master/packages/react/src/ReactElement.js"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
    <h1>2.3 Знакомство с JSX</h1>
    <br/>

    <p>Рассмотрим следующий код:</p>

    <ce:code-example-1/>

    <p>
        Этот симпатичный синтаксис в виде тегов не является ни строкой, ни HTML.
        Он является синтаксическим сахаром JavaScript и называется <b>JSX</b>.
        Мы настоятельно рекомендуем использовать JSX вместе с React, так как он
        описывает внешний вид UI, а также включает в себя всю мощь JavaScript.
    </p>

    <p>
        JSX производит <b>React-элементы</b>. Мы будем исследовать их отрисовку в
        DOM-дерево в следующем разделе. Ниже вы найдете основы JSX, необходимые для того,
        чтобы начать разработку на React.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.1 Почему JSX?</h2>
    <br/>

    <p>
        React учитывает тот факт, что механизм отрисовки связан с ещё несколькими важными механизмами UI:
        обработка событий, изменение состояния со временем и подготовка данных к отображению на экране.
    </p>

    <p>
        Вместо того, чтобы искусственно отделять технологии, помещая разметку и логику в
        отдельные файлы, React <b><a href="${socUrl}">разделяет задачи</a></b>. Для этого он
        использует слабо связанные единицы: <b>компоненты</b>, которые содержат и разметку, и логику. Мы вернемся к
        компонентам в <b><a href="${componentsUrl}">следующем разделе</a></b>. Если же вас не устраивает помещение разметки
        в JS, <b><a href="${talkUrl}">данное обсуждение</a></b> может поменять вашу точку зрения.
    </p>

    <p>
        React <b><a href="${reactWithoutJsxUrl}">не требует</a></b> использования JSX. Тем не менее
        наше сообщество считает его крайне полезным, так как JSX дает абсолютную наглядность при
        работе с UI внутри кода JavaScript. Также он позволяет React показывать полезные
        предупреждения и сообщения об ошибках.
    </p>

    <p>Итак, давайте приступим!</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.2 Встраиваемые выражения в JSX</h2>
    <br/>

    <p>
        В примере ниже мы объявляем переменную с именем <code>name</code>, а затем
        используем ее внутри JSX, заключая в фигурные скобки:
    </p>

    <ce:code-example-1.1/>

    <p>Вы можете встроить любое JavaScript выражение в JSX, его нужно лишь обернуть в фигурные скобки.</p>

    <p>Например, <code>2 + 2</code>, <code>user.firstName</code>, и
        <code>formatName(user)</code> – все являются корректными выражениями.</p>

    <p>
        В следующем примере мы встраиваем результат вызова JavaScript функции
        <code>formatName(user)</code> в элемент <code>&lt;h1&gt;</code>.
    </p>

    <ce:code-example-2 codePenUrl="http://codepen.io/gaearon/pen/PGEjdG?editors=0010"/>

    <c:url var="disqussUrl" value="https://stackoverflow.com/questions/2846283/what-are-the-rules-for-javascripts-automatic-semicolon-insertion-asi"/>

    <p>Здесь мы поделили выражение JSX на несколько линий для читабельности. Хоть это и не обязательно,
      мы рекомендуем оборачивать JSX-выражения в круглые скобки <code>()</code> во избежание подводных камней
        <b><a href="${disqussUrl}">автоматической вставки точки с запятой</a></b></p>


    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.3 JSX сам является выражением</h2>
    <br/>
    
    <p><b>После компиляции JSX-выражения становятся обычными JavaScript-объектами.</b></p>
    
    <ad:ad-content-banner-1/>

    <p>Это означает, что вы можете использовать JSX внутри условного
        оператора <code>if</code> и оператора цикла <code>for</code>, присваивать его переменным, принимать
        как аргумент и возвращать из функций. В общем, можно делать все то, что и с обычным JavaScript-объектом:</p>

    <ce:code-example-3/>


    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.4 Указание атрибутов с помощью JSX</h2>
    <br/>

    <p>Мы можем использовать двойные кавычки для указания строковых литералов как атрибутов:</p>

    <ce:code-example-4/>

    <p>Наравне с кавычками мы можем использовать фигурные скобки,
        чтобы встроить JavaScript-выражение в атрибут:</p>

    <ce:code-example-5/>

    <p>Не ставьте кавычки вокруг фигурных скобок, когда встраиваете JavaScript-выражение в атрибут.
        В этом случае JSX будет воспринимать значение атрибута как строковый литерал, а не как
        выражение. В одном атрибуте можно использовать либо двойные кавычки, либо фигурные
        скобки - вместе их использовать нельзя.</p>

    <app:alert type="danger" title="Предостережение!">
        Так как JSX ближе к JavaScript, чем к HTML, React DOM использует соглашение об именовании
        свойств в <i>верблюжьейНотации</i>, вместо имен HTML-атрибутов.
        <br/>
        <br/>
        Например, <code>class</code> становится <code>className</code> в JSX,
        а <code>tabindex</code> становится <code>tabIndex</code>.
    </app:alert>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.5 Указание потомков с помощью JSX</h2>
    <br/>

    <p>Если тег пустой, его можно тут же закрыть с помощью <code>/&gt;</code> как в XML:</p>

    <ce:code-example-6/>

    <p>Однако JSX-теги могут иметь потомков:</p>

    <ce:code-example-7/>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.6 JSX предотвращает атаки инъекцией</h2>
    <br/>

    <p>Как насчет пользовательского ввода? Об этом разработчики React также побеспокоились. В JSX можно
     встроить любой результат ввода пользователя и это будет абсолютно безопасно!</p>

    <ce:code-example-8/>

    <p>По умолчанию React DOM избегает обработки любых значений, встроенных в JSX, перед их отрисовкой.
        Таким образом он гарантирует, что вы никогда не сможете внедрить в ваше приложение что-то,
        что не написано явно. Всё, перед тем как будет отрисовано, преобразуется в строку. Это
        помогает избежать <b><a href="${xssUrl}">XSS-атак</a></b>.</p>


    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.3.7 JSX представляет собой JavaScript-объекты</h2>
    <br/>

    <p>Babel компилирует JSX в вызовы <code>React.createElement()</code>.</p>

    <p>Эти два примера эквивалентны:</p>

    <ce:code-example-9/>

    <ce:code-example-10/>

    <p><code>React.createElement()</code> выполняет несколько проверок, чтобы помочь вам написать
        свободный от багов код, но по существу он создает объект наподобие следующего:</p>

    <ce:code-example-11/>

    <p>А если зайти в исходники, то этот объект будет выглядеть так:</p>

    <ce:code-example-12/>

    <p>Полный исходный код можно посмотреть <b><a href="${reactElementUrl}">здесь</a></b>.</p>

    <p>Данные объекты носят название «<b>React-элементы</b>». Вы можете представлять себе такой объект,
        как описание того, что вам необходимо увидеть на экране. React читает эти объекты,
        использует их для построения дерева DOM и хранит их в актуальном состоянии.</p>

    <c:url var="babelLanguageDefinitionUrl" value="https://babeljs.io/docs/en/editors/"/>

    <app:alert title="Подсказка!" type="success">
        Мы рекомендуем использовать <b><a href="${babelLanguageDefinitionUrl}">Babel language definition</a></b> для вашего редактора,
        чтобы ES6 и JSX подсвечивались корректно.
    </app:alert>
</lt:layout>

<c:url var="prevPageUrl" value="hello-world-example"/>
<c:url var="nextPageUrl" value="rendering-elements"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>
