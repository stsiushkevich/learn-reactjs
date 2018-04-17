<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/styling-and-css" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="classnamesUrl" value="https://www.npmjs.com/package/classnames"/>
<c:url var="stylingUrl" value="/reference/dom-elements#style"/>
<c:url var="cssInJsLibsUrl" value="https://github.com/MicheleBertoli/css-in-js"/>
<c:url var="reactTransitionGroupUrl" value="https://reactcommunity.org/react-transition-group/"/>
<c:url var="reactMotionUrl" value="https://github.com/chenglou/react-motion"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page styling-and-css">
  <h1>Стили и CSS</h1>

  <br/>
  <h3>Как мне добавить CSS классы в компоненты?</h3>

  <wg:p>
    Передайте название CSS класса в свойство <code>className</code>:
  </wg:p>

  <ce:code-example-1/>

  <wg:p>Часто CSS классы могут зависеть от <code>props</code> или
    <code>state</code> компонента:</wg:p>

  <ce:code-example-2/>

  <wg:p>
    Если вы часто пишете такой код, пакет
    <wg:link href="${classnamesUrl}">classnames</wg:link> поможет упростить его.
  </wg:p>

  <br/>
  <h3>Могу ли я использовать инлайн стили?</h3>

  <wg:p>
    Конечно! Смотрите <wg:link href="${stylingUrl}">данную документацию</wg:link> по стилям.
  </wg:p>

  <br/>
  <h3>Инлайн стили это плохо?</h3>

  <wg:p>
    Обычно CSS классы более эффективны, чем инлайн стили.
  </wg:p>

  <br/>
  <h3>Что такое CSS в JS?</h3>

  <wg:p>
    «CSS-в-JS» относится к паттерну, в котором CSS создается с использованием JavaScript,
    а не во внешних файлах. Изучите сравнение CSS-в-JS-библиотек <wg:link href="${cssInJsLibsUrl}">здесь.</wg:link>
  </wg:p>

  <wg:p>
    <b>Обратите внимание, что эта функциональность не является частью React, но она
      предоставляется сторонними библиотеками.</b> React не имеет никакого отношения к тому,
    как определяются стили. Если у вас есть сомнения, хорошей отправной точкой является
    определение ваших стилей в отдельном файле <code>*.css</code>, как обычно, и обращение к ним с
    помощью <code>className</code>.
  </wg:p>

  <br/>
  <h3>Могу ли я создавать анимацию в React?</h3>

  <wg:p>
    React может использоваться для создания мощной анимации.
    В качестве примера посмотрите библиотеки <wg:link href="${reactTransitionGroupUrl}">React Transition Group</wg:link> и
    <wg:link href="${reactMotionUrl}">React Motion.</wg:link>
  </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="component-state"/>
<c:url var="nextPageUrl" value="file-structure"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>