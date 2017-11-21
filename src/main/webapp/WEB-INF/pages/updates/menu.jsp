<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="react_v16_0Url" value="react_v16_0"/>
<c:url var="domAttributesInReact16Url" value="dom-attributes-in-react-16"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_REACT_V16_0' ? 'active' : null}">
                <a href="${react_v16_0Url}">React v16.0</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'UPDATES_DOM_ATTRIBUTES_IN_REACT_16' ? 'active' : null}">
                <a href="${domAttributesInReact16Url}">DOM Атрибуты в React 16</a>
            </li>
        </ul>
    </nav>
</lt:layout>
