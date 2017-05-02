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

    <title>Learn react js</title>

    <u:resource type="link" root="/resources/css/plugins" names="bootstrap-theme.min.css, bootstrap.min.css"/>
    <u:resource type="link" root="/resources/css/custom" names="main.css, overrides.css"/>
    <u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js"/>
    <tiles:insertAttribute name="resources"/>
</head>
<body>
<%-- ============================
    HEADER
=============================--%>

<header class="header">
    <tiles:insertAttribute name="header"/>
</header>

<%-- ============================
    MAIN CONTENT
=============================--%>

<div class="container main">
    <div class="row">
        <div class="menu col-md-3">
            <tiles:insertAttribute name="menu"/>
        </div>
        <div class="content col-md-9">
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
</div>


<%-- ============================
    FOOTER
=============================--%>
<footer class="footer">
    <tiles:insertAttribute name="footer"/>
</footer>
</body>
</html>