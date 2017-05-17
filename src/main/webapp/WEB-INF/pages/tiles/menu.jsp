<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/introduction/introduction-topics"/>
<c:url var="basicsUrl" value="/basics/basics-topics"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link">
                <a href="${introductionUrl}">Введение</a>
            </li>
            <li class="menu-sidebar__nav-link active">
                <a href="${basicsUrl}">Основы React JS</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="#">Ядро React</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="#">Справочная информация</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="#">Качество кода</a>
            </li>
        </ul>
    </nav>
</lt:layout>
