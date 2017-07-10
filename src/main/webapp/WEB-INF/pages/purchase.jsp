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

<lt:layout cssClass="container tutorial">
	<lt:layout><h2 class="text-center"><b>Покупка учебника React JS</b></h2></lt:layout>

	<br/>
	<lt:layout cssClass="purchase__item">
		<h4><b>Курс 1</b></h4>
		<br/>
	</lt:layout>
</lt:layout>