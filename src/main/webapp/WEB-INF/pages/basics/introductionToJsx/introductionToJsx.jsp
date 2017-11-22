<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/introduction-to-jsx" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
    <h1>2.3 Знакомство с JSX</h1>

    <wg:p>Рассмотрим следующее объявление:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>

    <wg:p>Этот симпатичный синтаксис в виде тегов не является ни строкой, ни HTML.
        Он носит название <b>JSX</b> и является синтаксическим расширением JavaScript.
        Рекомендуется использовать его вместе с React для описания того, как должен выглядеть UI.
        JSX может напоминать вам язык шаблонов, но он включает в себя всю мощь JavaScript.</wg:p>

    <wg:p>JSX производит <b>React-элементы</b>. Мы будем исследовать их отрисовку в
        DOM дерево в следующем разделе. Ниже вы сможете найти основы JSX, необходимые для того,
        чтобы начать разрабатывать на React.</wg:p>


    <br/>
    <h2>2.3.1 Встраиваемые выражения в JSX</h2>

    <wg:p>Вы можете встроить любое JavaScript выражение в JSX, оборачивая его в фигурные скобки.</wg:p>

    <wg:p>Например  <code>2 + 2</code>, <code>user.firstName</code>, и
        <code>formatName(user)</code> – все являются корректными выражениями:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-2/>
    </wg:p>

    <wg:p>Можно поэкспериментировать с ними <wg:link href="http://codepen.io/gaearon/pen/PGEjdG?editors=0010">здесь</wg:link>.</wg:p>

    <wg:p>Здесь мы поделили JSX на несколько линий для читабельности. Хоть это и не является обязательным,
     рекоммендуется также оборачивать его в круглые скобки <code>()</code> для избежания подводных камней
     <wg:link href="https://stackoverflow.com/questions/2846283/what-are-the-rules-for-javascripts-automatic-semicolon-insertion-asi">автоматической вставки точки с запятой</wg:link></wg:p>


    <br/>
    <h2>2.3.2 JSX сам является выражением</h2>

    <wg:p><b>После компиляции JSX выражения становятся регулярными JavaScript-объектами.</b></wg:p>

    <wg:p>Это означает, что вы можете использовать JSX внутри условного
        оператора <code>if</code> и оператора цикла <code>for</code>, присваивать его переменным, принимать
        как аргумент и возвращать из функций. Вобщем делать все, что и с обычным JavaScript-объектом:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-3/>
    </wg:p>


    <br/>
    <h2>2.3.3 Указание атрибутов с помощью JSX</h2>

    <wg:p>Мы можем использовать двойные кавычки для указания строковых литералов как атрибутов:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-4/>
    </wg:p>

    <wg:p>Наравне с кавычками мы можем использовать фигурные скобки,
        чтобы встроить JavaScript-выражение в атрибут:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-5/>
    </wg:p>

    <wg:p>Не вставляйте кавычки вокруг фигурных скобок, когда встраиваете JavaScript-выражение в атрибут.
        В противном случае JSX будет воспринимать  значение атрибута как строковый литерал, а не как
        выражение. В одном атрибуте можно использовать либо двойные кавычки, либо фигурные скобки, но не всё вместе.</wg:p>

    <lt:layout cssClass="alert alert-danger">
        <b>Предостережение!</b> Так как JSX ближе к JavaScript чем к HTML,
        React DOM использует соглашение об именовании свойств в <i>верблюжьейНотации</i>, вместо имен HTML атрибутов.
    </lt:layout>

    <wg:p>Например <code>class</code> становится <code>className</code> в JSX,
        а <code>tabindex</code> становится <code>tabIndex</code>.</wg:p>


    <br/>
    <h2>2.3.4 Указание потомков с помощью JSX</h2>

    <wg:p>Если тэг пустой, можно сразу же закрыть его с помощью <code>/&gt;</code> как в XML:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-6/>
    </wg:p>

    <wg:p>Но JSX-тэги могут иметь потомков:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-7/>
    </wg:p>

    <br/>
    <h2>2.3.5 JSX предотвращает атаки иньекцией</h2>

    <wg:p>Встраивание пользовательского ввода в JSX является безопасным:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-8/>
    </wg:p>

    <wg:p>По умолчанию React DOM избегает любых значений, встроенных в JSX перед их отрисовкой.
        Таким образом он гарантирует, что вы никогда не сможете внедрить что-либо,
        что не явно написано, в ваше приложение. Все преобразуется в строку, перед тем как
        будет отрисовано. Это помогает избежать <wg:link href="https://en.wikipedia.org/wiki/Cross-site_scripting">XSS атак</wg:link>.</wg:p>


    <br/>
    <h2>2.3.6 JSX представляет собой JavaScript-объекты</h2>

    <wg:p>Babel компилирует JSX в вызовы <code>React.createElement()</code>.</wg:p>

    <wg:p>Эти два примера эквивалентны:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-9/>
    </wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-10/>
    </wg:p>

    <wg:p><code>React.createElement()</code> выполняет несколько проверок, чтобы помочь вам написать
        свободный от багов код, но по-существу он создает объект, наподобие следующего:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-11/>
    </wg:p>

    <wg:p>А если зайти в исходники, то этот объект будет выглядеть так:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-12/>
    </wg:p>

    <wg:p>Полный исходный код можно посмотреть
        <wg:link href="https://github.com/facebook/react/blob/master/src/isomorphic/classic/element/ReactElement.js">здесь</wg:link>.</wg:p>

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