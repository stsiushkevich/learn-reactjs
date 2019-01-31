<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="logoImgUrl" value="/resources/imges/logo.png"/>
<c:url var="mainUrl" value="/home"/>
<c:url var="tutorialUrl" value="/tutorial"/>
<c:url var="aboutProjectUrl" value="/about-project"/>
<c:url var="purchaseUrl" value="/purchase"/>
<c:url var="gitHubUrl" value="https://github.com/stsiushkevich/learn-reactjs"/>

<div class="blue-line"></div>
<div class="container">
	<div class="logo-section row">
		<div class="col-md-3">
			<button type="button" class="navbar-toggle toggle-left hidden-md hidden-lg" data-toggle="sidebar" data-target=".sidebar-left">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<img src="${logoImgUrl}"/>
		</div>
		<ul class="header-nav normal col-md-6">
			<li class="header-nav__link ${currentPage eq 'HOME' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">Главная</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'TUTORIAL' ? 'active' : null}">
				<a class="btn" href="${tutorialUrl}">Учебник</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'ABOUT_PROJECT' ? 'active' : null}">
				<a class="btn" href="${aboutProjectUrl}">О проекте</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'GIT_HUB' ? 'active' : null}">
				<a class="btn" href="${gitHubUrl}">GitHub</a>
			</li>
		</ul>
		<ul class="header-nav nav sidebar sidebar-left sidebar-animate col-md-6">
			<li class="header-nav__link ${currentPage eq 'HOME' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">Главная</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'TUTORIAL' ? 'active' : null}">
				<a class="btn" href="${tutorialUrl}">Учебник</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'ABOUT_PROJECT' ? 'active' : null}">
				<a class="btn" href="${aboutProjectUrl}">О проекте</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'GIT_HUB' ? 'active' : null}">
				<a class="btn" href="${gitHubUrl}">GitHub</a>
			</li>
		</ul>
	</div>
</div>
