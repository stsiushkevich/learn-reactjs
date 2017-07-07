<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<%-- ============================
    HEADER
=============================--%>

<header class="header <tiles:insertAttribute name="headerClass"/>">
	<tiles:insertAttribute name="header"/>
</header>

<%-- ============================
    MAIN CONTENT
=============================--%>

<div class="container main">
	<div class="row">
		<div class="menu col-md-3 <tiles:insertAttribute name="menuClass"/>">
			<tiles:insertAttribute name="menu"/>
		</div>
		<div class="content col-md-8 <tiles:insertAttribute name="contentClass"/>">
			<tiles:insertAttribute name="content"/>
		</div>
	</div>
</div>


<%-- ============================
    FOOTER
=============================--%>
<footer class="footer <tiles:insertAttribute name="footerClass"/>">
	<tiles:insertAttribute name="footer"/>
</footer>