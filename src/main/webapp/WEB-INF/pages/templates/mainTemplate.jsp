<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<!DOCTYPE html>
<html class="html">
<head xmlns:tiles="http://tiles.apache.org/tags-tiles">
	<meta charset="UTF-8">
	<meta name="yandex-verification" content="14e7853c65dd22f0" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://learn-reactjs.ru/resources/imges/logo-meta.png">
	<meta property="og:image:secure_url" content="https://learn-reactjs.ru/resources/imges/logo-meta.png">
	<meta property="og:image:width" content="600">
	<meta property="og:image:height" content="350">
	<meta property="fb:app_id" content="623268441017527">

	<tiles:insertAttribute name="head"/>

	<link rel="shortcut icon" href="<c:url value="/resources/imges/logo.ico"/>">

	<jsp:include page="../google/adsense.jsp"/>
	<jsp:include page="../google/analytic.jsp"/>

	<jsp:include page="../yandex/metrika-counter.jsp"/>

	<u:resource type="link" root="/resources/css/plugins" names="bootstrap.min.css, sidebar.min.css"/>
	<u:resource type="link" root="/resources/css/custom" names="main.min.10.10.19.css, overrides.min.28.01.19.css"/>
	<u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js, run_prettify.js, tether.min.js, bootstrap.min.js, sidebar.min.js"/>
	<u:resource type="script" root="/resources/js/app/components" names="MenuSidebar.min.js"/>
	<u:resource type="link" root="/resources/css/plugins" names="tomorrow-night-eighties.min.css"/>
	<tiles:insertAttribute name="resources"/>
</head>
<body class="<tiles:insertAttribute name='bodyClass'/>">
<tiles:insertAttribute name="body"/>

<jsp:include page="../discuss/count.jsp"/>
</body>
</html>