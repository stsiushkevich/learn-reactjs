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
    <lt:layout><h2 class="text-center"><b>Полное руководство по ReactJS</b></h2></lt:layout>
    <lt:layout cssClass="text-center home-page__text">Здесь вы сможете получить самую полную информацию по самой популярной технологии ReactJS</lt:layout>
    <lt:layout cssClass="text-center home-page__text">Приступайте к изучению прямо сейчас и станьте настоящим профессионалом!</lt:layout>

    <lt:layout cssClass="tutorial__sections">
        <lt:layout cssClass="row">
            <lt:layout cssClass="col-xs-6 col-md-6 text-right">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${introductionUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${introductionImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Введение</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
            <lt:layout cssClass="col-xs-6 col-md-6 text-left">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${basicsUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${basicsImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Основы</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
        </lt:layout>
        <lt:layout cssClass="row">
            <lt:layout cssClass="col-xs-6 col-md-6 text-right">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${coreUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${coreImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Ядро ReactJS</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
            <lt:layout cssClass="col-xs-6 col-md-6 text-left">
                <lt:layout cssClass="tutorial__section">
                    <wg:link href="${referenceUrl}" cssClass="tutorial__section-link">
                        <wg:img src="${referenceImgUrl}"/>
                        <lt:layout cssClass="tutorial__section-label">Справка</lt:layout>
                    </wg:link>
                </lt:layout>
            </lt:layout>
        </lt:layout>
    </lt:layout>
</lt:layout>