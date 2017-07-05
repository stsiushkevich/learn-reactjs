<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="logoImgUrl" value="/resources/imges/logo.png"/>
<c:url var="mainUrl" value="/introduction/topics"/>

<div class="blue-line"></div>
<div class="container">
	<div class="logo-section">
		<img src="${logoImgUrl}"/>
		<a class="btn" href="${mainUrl}">Главная</a>
	</div>
</div>
