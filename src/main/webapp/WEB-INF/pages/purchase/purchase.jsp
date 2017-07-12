<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="p" tagdir="/WEB-INF/tags/application/purchase" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>

<c:url var="introductionImgUrl" value="/resources/imges/pages/home/compass.png"/>
<c:url var="basicsImgUrl" value="/resources/imges/pages/home/science.png"/>
<c:url var="coreImgUrl" value="/resources/imges/pages/home/microchip.png"/>
<c:url var="referenceImgUrl" value="/resources/imges/pages/home/science-book.png"/>

<lt:layout cssClass="container purchase">
	<lt:layout><h2 class="text-center"><b>Покупка учебника React JS</b></h2></lt:layout>

	<br/>
	<%--<lt:layout cssClass="row">
		<lt:layout cssClass="col-md-6 text-right">
			<p:course cssClass="course_beginner-level" level="1" name="Начинающий" price="12$" sections="Введение, Основы"/>
		</lt:layout>
		<lt:layout cssClass="col-md-6 text-left">
			<p:course cssClass="course_specialist-level" level="2" name="Специалист" price="12$" sections="Введение, Основы, Справочное руководство"/>
		</lt:layout>
	</lt:layout>

	<lt:layout cssClass="row">
		<lt:layout cssClass="col-md-6 text-right">
			<p:course cssClass="course_professional-level" level="3" name="Профессионал" price="12$" sections="Ядро React JS, Справочное руководство"/>
		</lt:layout>
		<lt:layout cssClass="col-md-6 text-left">
			<p:course cssClass="course_master-level" level="4" name="Мастер" price="12$" sections="Введение, Основы, Ядро React JS, Справочное руководство"/>
		</lt:layout>
	</lt:layout>--%>
	<wg:bootstrap-accordion id="levels">
		<wg:bootstrap-accordion-item id="beginner" title="Начинающий" parentId="levels" cssClass="panel-success">
			<p:course cssClass="course_beginner-level" level="1" name="Начинающий" price="12$" sections="Введение, Основы"/>
		</wg:bootstrap-accordion-item>
		<wg:bootstrap-accordion-item id="specialist" title="Специалист" parentId="levels" cssClass="panel-info">
			<p:course cssClass="course_specialist-level" level="1" name="Специалист" price="12$" sections="Введение, Основы"/>
		</wg:bootstrap-accordion-item>
	</wg:bootstrap-accordion>
</lt:layout>