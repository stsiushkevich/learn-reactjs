<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="example1" value="/resources/imges/pages/introduction/introduction-in-react/example_1.PNG"/>
<c:url var="example2" value="/resources/imges/pages/introduction/introduction-in-react/example_2.PNG"/>

<lt:layout cssClass="page introduction-in-reactjs-page">
    <wg:head size="3"><strong>Что такое React?</strong></wg:head>
    <wg:p>
        <strong>React</strong> это декларативная, эффективная и гибкая библиотека для построения пользовательских интерфейсов.
        <strong>React</strong> имеет некоторое колличество компонентов. Рассмотрим класс <strong>React.Component</strong>.
    </wg:p>
    <wg:p cssClass="code-block">
        <wg:img src="${example1}"/>
    </wg:p>
    <wg:p>
        Мы рассмотрим по подробнее забавный XML-подобный синтаксис чуть позже. Созданные нами компоненты описывают, каким образом
        нам необходимо их отрисовать, с помощью метода <code>render()</code>. <strong>React</strong> будет эффективно обновлять наши
        компоненты и отрисовывать их, когда наши данные изменятся.
    </wg:p>
    <wg:p>
        В нашем случае <code>FruitList</code> – это класс типа <strong>React component</strong>. Компонент получает параметры,
        называемые <code>props</code>, и возвращает XML-подобную разметку, представляющую собой древовидную иерархию компонентов
        и(или) обычных тегов для отображения, используя метод <code>render()</code>.
    </wg:p>
    <wg:p>
        Метод <code>render()</code> возвращает описание того, что нам необходимо отрисовать. Затем <strong>React</strong> берет это
        описание и отрисовывает его на экране. Само описание является, которое возвращает метод <code>render()</code> является
        обычным JavaScript объектом типа <strong>React element</strong>, который является очень легковесным. Позднее мы рассмотрим
        его внутреннюю структуру и увидим, что он состоит всего из 4-х полей.
    </wg:p>
    <wg:p>
        При разработке на <strong>React</strong> используется специальный синтаксис, под названием <strong>JSX</strong>. Он значительно
        упрощает написание и чтение иерархий компонентов. Рассмотрим принцим его работы. Определим тег <code>&lt;div/&gt;</code>.
        Этот тег будет преобразован во время сборки в <code>React.createElement('div')</code>. Как видно, это обычный вызов метода
        объекта <strong>React</strong>. А наш предыдущий пример будет эквивалентен:
    </wg:p>
    <wg:p cssClass="code-block">
        <wg:img src="${example2}"/>
    </wg:p>
</lt:layout>