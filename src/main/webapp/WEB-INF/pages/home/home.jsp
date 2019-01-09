<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application/home" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="tutorialUrl" value="/tutorial"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>
<c:url var="updatesUrl" value="/updates/topics"/>
<c:url var="faqUrl" value="/faq/topics"/>

<c:url var="hexagonUrl" value="/resources/imges/hexagon.svg"/>
<c:url var="atomUrl" value="/resources/imges/atom.svg"/>

<div class="full-size atom-bg-icon">
    <div class="full-size code-fragment-bg-icon">
        <div class="section-nav">
            <div class="section-nav__item-group group-1">
                <div class="section-nav__selected-section"></div>
                <div data-section-title="Введение" class="section-nav__item position_left">
                    <a class="section-nav__link" href="${introductionUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-compass cssClass="section-nav__tg-icon compass-icon"/>
                    </a>
                </div>
                <div class="section-nav__item-offset"></div>
                <div data-section-title="Учебник" class="section-nav__item position_top left-offset">
                    <a class="section-nav__link" href="${tutorialUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-tutorial cssClass="section-nav__tg-icon tutorial-icon"/>
                    </a>
                </div>
                <div data-section-title="Быстрый старт" class="section-nav__item position_bottom left-offset">
                    <a class="section-nav__link" href="${basicsUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-rocket cssClass="section-nav__tg-icon rocket-icon"/>
                    </a>
                </div>
                <div data-section-title="Продвинутый" class="section-nav__item position_right">
                    <a class="section-nav__link" href="${coreUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-atom-with-electrons cssClass="section-nav__tg-icon atom-icon"/>
                    </a>
                </div>
            </div>
            <div class="section-nav__item-group group-2">
                <div class="section-nav__selected-section"></div>
                <div class="section-nav__item-empty"></div>
                <div data-section-title="Справка" class="section-nav__item position_top">
                    <a class="section-nav__link" href="${referenceUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-reference cssClass="section-nav__tg-icon reference-icon"/>
                    </a>
                </div>
                <div data-section-title="FAQ" class="section-nav__item position_bottom">
                    <a class="section-nav__link" href="${faqUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-faq cssClass="section-nav__tg-icon faq-icon"/>
                    </a>
                </div>
            </div>
            <div class="section-nav__item-group group-3">
                <div class="section-nav__selected-section"></div>
                <div data-section-title="Обновления" class="section-nav__item position_left">
                    <a class="section-nav__link" href="${updatesUrl}">
                        <app:svg-hexagon cssClass="section-nav__bg-icon"/>
                        <app:svg-update cssClass="section-nav__tg-icon update-icon"/>
                    </a>
                </div>
            </div>
        </div>
        <div class="container custom-container">
            <div class="row">
                <div class="col-md-3">
                    <div class="react-logo-badge">
                        <app:svg-hexagon-rotated cssClass="react-logo-badge__bg-icon"/>
                        <span class="react-logo-badge__text">React</span>
                    </div>
                </div>
                <div class="col-md-6 text-center">
                    <div class="main-title">
                        <div class="main-title__text">Полное руководство</div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="./resources.jsp"/>