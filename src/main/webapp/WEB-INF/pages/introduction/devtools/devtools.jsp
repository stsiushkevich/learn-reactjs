<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="code-example" tagdir="/WEB-INF/tags/application/introduction/installation" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="devtoolsUrl" value="/resources/imges/pages/introduction/devtools/devtools.png"/>
<c:url var="reactExtUrl" value="/resources/imges/pages/introduction/devtools/react_ext.PNG"/>

<a name="pageStart"></a>
<lt:layout cssClass="page instalation-page">
    <h1>1.3 Инструменты разработчика</h1>

    <br/>
    <h2>1.3.1 Отладка в браузере Chrome</h2>

    <wg:p>Для браузеров Chrome и Firefox имеются расширения, которые позволяют следить за деревом React
        компонентов в меню инструментов разработчика браузера.</wg:p>
    <wg:p cssClass="text-center"><wg:img src="${devtoolsUrl}"/></wg:p>
    <wg:p>Это позволяет отслеживать свойства <code>props</code> и состояние <code>state</code> выбранного компонента в дереве.</wg:p>
    <wg:p>После установки расширения, нужно кликнуть правой кнопкой мыши по какому-либо элементу на странице и
        нажать «inspect». Откроется меню инструментов разработчика и вкладка React появится последней справа.</wg:p>
    <wg:p cssClass="text-center"><wg:img src="${reactExtUrl}"/></wg:p>
    <wg:p>Обратите внимание на дополнительные шаги для работы с <b>CodePen</b>:</wg:p>
    <wg:p>
        <ol>
            <li>Залогиньтесь или зарегистрируйтесь и подтвердите ваш email. (необходимо для предотвращения спама)</li>
            <li>Кликните кнопку «Fork»</li>
            <li>Кликните «Change View» и затем выберите «Debug mode»</li>
            <li>В новой открывшейся вкладке инструменты разработчика должны иметь вкладку «React»</li>
        </ol>
    </wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="installation"/>
<c:url var="nextPageUrl" value="/basics/topics"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>