<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/core/hooks/introduction"/>
<c:url var="glanceUrl" value="/core/hooks/glance"/>
<c:url var="stateHookUrl" value="/core/hooks/state-hook"/>
<c:url var="effectHookUrl" value="/core/hooks/effect-hook"/>
<c:url var="rulesUrl" value="/core/hooks/rules"/>
<c:url var="customHookUrl" value="/core/hooks/custom-hook"/>
<c:url var="apiUrl" value="/core/hooks/api"/>

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
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_STATE_HOOK' ? 'active' : null}">
                <a href="${stateHookUrl}">3.20.3 Хук состояния</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_EFFECT_HOOK' ? 'active' : null}">
                <a href="${effectHookUrl}">3.20.4 Хук эффекта</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_RULES' ? 'active' : null}">
                <a href="${rulesUrl}">3.20.5 Правила использования хуков</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_CUSTOM_HOOK' ? 'active' : null}">
                <a href="${customHookUrl}">3.20.6 Пользовательский хук</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CORE_HOOKS_API' ? 'active' : null}">
                <a href="${apiUrl}">3.20.7 API</a>
            </li>
        </ul>
    </nav>
</lt:layout>
