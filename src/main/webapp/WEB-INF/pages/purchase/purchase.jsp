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

<lt:layout cssClass="page container purchase">
	<lt:layout><h1 class="text-center">Покупка учебника ReactJS</h1></lt:layout>

	<br/>
	<wg:form id="chooseCourseForm" action="pay" method="POST" cssClass="col-md-offset-3 col-md-6 choose-course-form">
		<wg:bootstrap-accordion id="levels" cssClass="levels">
			<wg:bootstrap-accordion-item id="beginner" isExpanded="true" title="Начинающий" parentId="levels" cssClass="panel-beginner" contentCssClass="text-center">
				<p:course cssClass="course_beginner-level" level="1" title="Начинающий" key="beginner" price="${beginnerPrice}$" sections="Введение, Основы"/>
			</wg:bootstrap-accordion-item>
			<wg:bootstrap-accordion-item id="specialist" title="Специалист" parentId="levels" cssClass="panel-specialist" contentCssClass="text-center">
				<p:course cssClass="course_specialist-level" level="2" title="Специалист" key="specialist" price="${specialistPrice}$"
				          sections="Введение, Основы, Справочное руководство"/>
			</wg:bootstrap-accordion-item>
			<wg:bootstrap-accordion-item id="professional" title="Профессионал" parentId="levels"
			                             cssClass="panel-professional" contentCssClass="text-center">
				<p:course cssClass="course_professional-level" level="3" title="Профессионал" key="professional" price="${professionalPrice}$"
				          sections="Ядро ReactJS, Справочное руководство"/>
			</wg:bootstrap-accordion-item>
			<wg:bootstrap-accordion-item id="master" title="Мастер" parentId="levels" cssClass="panel-master" contentCssClass="text-center">
				<p:course cssClass="course_master-level" level="4" title="Мастер" key="master" price="${masterPrice}$"
				          sections="Введение, Основы, Ядро ReactJS, Справочное руководство"/>
			</wg:bootstrap-accordion-item>
		</wg:bootstrap-accordion>
		<div class="text-center">
			<input type="submit" id="continue" class="btn btn-success" value="Продолжить"/>
		</div>
	</wg:form>

	<wg:modal id="chooseCourseWarningModal" cssClass="modal-sm">
		<wg:modal-body>
			<wg:p cssClass="alert alert-warning">
				Пожалуйста, выберите курс!
			</wg:p>
		</wg:modal-body>
		<wg:modal-footer>
			<wg:button domType="link" type="button" dataDismiss="modal" cssClass="btn btn-success ok">Ок</wg:button>
		</wg:modal-footer>
	</wg:modal>
</lt:layout>