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

		<div class="body flex-1">
			<div class="full-height flex flex-direction_row justify-content_flex-end">
				<div class="advertising">
					<div class="advertising__body">
						<div class="advertising__item">
							<tiles:insertAttribute name="menuAdvertising"/>
						</div>
					</div>
				</div>
				<div class="content <tiles:insertAttribute name="contentClass"/>">
					<tiles:insertAttribute name="topContentAdvertising"/>
					<tiles:insertAttribute name="content"/>
					<tiles:insertAttribute name="bottomContentAdvertising"/>
					<tiles:insertAttribute name="discuss"/>
				</div>
				<div class="menu <tiles:insertAttribute name="menuClass"/>">
					<div class="menu__body">
						<tiles:insertAttribute name="menu"/>
					</div>
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