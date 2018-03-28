<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/portals" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="granularDomUpdatesUrl" value="/resources/imges/pages/basics/render-elements/granular-dom-updates.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page portals-page">
  <h1>3.11	Порталы</h1>

  <wg:p><b>Доступны с 16 версии.</b></wg:p>

  <wg:p>Порталы предоставляют первоклассный способ отображения
    дочерних элементов в узел DOM, который существует вне иерархии DOM родительского компонента.</wg:p>

  <ce:code-example-1/>

  <wg:p>Первым аргументом (<code>child</code>) является любой отображаемый потомок React,
    такой как элемент, строка или фрагмент. Второй аргумент (<code>container</code>)
    является элементом DOM.</wg:p>

  <br/>
  <h2>3.11.1	Использование</h2>

  <wg:p>Как правило, когда вы возвращаете элемент из метода отрисовки компонента,
    он монтируется в DOM как дочерний элемент ближайшего родительского узла:</wg:p>

  <ce:code-example-2/>

  <wg:p>Однако иногда полезно вставлять дочерний элемент в другое место в DOM:</wg:p>

  <ce:code-example-3/>

  <wg:p>Типичный вариант использования порталов - это когда родительский компонент
    имеет <code>overflow: hidden</code> или <code>z-index</code> стиль, но вам нужно, чтобы дочерний компонент
    визуально «выходил» из своего контейнера. Например, диалоги, всплывающие подсказки.</wg:p>

  <app:alert type="warning" title="Замечание!">
    Важно помнить, что при работе с порталами вам необходимо следить за тем, что
    вы следуете рекомендациям по общедоступности.
  </app:alert>

  <wg:p><wg:link href="https://codepen.io/gaearon/pen/yzMaBd">Попробовать в CodePen</wg:link></wg:p>

  <br/>
  <h2>3.11.2	Всплытие событий через порталы</h2>

  <wg:p>Несмотря на то, что портал может быть где угодно в дереве DOM, он ведет
    себя как обычный дочерний элемент React во всех отношениях. Такие функции,
    как контекст, работают как и ранее, независимо от того, является ли дочерний
    элемент порталом, поскольку портал все еще существует в дереве React независимо
    от его положения в дереве DOM.</wg:p>

  <wg:p>Это же касается и всплытия события. Событие, созданное внутри портала,
    будет распространяться к предкам в объемлющем дереве React, даже если они
    не являются предками в дереве DOM. Представим следующую структуру HTML:</wg:p>

  <ce:code-example-4/>

  <wg:p>Компонент <code>Parent</code> в <code>#app-root</code> мог бы поймать неперехваченное всплывающее
    событие из соседнего узла <code>#modal-root</code>.</wg:p>

  <ce:code-example-5/>

  <wg:p><wg:link href="https://codepen.io/gaearon/pen/jGBWpE">Попробовать в CodePen</wg:link></wg:p>

  <wg:p>Захват события, всплывающего из портала в родительском
    компоненте, позволяет создавать более гибкие абстракции, которые по своей сути не зависят от
    порталов. Например, если вы отрисовываете компонент <code>&lt;Modal /&gt;</code>, родитель может
    захватывать свои события независимо от того, реализован ли он с помощью порталов.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="fragments"/>
<c:url var="nextPageUrl" value="render-prop"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>