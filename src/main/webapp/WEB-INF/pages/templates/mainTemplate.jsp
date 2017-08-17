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
	<meta property="og:title" content="Изучение React JS">
	<meta property="og:type" content="website">
	<meta property="og:url" content="https://www.learn-reactjs.ru">
	<meta property="og:image" content="<c:url value="/resources/imges/logo.ico"/>">
	<meta property="og:description" content="Информационный сайт, посвященный изучению React JS">
	<meta property="fb:app_id" content="623268441017527">

	<link rel="shortcut icon" href="<c:url value="/resources/imges/logo.ico"/>">

	<title>Изучение React JS</title>

	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<script>
		(adsbygoogle = window.adsbygoogle || []).push({
			google_ad_client: "ca-pub-8338150978310358",
			enable_page_level_ads: true
		});
	</script>

	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
							(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
						m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-104763004-1', 'auto');
		ga('send', 'pageview');

	</script>

	<u:resource type="link" root="/resources/css/plugins"
	            names="bootstrap.min.css, atelier-dune-light.min.css"/>
	<u:resource type="link" root="/resources/css/custom" names="main.css, overrides.css"/>
	<u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js, run_prettify.js, tether.min.js, bootstrap.min.js"/>
	<tiles:insertAttribute name="resources"/>
</head>
<body class="<tiles:insertAttribute name='bodyClass'/>">
<tiles:insertAttribute name="body"/>
</body>
</html>