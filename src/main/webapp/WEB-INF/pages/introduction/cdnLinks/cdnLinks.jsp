<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/cdn-links" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="corsUrl" value="https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes"/>
<c:url var="httpHeaderUrl" value="/resources/imges/pages/introduction/installation/http_header.png"/>
<c:url var="errorHandlingUrl" value="/updates/error-handling-in-react-16"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
	<h1>1.4 Ссылки CDN</h1>
	
	<br/>
	
	<p class="introduction">
		React и ReactDOM доступны из CDN.
	</p>
	
	<ce:code-example-1/>

	<p>
		Указанные выше версии предназначены только для разработки и не подходят для продакшена.
		Минимизированные и оптимизированные продакшен версии React доступны здесь:
	</p>
	
	<ce:code-example-2/>
	
	<p>
		Чтобы загрузить конкретную версию react и react-dom, замените 16 требуемым номером версии.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>1.4.1 Почему присутствует crossorigin атрибут?</h2>
	
	<br/>
	
	<p>
		Если вы используете React из CDN, мы рекомендуем устанавливать атрибут <b><a href="${corsUrl}">crossorigin</a></b>:
	</p>
	
	<ce:code-example-3/>
	
	<p>
		Мы также рекомендуем убедиться, что используемый вами CDN устанавливает
		заголовок HTTP <code>Access-Control-Allow-Origin: *</code>:
	</p>
	
	<p class="text-center"><img src="${httpHeaderUrl}"/></p>
	
	<p>Это обеспечивает улучшенную <b><a href="${errorHandlingUrl}">обработку ошибок
		в React 16</a></b> и выше.</p>
		
	<%--
	<ul>
		<li>
			<p>
			
			</p>
		</li>
	</ul>
	--%>
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>

</div>

<c:url var="prevPageUrl" value="create-a-new-react-app"/>
<c:url var="nextPageUrl" value="/basics/topics"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>