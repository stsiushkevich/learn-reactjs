<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/introduction/introduction-in-reactjs" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="example1" value="/resources/imges/pages/introduction/introduction-in-react/example_1.PNG"/>
<c:url var="example2" value="/resources/imges/pages/introduction/introduction-in-react/example_2.PNG"/>

<a name="pageStart"></a>
<lt:layout cssClass="page introduction-in-reactjs-page">
    <h1>1.1 Введение в ReactJS</h1>
    <wg:p>
        <b>React</b> это декларативная, эффективная и гибкая библиотека для построения пользовательских интерфейсов.
        <b>React</b> имеет несколько различных типов компонентов.  Рассмотрим класс <b>React.Component</b>.
    </wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>

    <wg:p>
        Мы рассмотрим по подробнее забавный XML-подобный синтаксис чуть позже. Созданные нами компоненты описывают, каким образом
        нам необходимо их отрисовать, с помощью метода <code>render()</code>. <b>React</b> будет эффективно обновлять наши
        компоненты и отрисовывать их, когда наши данные изменятся.
    </wg:p>
    <wg:p>
        В нашем случае <code>FruitList</code> – это класс типа <b>React component</b>. Компонент получает параметры,
        называемые <code>props</code>, и возвращает XML-подобную разметку, представляющую собой древовидную иерархию компонентов
        и(или) обычных тегов для отображения, используя метод <code>render()</code>.
    </wg:p>
    <wg:p>
        Метод <code>render()</code> возвращает описание того, что нам необходимо отрисовать. Затем <b>React</b> берет это
        описание и отрисовывает его на экране. Само описание является, которое возвращает метод <code>render()</code> является
        обычным JavaScript объектом типа <b>React element</b>, который является очень легковесным. Позднее мы рассмотрим
        его внутреннюю структуру и увидим, что он состоит всего из 4-х полей.
    </wg:p>
    <wg:p>
        При разработке на <b>React</b> используется специальный синтаксис, под названием <b>JSX</b>. Он значительно
        упрощает написание и чтение иерархий компонентов. Рассмотрим принцим его работы. Определим тег <code>&lt;div/&gt;</code>.
        Этот тег будет преобразован во время сборки в <code>React.createElement('div')</code>. Как видно, это обычный вызов метода
        объекта <b>React</b>. А наш предыдущий пример будет эквивалентен:
    </wg:p>
    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-2/>
    </wg:p>
</lt:layout>

<c:url var="nextPageUrl" value="installation"/>
<app:page-navigate pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>