<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="reactUrl" value="react"/>
<c:url var="reactComponentUrl" value="react-component"/>
<c:url var="reactDomUrl" value="react-dom"/>
<c:url var="uncontrolledСomponentsUrl" value="react-dom-server"/>
<c:url var="optimazingPerformanceUrl" value="dom-elements"/>
<c:url var="syntheticEventUrl" value="synthetic-event"/>
<c:url var="testUtilitiesUrl" value="test-utilities"/>
<c:url var="shallowRendererUrl" value="shallow-renderer"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
  <h1 style="font-weight: bold">4. Справочное руководство</h1>
  <ol class="topic-list__topics">
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href="${reactUrl}"><h4>4.1 React</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href="${reactComponentUrl}"><h4>4.2	React.Component</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${reactDomUrl}><h4>4.3	ReactDOM</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${uncontrolledСomponentsUrl}><h4>4.4	ReactDOMServer</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${optimazingPerformanceUrl}><h4>4.5 DOM Elements</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${syntheticEventUrl}><h4>4.6 SyntheticEvent</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${testUtilitiesUrl}><h4>4.7 Тестовые утилиты</h4></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${shallowRendererUrl}><h4>4.8 Поверхностная отрисовка</h4></a>
    </li>
  </ol>
</lt:layout>