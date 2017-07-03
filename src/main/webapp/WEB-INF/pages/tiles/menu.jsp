<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/introduction/introduction-topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="coreUrl" value="/core/topics"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link">
                <a href="${introductionUrl}">1. Введение</a>
            </li>
            <li class="menu-sidebar__nav-link active">
                <a href="${basicsUrl}">2. Основы React JS</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="${coreUrl}">3. Ядро React</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="#">4. Справочная информация</a>
            </li>
        </ul>
    </nav>
</lt:layout>
