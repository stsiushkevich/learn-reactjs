<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/state-and-lifecycle" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<lt:layout cssClass="page hello-world-example-page">
    <wg:head size="3"><b>Состояние и жизненный цикл</b></wg:head>

    <wg:p>Рассмотрим пример тикающих часов из предыдущего раздела.</strong></wg:p>

    <wg:p>До сих поло мы изучили только один способ обновления UI.</wg:p>

    <wg:p>Мы вызываем <code>ReactDOM.render()</code> чтобы изменить отрисовывамый вывод:</wg:p>

    <code-example:code-example-1 codePenUrl="https://codepen.io/stzidane/pen/QgWgNP?editors=0010"/>

    <wg:p>В этом разделе мы изучим, как сделать компонент <code>Timer</code> по-настоящему переиспользумым и
        инкапсулированным. Он будет устанавливать свой таймер и обновлять себя каждый определенный
        промежуток времени.</wg:p>

    <wg:p>Мы можем начать с инкапсуляции кода в компонент <code>Timer</code>:</wg:p>

    <code-example:code-example-2 codePenUrl="https://codepen.io/stzidane/pen/yXLXKY?editors=0010"/>

    <wg:p>Тем не менее, он упускает ключевое требование: установка таймера и обновление UI
        каждую секунду должны быть деталью реализации <code>Timer</code>.</wg:p>
    <wg:p>В идеале, нам необходимо написать следующий код с компонентом <code>Timer</code>, обновляющим самого себя:</wg:p>

    <code-example:code-example-3/>

    <wg:p>Для того, чтобы это реализовать, нам необходимо добавить «<b>состояние</b>» к компоненту <code>Timer</code>.</wg:p>

    <wg:p>Состояние подобно свойствам <b>props</b>, но является приватным и полностью контролируется компонентом.</wg:p>

    <wg:p>Ранее мы упоминали что, компоненты, определённые как классы, имеют некоторые дополнительный возможности.
        <b>Локальное состояние является возможностью, доступной только для классов.</b></wg:p>
    <wg:p></wg:p>

    <br/>
    <wg:head size="4"><b>Преобразование функций в классы</b></wg:head>

    <wg:p>Мы можем преобразовать функциональный компонент <code>Timer</code> в класс в пять шагов:</wg:p>
    <wg:p>
        <ol>
            <li>Создать ES6 класс с тем же самым именем, который расширяет <code>React.Component</code>.</li>
            <li>Добавить в него единственный пустой метод под названием <code>render()</code>.</li>
            <li>Поместить тело функции в метод <code>render()</code>.</li>
            <li>Заменить <code>props</code> на <code>this.props</code> в теле метода <code>render()</code>.</li>
            <li>Удалить оставшееся пустое определение функции</li>
        </ol>
    </wg:p>

    <code-example:code-example-4 codePenUrl="https://codepen.io/stzidane/pen/xrxrQP?editors=0010"/>

    <wg:p>Теперь компонент <code>Timer</code> определен как класс, а не функция.</wg:p>

    <wg:p>Это позволяет нам использовать дополнительные возможности, такие как локальное состояние и
        методы жизненного цикла.</wg:p>

    <br/>
    <wg:head size="4"><b>Добавление локального состояния в класс</b></wg:head>

    <wg:p>Мы переместим <code>date</code> из <code>props</code> в состояние в три шага.</wg:p>

    <wg:p>1. Заменим <code>this.props.value</code> на <code>this.state.value</code> в <code>render()</code> методе:</wg:p>

    <code-example:code-example-5/>

    <wg:p>2. Добавим конструктор класса, который устанавливает начальное состояние <code>this.state</code>:</wg:p>

    <code-example:code-example-6/>

    <wg:p>Обратите внимание на то, как мы передаем свойства <code>props</code> в базовый конструктор:</wg:p>

    <code-example:code-example-7/>

    <wg:p><b>Компоненты-классы должны всегда вызывать базовый конструктор с</b> <code>props</code>.</wg:p>

    <wg:p>3. Удаляем свойство <code>value</code> из <code>&lt;Timer /&gt;</code> элемента:</wg:p>

    <code-example:code-example-8/>

    <wg:p>Позже мы добавим код таймера обратно в сам компонент.</wg:p>

    <wg:p>Результат будет выглядеть следующим образом:</wg:p>

    <code-example:code-example-9 codePenUrl="https://codepen.io/stzidane/pen/GERvKL?editors=0010"/>

    <wg:p>Далее мы сделаем так, что компонент <code>Timer</code> будет устанавливать таймер и обновлять себя каждую секунду.</wg:p>

</lt:layout>