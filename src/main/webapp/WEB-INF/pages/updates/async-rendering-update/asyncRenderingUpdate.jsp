<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/derivedStateNecessity" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="updatingStateBasedOnProps"
       value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#updating-state-based-on-props"/>

<c:url var="controlledComponentsUrl" value="/basics/forms#controlled-components"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page derived-state-necessity-page">
    <h1>Обновление асинхронной отрисовки компонентов</h1>

    <wg:p><b>27 Марта, 2018. Brian Vaughn (Брайан Вон)</b></wg:p>
    
    <wg:p>
        Уже более года команда React работает над реализацией асинхронной отрисовки.
        Теперь мы хотели бы поделиться с вами некоторыми уроками, которые усвоили, работая над этими функциями,
        а также некоторыми рекомендациями, которые помогут подготовить ваши компоненты для асинхронной
        отрисовки, когда она будет активирована.
    </wg:p>
    
    <wg:p>
        Один из самых больших уроков, который мы усвоили, заключается в том, что некоторые из наших устаревших методов
        жизненного цикла компонента, склонны поощрять небезопасные практики кодирования. Это:
    </wg:p>
    
    <wg:p>
        <ul>
            <li>componentWillMount</li>
            <li>componentWillReceiveProps</li>
            <li>componentWillUpdate</li>
        </ul>
    </wg:p>
    
    <p>
        Эти методы жизненного цикла часто понимались неправильно и злоупотреблялись. Более того, мы
        ожидаем, что их потенциальное злоупотребление может принести еще больше проблем вместе с асинхронной
        отрисовкой. Из-за этого мы добавим префикс <b>«UNSAFE_»</b> к данным методам в предстоящей версии. (Здесь
        префикс <b>«UNSAFE_»</b> относится не к безопасности. Он сообщает, что код, использующий данные методы, будет с
        большей вероятностью иметь ошибки в будущих версиях React, особенно после активации асинхронной отрисовки.)
    </p>
    
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</lt:layout>

<c:url var="prevPageUrl" value="react-v16.4.0-pointer-events"/>
<app:page-navigate pageStartAncor="pageStart" prevPageUrl="${prevPageUrl}"/>