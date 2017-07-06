<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<!DOCTYPE html>
<html class="html">
<head xmlns:tiles="http://tiles.apache.org/tags-tiles">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta property="og:title" content="Изучение React JS">
	<meta property="og:type" content="website">
	<meta property="og:url" content="https://learn.react-js.ru">
	<meta property="og:image" content="https://facebook.github.io/react/img/logo_og.png">
	<meta property="og:description" content="Информационный сайт, посвященный изучению React JS">
	<meta property="fb:app_id" content="623268441017527">

	<link rel="shortcut icon" href="<c:url value="/resources/imges/logo.ico"/>">

	<title>Изучение React JS</title>

	<u:resource type="link" root="/resources/css/plugins"
	            names="bootstrap-theme.min.css, bootstrap.min.css, atelier-dune-light.min.css"/>
	<u:resource type="link" root="/resources/css/custom" names="main.css, overrides.css"/>
	<u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js, run_prettify.js"/>
	<tiles:insertAttribute name="resources"/>
</head>
<body class="home-page">
<%-- ============================
    HEADER
=============================--%>

<header class="header">
	<tiles:insertAttribute name="header"/>
</header>

<%-- ============================
    MAIN CONTENT
=============================--%>

<div class="main">
	<tiles:insertAttribute name="body"/>
</div>


<%-- ============================
    FOOTER
=============================--%>
<footer class="footer">
	<tiles:insertAttribute name="footer"/>
</footer>
</body>
</html>