<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<c:url var="introductionUrl" value="/introduction/topics"/>
<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="coreUrl" value="/core/topics"/>
<c:url var="referenceUrl" value="/reference/topics"/>
<c:url var="updatesUrl" value="/updates/topics"/>
<c:url var="faqUrl" value="/faq/topics"/>

<c:url var="introductionImgUrl" value="/resources/imges/pages/home/introduction.png"/>
<c:url var="basicsImgUrl" value="/resources/imges/pages/home/rocket.png"/>
<c:url var="coreImgUrl" value="/resources/imges/pages/home/atom.png"/>
<c:url var="referenceImgUrl" value="/resources/imges/pages/home/reference.png"/>
<c:url var="updateImgUrl" value="/resources/imges/pages/home/update.png"/>
<c:url var="faqImgUrl" value="/resources/imges/pages/home/faq.png"/>

<lt:layout cssClass="container tutorial">
    <h1>Полное руководство по ReactJS</h1>
    <h5>Перед вами учебник по ReactJS, в котором тщательно собрана самая полная и достоверная<br/> информация по этой очень популярной и эффективной технологии</h5>
    <h5>Начните изучение ReactJS прямо сейчас и станьте настоящим профессионалом!</h5>

    <lt:layout cssClass="tutorial__sections">
        <lt:layout cssClass="row">
            <lt:layout cssClass="col-xs-12 col-md-12 text-center">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${introductionUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${introductionImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Введение</lt:layout>
                    </wg:link>
                </lt:layout>
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${basicsUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${basicsImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Быстрый старт</lt:layout>
                    </wg:link>
                </lt:layout>
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${coreUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${coreImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Для продвинутых</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
        </lt:layout>
        <lt:layout cssClass="row">
            <lt:layout cssClass="col-xs-12 col-md-12 text-center">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${referenceUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${referenceImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Справка</lt:layout>
                    </wg:link>
                </lt:layout>
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${faqUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${faqImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">FAQ</lt:layout>
                    </wg:link>
                </lt:layout>
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${updatesUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${updateImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Обновления</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
        </lt:layout>
    </lt:layout>
</lt:layout>