<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page note-to-javascript-page">
    <h1>2.1 Примечание к JavaScript</h1>

    <wg:p>React является JavaScript-библиотекой. Из этого следует, что у вас должны
        быть определенные базовые знания языка JavaScript. Если вы чувствуете, что ваших знаний этого
        языка недостаточно, советуем освежить их. Так вам будет гораздо проще и быстрее изучить данную технологию.</wg:p>

    <wg:p>В наших примерах мы будем использовать ES6, поэтому очень рекомендуем ознакомиться со стрелочными
        функциями (лямбда), классами, шаблонами, конструкциями <code>let</code> и <code>const</code>. Вы можете
        использовать <b>Babel REPL</b>, чтобы проверить, во что компилируется ваш ES6 код.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="/introduction/topics"/>
<c:url var="nextPageUrl" value="hello-world-example"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>