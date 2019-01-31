<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="introduction"/>
<c:url var="glanceUrl" value="glance"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_INTRODUCTION' ? 'active' : null}">
                <a href="${introductionUrl}">3.20.1 Представляем хуки</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_GLANCE' ? 'active' : null}">
                <a href="${glanceUrl}">3.20.2 Обзор хуков</a>
            </li>
        </ul>
    </nav>
</lt:layout>
