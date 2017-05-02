<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page topic-list">
    <wg:head size="1">Введение</wg:head>
    <ol class="topic-list__topics nav nav-pills nav-stacked">
        <li class="topic-list__topic">
            <a href="#" class="topic-list__topic-nav-link">Введение в React JS</a>
        </li>
        <li class="topic-list__topic">
            <a href="#" class="topic-list__topic-nav-link">Установка</a>
        </li>
        <li class="topic-list__topic">
            <a href="#" class="topic-list__topic-nav-link">Инструменты разработчика</a>
        </li>
    </ol>
</lt:layout>

