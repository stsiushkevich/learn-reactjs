<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<div class="main">
	<%-- ============================
			HEADER
	=============================--%>

	<header class="header <tiles:insertAttribute name="headerClass"/>">
		<tiles:insertAttribute name="header"/>
	</header>

	<%-- ============================
			MAIN CONTENT
	=============================--%>

	<div class="container">
		<div class="row">
			<div class="menu col-md-3 <tiles:insertAttribute name="menuClass"/>">
				<tiles:insertAttribute name="menu"/>
				<tiles:insertAttribute name="menuAdvertising"/>
			</div>
			<div class="content col-md-8 <tiles:insertAttribute name="contentClass"/>">
				<tiles:insertAttribute name="topContentAdvertising"/>
				<tiles:insertAttribute name="content"/>
				<tiles:insertAttribute name="bottomContentAdvertising"/>
				<tiles:insertAttribute name="discuss"/>
			</div>
		</div>
	</div>


	<%-- ============================
			FOOTER
	=============================--%>
	<footer class="footer <tiles:insertAttribute name="footerClass"/>">
		<div class="footer__content">
			<tiles:insertAttribute name="footer"/>
		</div>
	</footer>
</div>