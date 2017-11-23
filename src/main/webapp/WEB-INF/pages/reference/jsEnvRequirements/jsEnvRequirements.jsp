<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.0" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page js-env-requirements-page">
    <h1>Требования к JavaScript среде</h1>

    <wg:p>React 16 зависит от типов коллекций <code>Map</code> и <code>Set</code>. Если вы поддерживаете старые
        браузеры и устройства, которые не могут предоставить их нативно (например, IE < 11),
        подумайте о включении глобального полифилла в ваше приложение,
        например <code>core-js</code> или <code>babel-polyfill</code>.</wg:p>

    <wg:p>Среда с полифилом для React 16, использующая <code>core-js</code> для
        поддержки старых браузеров может выглядеть так:</wg:p>

    <ce:code-example-7/>

    <wg:p>React также зависит от <code>requestAnimationFrame</code> (даже в тестовых средах).
        Вы можете использовать пакет <wg:link href="https://www.npmjs.com/package/raf">raf</wg:link>
        для подключения <code>requestAnimationFrame</code>:</wg:p>

    <ce:code-example-8/>

</lt:layout>

<c:url var="prevPageUrl" value="test-renderer"/>
<app:page-navigate prevPageUrl="${prevPageUrl}" pageStartAncor="pageStart"/>