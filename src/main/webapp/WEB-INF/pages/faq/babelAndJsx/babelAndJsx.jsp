<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/faq/babel-and-jsx" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="reactWithoutJsxUrl" value="/core/react-without-jsx"/>
<c:url var="reactWithoutES6Url" value="/core/react-without-es6"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page babel-and-jsx">
  <h1>Babel и JSX</h1>

  <br/>
  <h3>Обязан ли я использовать JSX в React?</h3>

  <wg:p>
    Нет! Изучите раздел "<wg:link href="${reactWithoutJsxUrl}">React без JSX</wg:link>", чтобы получить больше информации.
  </wg:p>

  <br/>
  <h3>Обязан ли я использовать ES6(+) в React?</h3>

  <wg:p>
    Нет! Изучите раздел "<wg:link href="${reactWithoutES6Url}">React без ES6</wg:link>", чтобы получить больше информации.
  </wg:p>

  <br/>
  <h3>Как я могу писать комментарии в JSX?</h3>

  <ce:code-example-1/>
  <ce:code-example-2/>
</lt:layout>

<c:url var="prevPageUrl" value="reconciliation"/>
<c:url var="nextPageUrl" value="portals"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>