<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<div class="main full-height flex flex-direction_column">
	<%-- ============================
			HEADER
	=============================--%>

	<header class="header <tiles:insertAttribute name="headerClass"/>">
		<tiles:insertAttribute name="header"/>
	</header>

	<%-- ============================
			MAIN CONTENT
	=============================--%>

	<div class="content container flex-1<tiles:insertAttribute name="contentClass"/>">
		<tiles:insertAttribute name="content"/>
	</div>

	<%-- ============================
			FOOTER
	=============================--%>
	<footer class="footer <tiles:insertAttribute name="footerClass"/>">
		<tiles:insertAttribute name="footer"/>
	</footer>
</div>