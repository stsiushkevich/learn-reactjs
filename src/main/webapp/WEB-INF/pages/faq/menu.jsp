<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="ajaxAndApisUrl" value="ajax-and-apis"/>
<c:url var="babelAndJsxUrl" value="babel-and-jsx"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_AJAX_AND_APIS' ? 'active' : null}">
                <a href="${ajaxAndApisUrl}">AJAX и API</a>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'FAQ_AJAX_AND_APIS' ? 'active' : null}">
                <a href="${babelAndJsxUrl}">Babel и JSX</a>
            </li>
        </ul>
    </nav>
</lt:layout>
