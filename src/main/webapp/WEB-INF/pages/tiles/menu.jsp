<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionImgUrl" value="/introduction/topics"/>
<c:url var="basicsImgUrl" value="/basics/topics"/>
<c:url var="coreImgUrl" value="/core/topics"/>
<c:url var="referenceImgUrl" value="/reference/topics"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link">
                <a href="${introductionImgUrl}">1. Введение</a>
            </li>
            <li class="menu-sidebar__nav-link active">
                <a href="${basicsImgUrl}">2. Основы React JS</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="${coreImgUrl}">3. Ядро React</a>
            </li>
            <li class="menu-sidebar__nav-link">
                <a href="${referenceImgUrl}">4. Справочная информация</a>
            </li>
        </ul>
    </nav>
</lt:layout>
