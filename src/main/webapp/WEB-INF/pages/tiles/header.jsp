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
			<li class="header-nav__link">
				<a class="btn" href="${mainUrl}">Главная</a>
			</li>
		</ul>
	</div>
</div>
