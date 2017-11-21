<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="logoImgUrl" value="/resources/imges/react-js-logo.png"/>
<c:url var="mainUrl" value="/home"/>
<c:url var="aboutProjectUrl" value="/about-project"/>
<c:url var="purchaseUrl" value="/purchase"/>
<c:url var="gitHubUrl" value="https://github.com/stsiushkevich/learn-reactjs"/>

<div class="blue-line"></div>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark elegant-color">

	<img class="logo" src="${logoImgUrl}"/>
	<a class="navbar-brand" href="#">React</a>

	<!-- Collapse button -->
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
	        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

	<!-- Collapsible content -->
	<div class="collapse navbar-collapse" id="navbarSupportedContent">

		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item ${currentPage eq 'HOME' ? 'active' : null}">
				<a class="nav-link" href="${mainUrl}">Главная</a>
			</li>
			<li class="nav-item ${currentPage eq 'ABOUT_PROJECT' ? 'active' : null}">
				<a class="nav-link" href="${aboutProjectUrl}">О проекте</a>
			</li>
			<li class="nav-item ${currentPage eq 'GIT_HUB' ? 'active' : null}">
				<a class="nav-link" href="${gitHubUrl}">GitHub</a>
			</li>
		</ul>
		<!-- Links -->

		<!-- Search form -->
		<%--<form class="form-inline">
			<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
		</form>--%>
	</div>
</nav>
<!--/.Navbar-->
