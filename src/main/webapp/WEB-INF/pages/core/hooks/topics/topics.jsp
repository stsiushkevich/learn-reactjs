<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="introduction"/>
<c:url var="glanceUrl" value="glance"/>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <h1 style="color: #00acc1">3.20 Хуки</h1>
    <ol class="topic-list__topics">
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${introductionUrl}"><h4>3.20.1 Представляем хуки</h4></a>
        </li>
        <li class="topic-list__topic">
            <a class="topic-list__topic-nav-link" href="${glanceUrl}"><h4>3.20.2 Обзор хуков</h4></a>
        </li>
    </ol>
</lt:layout>