<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/basics/rendering-elements" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="page hello-world-example-page">
    <h1>2.4 Отрисовка Элементов</h1>

    <wg:p><b>Элементы – это самые маленькие строительные блоки приложения React.</b></wg:p>

    <wg:p>Элемент описывает то, что вы хотите увидеть на экране:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-1/>
    </wg:p>

    <wg:p>В отличие от DOM-элементов браузера, элементы React – простые объекты, поэтому они
        являются очень дешевыми для создания. React DOM заботится об обновлении DOM, чтобы
        соответствовать элементам React.</wg:p>

    <lt:layout cssClass="alert alert-warning">
        <b>Внимание!</b> Можно спутать элементы с более широкой концепцией «компонентов».
        Мы познакомимся с компонентами в следующем разделе. Элементы – это то, из чего «сделаны»
        компоненты. Поэтому рекомендуется изучить этот раздел прежде чем перепрыгнуть на следующий.
    </lt:layout>


    <br/>
    <h2>2.4.1 Отрисовка элемента в DOM</h2>

    <wg:p>Предположим, у нас есть тег &lt;div&gt; где-нибудь в нашем HTML файле:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-2/>
    </wg:p>

    <wg:p>Он называется корневым <b>(root) DOM узлом</b>, потому что всё внутри будет
        управляться с помощью React DOM.</wg:p>

    <wg:p>Приложения, построенные только с помощью React обычно имеют один корневой DOM-узел.
        Если же вы интегрируете React в существующее приложение, вы можете иметь несколько
        изолированных корневых DOM узлов по вашему усмотрению.</wg:p>

    <wg:p>Для отрисовки React-элемента в корневой DOM-узел, передайте
        их вместе в <code>ReactDOM.render()</code>:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-3/>
    </wg:p>

    <wg:p><wg:link href="http://codepen.io/gaearon/pen/rrpgNB?editors=1010">Пример кода в CodePen здесь</wg:link></wg:p>

    <wg:p>Он отображает "Hello World" на странице.</wg:p>

    <br/>
    <h2>2.4.2 Обновление отрисованного элемента</h2>

    <wg:p>React-элементы являются неизменяемыми. Как только элемент был создан,
        нельзя изменить его атрибуты или потомков. Элемент похож на одиночный
        кадр в фильме: он представляет собой UI в определенный момент времени.</wg:p>

    <wg:p>В настоящий момент мы знаем только один способ обновления UI: создание
        нового элемента и передача его в <code>ReactDOM.render()</code>.</wg:p>

    <wg:p>Рассмотрим следующий пример тикающих часов:</wg:p>

    <wg:p>
        <lt:layout cssClass="code-block-header">Код</lt:layout>
        <code-example:code-example-4/>
    </wg:p>

    <wg:p><wg:link href="http://codepen.io/gaearon/pen/gwoJZk?editors=0010">Попробовать в CodePen</wg:link></wg:p>

    <wg:p>Данный код вызывает <code>ReactDOM.render()</code> каждую секунду
        из коллбэка <code>setInterval()</code>.</wg:p>

    <lt:layout cssClass="alert alert-warning">
        <b>Внимание!</b> На практике, большинство React приложений
        вызывают <code>ReactDOM.render()</code> только
        один раз. В следующих разделах мы изучим как такой код
        инкапсулируется в <b>компоненты с состоянием</b>.
    </lt:layout>

    <br/>
    <h2>2.4.3 React обновляет только то, что необходимо</h2>

    <wg:p>React DOM сравнивает элемент и его потомки из последнего вызова <code>render()</code> с
        элементом из предыдущего вызова <code>render()</code>, и применяет обновление DOM только
        если это необходимо, чтобы привести DOM в желаемое состояние.</wg:p>

    <wg:p>Можно проверить это, посмотрев
        <wg:link href="http://codepen.io/gaearon/pen/gwoJZk?editors=0010">этот пример</wg:link>, используя
        инструменты разработчика в браузере:</wg:p>

    <wg:p cssClass="text-center">
        <wg:img src="${granularDomUpdatesUrl}"/>
    </wg:p>

    <wg:p>Даже  несмотря на то, что мы создаём элемент, описывающий целое UI дерево,
        на каждый тик, только текстовый узел, чей контент изменился, будет обновлён React DOM-ом.</wg:p>

    <wg:p><b>По опыту создателей React, размышление о том, как должен выглядеть UI в конкретный
        момент времени вместо того, как изменить его со временем устранит целый класс багов.</b></wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="introduction-to-jsx"/>
<c:url var="nextPageUrl" value="components-and-props"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>