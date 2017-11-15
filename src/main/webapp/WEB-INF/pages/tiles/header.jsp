<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="logoImgUrl" value="/resources/imges/logo.png"/>
<c:url var="mainUrl" value="/home"/>
<c:url var="aboutProjectUrl" value="/about-project"/>
<c:url var="purchaseUrl" value="/purchase"/>
<c:url var="gitHubUrl" value="https://github.com/stsiushkevich/learn-reactjs"/>

<div class="blue-line"></div>
<div class="container">
	<div class="logo-section row">
		<div class="col-md-3">
			<img src="${logoImgUrl}"/>
		</div>
		<ul class="header-nav col-md-6">
			<li class="header-nav__link ${currentPage eq 'HOME' ? 'active' : null}">
				<a class="btn" href="${mainUrl}">Главная</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'ABOUT_PROJECT' ? 'active' : null}">
				<a class="btn" href="${aboutProjectUrl}">О проекте</a>
			</li>
			<li class="header-nav__link ${currentPage eq 'GIT_HUB' ? 'active' : null}">
				<a class="btn" href="${gitHubUrl}">GitHub</a>
			</li>
		</ul>
<%--		<ul class="header-nav col-md-2 text-right">
			<li class="header-nav__link">
				<a class="btn buy-btn" href="${purchaseUrl}">Купить EPUB/PDF</a>
			</li>
		</ul>--%>
	</div>
</div>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark indigo">

	<!-- Navbar brand -->
	<a class="navbar-brand" href="#">Navbar</a>

	<!-- Collapse button -->
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
	        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

	<!-- Collapsible content -->
	<div class="collapse navbar-collapse" id="navbarSupportedContent">

		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Features</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Pricing</a>
			</li>

			<!-- Dropdown -->
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
				<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Action</a>
					<a class="dropdown-item" href="#">Another action</a>
					<a class="dropdown-item" href="#">Something else here</a>
				</div>
			</li>

		</ul>
		<!-- Links -->

		<!-- Search form -->
		<form class="form-inline">
			<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
		</form>
	</div>
	<!-- Collapsible content -->

</nav>
<!--/.Navbar-->
