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

    <wg:p>Рассмотрим следующий код:</wg:p>

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
    <h2>2.3.1 Почему JSX?</h2>

    <p>
        React учитывает тот факт, что механизм отрисовки связан с ещё несколькими важными механизмами UI:
        обработка событий, изменение состояния со временем и подготовка данных к отображению на экране.
    </p>

    <p>
        Вместо того, чтобы искусственно отделять технологии, помещая разметку и логику в
        отдельные файлы, React <wg:link href="${socUrl}">разделяет задачи</wg:link>. Для этого он
        использует слабо связанные единицы: <b>компоненты</b>, которые содержат и разметку, и логику. Мы вернемся к
        компонентам в <wg:link href="${componentsUrl}">следующем разделе</wg:link>. Если же вас не устраивает помещение разметки
        в JS, <wg:link href="${talkUrl}">данное обсуждение</wg:link> может поменять вашу точку зрения.
    </p>

    <p>
        React <wg:link href="${reactWithoutJsxUrl}">не требует</wg:link> использования JSX. Тем не менее
        наше сообщество считает его крайне полезным, так как JSX дает абсолютную наглядность при
        работе с UI внутри кода JavaScript. Также он позволяет React показывать полезные
        предупреждения и сообщения об ошибках.
    </p>

    <wg:p>Итак, давайте приступим!</wg:p>

    <br/>
    <h2>2.3.2 Встраиваемые выражения в JSX</h2>

    <p>
        В примере ниже мы объявляем переменную с именем <code>name</code>, а затем
        используем ее внутри JSX, заключая в фигурные скобки:
    </p>

    <ce:code-example-1.1/>

    <p>Вы можете встроить любое JavaScript выражение в JSX, нужно лишь обернуть его в фигурные скобки.</p>

    <p>Например, <code>2 + 2</code>, <code>user.firstName</code>, и
        <code>formatName(user)</code> – все являются корректными выражениями.</p>

    <p>
        В следующем примере мы встраиваем результат вызова JavaScript функции
        <code>formatName(user)</code> в элемент <code>&lt;h1&gt;</code>.
    </p>

    <ce:code-example-2/>

    <wg:p>Можно поэкспериментировать с ними <wg:link href="http://codepen.io/gaearon/pen/PGEjdG?editors=0010">здесь</wg:link>.</wg:p>

    <wg:p>Здесь мы поделили JSX на несколько линий для читабельности. Хоть это и не обязательно,
      мы рекомендуем оборачивать его в круглые скобки <code>()</code> во избежание подводных камней
     <wg:link href="https://stackoverflow.com/questions/2846283/what-are-the-rules-for-javascripts-automatic-semicolon-insertion-asi">автоматической вставки точки с запятой</wg:link></wg:p>


    <br/>
    <h2>2.3.3 JSX сам является выражением</h2>

    <wg:p><b>После компиляции JSX-выражения становятся регулярными JavaScript-объектами.</b></wg:p>
    
    <ad:ad-content-banner-1/>

    <wg:p>Это означает, что вы можете использовать JSX внутри условного
        оператора <code>if</code> и оператора цикла <code>for</code>, присваивать его переменным, принимать
        как аргумент и возвращать из функций. В общем, делать все, что и с обычным JavaScript-объектом:</wg:p>

    <ce:code-example-3/>


    <br/>
    <h2>2.3.4 Указание атрибутов с помощью JSX</h2>

    <wg:p>Мы можем использовать двойные кавычки для указания строковых литералов как атрибутов:</wg:p>

    <ce:code-example-4/>

    <wg:p>Наравне с кавычками мы можем использовать фигурные скобки,
        чтобы встроить JavaScript-выражение в атрибут:</wg:p>

    <ce:code-example-5/>

    <wg:p>Не вставляйте кавычки вокруг фигурных скобок, когда встраиваете JavaScript-выражение в атрибут.
        В противном случае JSX будет воспринимать значение атрибута как строковый литерал, а не как
        выражение. В одном атрибуте можно использовать либо двойные кавычки, либо фигурные скобки, но не всё вместе.</wg:p>

    <app:alert type="danger" title="Предостережение!">
        Так как JSX ближе к JavaScript, чем к HTML,
        React DOM использует соглашение об именовании свойств в <i>верблюжьейНотации</i>, вместо имен HTML-атрибутов.
        <br/>
        <br/>
        Например, <code>class</code> становится <code>className</code> в JSX,
        а <code>tabindex</code> становится <code>tabIndex</code>.
    </app:alert>

    <br/>
    <h2>2.3.5 Указание потомков с помощью JSX</h2>

    <wg:p>Если тег пустой, можно сразу же закрыть его с помощью <code>/&gt;</code> как в XML:</wg:p>

    <ce:code-example-6/>

    <wg:p>Но JSX-теги могут иметь потомков:</wg:p>

    <ce:code-example-7/>

    <br/>
    <h2>2.3.6 JSX предотвращает атаки инъекцией</h2>

    <wg:p>Встраивание пользовательского ввода в JSX является безопасным:</wg:p>

    <ce:code-example-8/>

    <wg:p>По умолчанию React DOM избегает любых значений, встроенных в JSX перед их отрисовкой.
        Таким образом он гарантирует, что вы никогда не сможете внедрить что-либо,
        что не явно написано, в ваше приложение. Все преобразуется в строку, перед тем как
        будет отрисовано. Это помогает избежать <wg:link href="${xssUrl}">XSS-атак</wg:link>.</wg:p>


    <br/>
    <h2>2.3.7 JSX представляет собой JavaScript-объекты</h2>

    <wg:p>Babel компилирует JSX в вызовы <code>React.createElement()</code>.</wg:p>

    <wg:p>Эти два примера эквивалентны:</wg:p>

    <ce:code-example-9/>

    <ce:code-example-10/>

    <wg:p><code>React.createElement()</code> выполняет несколько проверок, чтобы помочь вам написать
        свободный от багов код, но по существу он создает объект наподобие следующего:</wg:p>

    <ce:code-example-11/>

    <wg:p>А если зайти в исходники, то этот объект будет выглядеть так:</wg:p>

    <ce:code-example-12/>

    <wg:p>Полный исходный код можно посмотреть
        <wg:link href="${reactElementUrl}">здесь</wg:link>.</wg:p>

    <wg:p>Данные объекты носят название «<b>React-элементы</b>». Вы можете думать о таком объекте,
        как об описании того, что вам необходимо увидеть на экране. React читает эти объекты,
        использует их для построения дерева DOM и хранит их в актуальном состоянии.</wg:p>

    <lt:layout cssClass="alert alert-success">
        <b>Подсказка!</b> Рекомендуется поискать схему синтаксиса Babel для вашего редактора,
        чтобы и ES6 и JSX подсвечивались корректно.
    </lt:layout>
</lt:layout>

<c:url var="prevPageUrl" value="hello-world-example"/>
<c:url var="nextPageUrl" value="rendering-elements"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>
