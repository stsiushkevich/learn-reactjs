<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="tutorialUrl" value="/tutorial"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="hooksUrl" value="/core/hooks/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>
<c:url var="trainingProjectUrl" value="/training-project/topics"/>
<c:url var="updatesUrl" value="/updates/topics"/>
<c:url var="faqUrl" value="/faq/topics"/>

<c:url var="introductionImgUrl" value="/resources/imges/pages/home/introduction.png"/>
<c:url var="basicsImgUrl" value="/resources/imges/pages/home/rocket.png"/>
<c:url var="coreImgUrl" value="/resources/imges/pages/home/atom.png"/>
<c:url var="referenceImgUrl" value="/resources/imges/pages/home/reference.png"/>
<c:url var="updateImgUrl" value="/resources/imges/pages/home/update.png"/>
<c:url var="faqImgUrl" value="/resources/imges/pages/home/faq.png"/>

<c:set var="isIntroductionSection" value="${currentSection eq 'INTRODUCTION'}"/>
<c:set var="isBasicsSection" value="${currentSection eq 'BASICS'}"/>
<c:set var="isTutorialSection" value="${currentSection eq 'TUTORIAL'}"/>
<c:set var="isCoreSection" value="${currentSection eq 'CORE'}"/>
<c:set var="isHooksSection" value="${currentSection eq 'HOOKS'}"/>
<c:set var="isReferenceSection" value="${currentSection eq 'REFERENCE'}"/>
<c:set var="isTrainingProjectSection" value="${currentSection eq 'TRAINING_PROJECT'}"/>
<c:set var="isUpdatesSection" value="${currentSection eq 'UPDATES'}"/>
<c:set var="isFAQSection" value="${currentSection eq 'FAQ'}"/>

<lt:layout cssClass="menu-sidebar">
	<div class="black-line"></div>
	<nav class="menu-sidebar__nav">
		<ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
			<li class="menu-sidebar__nav-link ${isIntroductionSection ? 'active' : null}">
				<a href="${introductionUrl}">1. Введение</a>
			</li>
			<li class="menu-sidebar__nav-link ${isBasicsSection ? 'active' : null}">
				<a href="${basicsUrl}">2. Быстрый старт</a>
			</li>
			<li class="menu-sidebar__nav-link ${isTutorialSection ? 'active' : null}">
				<a href="${tutorialUrl}">3. Учебник</a>
			</li>
			<li class="menu-sidebar__nav-link ${isCoreSection ? 'active' : null}">
				<a href="${coreUrl}">4. Продвинутое руководство</a>
			</li>
			<li class="menu-sidebar__nav-link ${isHooksSection ? 'active' : null}">
				<a href="${hooksUrl}">5. Хуки</a>
			</li>
			<li class="menu-sidebar__nav-link ${isReferenceSection ? 'active' : null}">
				<a href="${referenceUrl}">6. Справочное руководство</a>
			</li>
			<li class="menu-sidebar__nav-link ${isTrainingProjectSection ? 'active' : null}">
				<a href="${trainingProjectUrl}">7. Учебный проект</a>
			</li>
			<li class="menu-sidebar__nav-link ${isFAQSection ? 'active' : null}">
				<a href="${faqUrl}">8. FAQ</a>
			</li>
			<li class="menu-sidebar__nav-link ${isUpdatesSection ? 'active' : null}">
				<a href="${updatesUrl}">9. Обновления</a>
			</li>
		</ul>
	</nav>
</lt:layout>
