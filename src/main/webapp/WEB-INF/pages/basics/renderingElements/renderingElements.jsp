<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/rendering-elements" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
    <h1>2.4 Отрисовка Элементов</h1>
    <br/>

    <p class="introduction">Элементы – это самые маленькие строительные блоки приложения React.</p>

    <br/>

    <p>Элемент описывает то, что вы хотите увидеть на экране:</p>

    <ce:code-example-1/>

    <p>В отличие от DOM-элементов браузера, элементы React – простые JS-объекты, поэтому в плане создания они
        являются очень дешевыми. React DOM сам заботится об обновлении DOM, чтобы
        соответствовать элементам React.</p>

    <app:alert title="Внимание!" type="warning">
        Можно спутать элементы с более широкой концепцией «компонентов».
        Мы познакомимся с компонентами в следующем разделе. Элементы – это то, из чего «сделаны»
        компоненты. Поэтому сначала вам лучше изучить этот раздел, а только затем перейти к следующему.
    </app:alert>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.4.1 Отрисовка элемента в DOM</h2>
    <br/>

    <p>Предположим, где-нибудь в нашем HTML-файле есть тег <code>&lt;div&gt;</code>:</p>

    <ce:code-example-2/>

    <p>Он называется <b>корневым (root) DOM-узлом</b>. Всё, что находится внутри него, будет
        управляться с помощью React DOM.</p>

    <p>Приложения, построенные только с помощью React, обычно имеют один корневой DOM-узел.
        Если же вы интегрируете React в существующее приложение, вы можете иметь несколько
        изолированных корневых DOM-узлов по вашему усмотрению.</p>

    <p>Чтобы отрисовать React-элемент в корневой DOM-узел, нужно передать
        их вместе в <code>ReactDOM.render()</code>:</p>

    <ce:code-example-3 codePenUrl="http://codepen.io/gaearon/pen/rrpgNB?editors=1010"/>

    <p>Он отображает "Hello World" на странице.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.4.2 Обновление отрисованного элемента</h2>
    <br/>

    <p>React-элементы являются неизменяемыми. Как только элемент был создан,
        изменить его атрибуты или потомки невозможно. Элемент похож на одиночный
        кадр в фильме: он представляет собой UI в определенный момент времени.</p>

    <p>В настоящий момент мы знаем только один способ обновления UI: создание
        нового элемента и передача его в <code>ReactDOM.render()</code>.</p>

    <p>Рассмотрим следующий пример тикающих часов:</p>

    <ce:code-example-4 codePenUrl="http://codepen.io/gaearon/pen/gwoJZk?editors=0010"/>

    <p>Данный код вызывает <code>ReactDOM.render()</code> каждую секунду
        из коллбэка <code>setInterval()</code>.</p>

    <app:alert title="Внимание!" type="warning">
        На практике большинство React-приложений вызывают <code>ReactDOM.render()</code> только
        один раз. В следующих разделах мы изучим, как такой код можно инкапсулировать в <b>компоненты с состоянием</b>.
        <br/>
        <br/>
        Мы рекомендуем не пропускать разделы, так как каждый последующий основан на предыдущем.
    </app:alert>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.4.3 React обновляет только то, что необходимо</h2>
    <br/>

    <p>React DOM сравнивает элемент и его потомки из последнего вызова <code>render()</code> с
        элементом из предыдущего вызова <code>render()</code>. Далее он обновляет DOM, только
        если это необходимо, чтобы привести DOM в желаемое состояние.</p>

    <p>Чтобы проверить это поведение, посмотрите
        <b><a href="http://codepen.io/gaearon/pen/gwoJZk?editors=0010">данный пример</a></b>, используя
        инструменты разработчика в браузере:</p>

    <p class="text-center" style="overflow-x: auto">
        <wg:img src="${granularDomUpdatesUrl}"/>
    </p>

    <p>Вы могли заметить, что на каждый тик мы создаём элемент, описывающий целое UI-дерево.
        Однако обновится только текстовый узел, так как его содержимое изменилось</p>

    <p>Из своего опыта создатели React советуют <b>размышлять о том, как должен выглядеть UI в конкретный
        момент времени</b>, а не о том, как изменить его со временем. Это устранит целый класс багов</p>

</lt:layout>

<c:url var="prevPageUrl" value="introduction-to-jsx"/>
<c:url var="nextPageUrl" value="components-and-props"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>