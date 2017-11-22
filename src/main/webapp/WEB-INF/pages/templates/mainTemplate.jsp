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
	<meta property="og:image" content="<c:url value="/resources/imges/logo.ico"/>">
	<meta property="fb:app_id" content="623268441017527">

	<tiles:insertAttribute name="head"/>

	<link rel="shortcut icon" href="<c:url value="/resources/imges/logo.ico"/>">

	<jsp:include page="../google/adsense.jsp"/>
	<jsp:include page="../google/analytic.jsp"/>

	<u:resource type="link" root="/resources/css/plugins" names="bootstrap.min.css"/>
	<u:resource type="link" root="/resources/css/custom" names="main.min.css, overrides.min.css"/>
	<u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js, run_prettify.js, tether.min.js, bootstrap.min.js"/>
	<u:resource type="link" root="/resources/css/plugins" names="tomorrow-night-eighties.min.css"/>
	<tiles:insertAttribute name="resources"/>
</head>
<body class="<tiles:insertAttribute name='bodyClass'/>">
<tiles:insertAttribute name="body"/>

<jsp:include page="../discuss/count.jsp"/>
</body>
</html>