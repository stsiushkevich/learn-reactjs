<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page note-to-javascript-page">
    <h1>2.1 Примечание к JavaScript</h1>

    <wg:p>React – это JavaScript-библиотека, что предполагает ваши базовые знания языка JavaScript.
        Если ваши знания этого языка недостаточно сильны, рекомендуется освежить их. Это позволит проще
        продвигаться в освоении данной технологии.</wg:p>

    <wg:p>В примерах также используется ES6. Он используется очень взвешенно, так как до сих пор относительно новый.
        Вместе с тем, очень рекомендуется быть знакомым со стрелочными функциями (лямбда), классами, шаблонами,
        конструкциями <code>let</code> и <code>const</code>. Вы можете использовать <b>Babel REPL</b>, чтобы проверить,
        во что компилируется ваш ES6 код.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="/introduction/topics"/>
<c:url var="nextPageUrl" value="hello-world-example"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>