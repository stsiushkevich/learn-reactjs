<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionInReactJSUrl" value="ajax-and-apis"/>
<c:url var="babelAndJsxUrl" value="babel-and-jsx"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">FAQ</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a href="${introductionInReactJSUrl}" class="topic-list__topic-nav-link">
                <h4>AJAX и API</h4>
            </a>
        </li>
        <li class="topic-list__topic">
            <a href="${babelAndJsxUrl}" class="topic-list__topic-nav-link">
                <h4>Babel и JSX</h4>
            </a>
        </li>
    </ol>
</lt:layout>

