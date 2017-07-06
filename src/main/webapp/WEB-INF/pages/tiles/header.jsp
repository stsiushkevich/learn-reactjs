<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="logoImgUrl" value="/resources/imges/logo.png"/>
<c:url var="mainUrl" value="/home"/>

<div class="blue-line"></div>
<div class="container">
	<div class="logo-section row">
		<div class="col-md-3">
			<img src="${logoImgUrl}"/>
		</div>
		<ul class="header-nav col-md-9">
			<li class="header-nav__link ${currentPage eq 'HOME' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">Главная</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'ABOUT_PROJECT' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">О проекте</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'BOOKS' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">Книги</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'GIT_HUB' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">GitHub</a>
			</li>
			<li class="header-nav__link pull-right">
				<a class="btn buy-btn" href="${mainUrl}">Купить EPUB/PDF</a>
			</li>
		</ul>
	</div>
</div>
