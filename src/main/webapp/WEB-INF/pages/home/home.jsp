<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application/home" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="tutorialUrl" value="/tutorial"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="hooksUrl" value="/core/hooks/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>
<c:url var="updatesUrl" value="/updates/topics"/>
<c:url var="faqUrl" value="/faq/topics"/>

<c:url var="hexagonUrl" value="/resources/imges/hexagon.svg"/>
<c:url var="atomUrl" value="/resources/imges/atom.svg"/>

<div class="full-size atom-bg-icon">
    <div class="full-size code-fragment-bg-icon">
        <div class="container full-height">
            <div class="full-size flex flex-direction_column">
                <div class="section-nav">

                    <div data-section-title="Введение" class="section-nav__item">
                        <a class="section-nav__link" href="${introductionUrl}">
                            <app:svg-compass cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Введение</div>
                        </a>
                    </div>

                    <div data-section-title="Быстрый старт" class="section-nav__item">
                        <a class="section-nav__link" href="${basicsUrl}">
                            <app:svg-rocket cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Быстрый старт</div>
                        </a>
                    </div>

                    <div data-section-title="Учебник" class="section-nav__item">
                        <a class="section-nav__link" href="${tutorialUrl}">
                            <app:svg-tutorial cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Учебник</div>
                        </a>
                    </div>

                    <div data-section-title="Продвинутый" class="section-nav__item">
                        <a class="section-nav__link" href="${coreUrl}">
                            <app:svg-atom-with-electrons cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Продвинутый</div>
                        </a>
                    </div>
    
                    <div data-section-title="Хуки" class="section-nav__item">
                        <a class="section-nav__link" href="${hooksUrl}">
                            <app:svg-hook cssClass="section-nav__icon hook-icon"/>
                            <div class="section-nav__text">Хуки</div>
                        </a>
                    </div>

                    <div data-section-title="Справка" class="section-nav__item">
                        <a class="section-nav__link" href="${referenceUrl}">
                            <app:svg-reference cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Справка</div>
                        </a>
                    </div>

                    <div data-section-title="FAQ" class="section-nav__item">
                        <a class="section-nav__link" href="${faqUrl}">
                            <app:svg-faq cssClass="section-nav__icon"/>
                            <div class="section-nav__text">FAQ</div>
                        </a>
                    </div>

                    <div data-section-title="Обновления" class="section-nav__item">
                        <a class="section-nav__link" href="${updatesUrl}">
                            <app:svg-update cssClass="section-nav__icon"/>
                            <div class="section-nav__text">Обновления</div>
                        </a>
                    </div>

                </div>
                <div class="flex-1">
                    <div class="main-title flex full-size justify-content_flex-center align-items_flex-center position_relative">
                        <div class="main-title__text flex justify-content_flex-center align-items_flex-center">Полное руководство</div>
                    </div>
                </div>
            </div>

            <div class="react-logo-badge">
                <app:svg-hexagon-rotated cssClass="react-logo-badge__bg-icon"/>
                <span class="react-logo-badge__text">React</span>
            </div>
        </div>
    </div>
</div>