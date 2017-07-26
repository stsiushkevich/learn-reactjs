<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>

<c:url var="introductionImgUrl" value="/resources/imges/pages/home/compass.png"/>
<c:url var="basicsImgUrl" value="/resources/imges/pages/home/science.png"/>
<c:url var="coreImgUrl" value="/resources/imges/pages/home/microchip.png"/>
<c:url var="referenceImgUrl" value="/resources/imges/pages/home/science-book.png"/>

<c:set var="isIntroductionSection" value="${currentSection eq 'INTRODUCTION'}"/>
<c:set var="isBasicsSection" value="${currentSection eq 'BASICS'}"/>
<c:set var="isCoreSection" value="${currentSection eq 'CORE'}"/>
<c:set var="isReferenceSection" value="${currentSection eq 'REFERENCE'}"/>

<lt:layout cssClass="menu-sidebar">
	<div class="black-line"></div>
	<nav class="menu-sidebar__nav">
		<ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
			<li class="menu-sidebar__nav-link ${isIntroductionSection ? 'active' : null}">
				<a href="${introductionUrl}">1. Введение</a>
			</li>
			<li class="menu-sidebar__nav-link ${isBasicsSection ? 'active' : null}">
				<a href="${basicsUrl}">2. Основы React JS</a>
			</li>
			<li class="menu-sidebar__nav-link ${isCoreSection ? 'active' : null}">
				<a href="${coreUrl}">3. Ядро React</a>
			</li>
			<li class="menu-sidebar__nav-link ${isReferenceSection ? 'active' : null}">
				<a href="${referenceUrl}">4. Справочная информация</a>
			</li>
		</ul>
	</nav>
	<wg:p cssClass="section-picture">
		<c:choose>
			<c:when test="${isIntroductionSection}"><wg:img src="${introductionImgUrl}"/></c:when>
			<c:when test="${isBasicsSection}"><wg:img src="${basicsImgUrl}"/></c:when>
			<c:when test="${isCoreSection}"><wg:img src="${coreImgUrl}"/></c:when>
			<c:when test="${isReferenceSection}"><wg:img src="${referenceImgUrl}"/></c:when>
		</c:choose>
	</wg:p>
</lt:layout>
