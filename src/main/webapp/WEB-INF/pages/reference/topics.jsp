<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="reactUrl" value="react"/>
<c:url var="reactComponentUrl" value="react-component"/>
<c:url var="reactDomUrl" value="react-dom"/>
<c:url var="reactDomServerUrl" value="react-dom-server"/>
<c:url var="domElementsUrl" value="dom-elements"/>
<c:url var="syntheticEventUrl" value="synthetic-event"/>
<c:url var="testUtilitiesUrl" value="test-utilities"/>
<c:url var="shallowRendererUrl" value="shallow-renderer"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
  <lt:layout cssClass="h3" style="font-weight: bold">4. Справочное руководство</lt:layout>
  <ol class="topic-list__topics">
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href="${reactUrl}"><b>4.1 React</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href="${reactComponentUrl}"><b>4.2	React.Component</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${reactDomUrl}><b>4.3	ReactDOM</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${reactDomServerUrl}><b>4.4	ReactDOMServer</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${domElementsUrl}><b>4.5 DOM Elements</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${syntheticEventUrl}><b>4.6 SyntheticEvent</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${testUtilitiesUrl}><b>4.7 Тестовые утилиты</b></a>
    </li>
    <li class="topic-list__topic">
      <a class="topic-list__topic-nav-link" href=${shallowRendererUrl}><b>4.8 Поверхностная отрисовка</b></a>
    </li>
  </ol>
</lt:layout>