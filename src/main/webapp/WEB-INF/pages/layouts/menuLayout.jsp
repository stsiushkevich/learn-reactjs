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

  <u:resource type="link" root="/resources/images" names="bootstrap.min.css"/>
  <u:resource type="script" root="/resources/js/plugins" names="html5.js, jquery.min.js, bootstrap.min.js"/>
  <tiles:insertAttribute name="resources" />
</head>
<body>
<%-- ============================
    HEADER
=============================--%>

<header class="header">
  <div class="container">
    <tiles:insertAttribute name="header" />
  </div>
  <div style="clear: both;"></div>
</header>

<%-- ============================
    MAIN CONTENT
=============================--%>

<div class="container main">
  <div class="menu">
    <tiles:insertAttribute name="menu" />
  </div>
  <div class="content">
    <tiles:insertAttribute name="body" />
  </div>
</div>


<%-- ============================
    FOOTER
=============================--%>
<footer class="footer">
  <div class="container">
    <tiles:insertAttribute name="footer" />
  </div>
  <div style="clear: both;"></div>
</footer>
</body>
</html>