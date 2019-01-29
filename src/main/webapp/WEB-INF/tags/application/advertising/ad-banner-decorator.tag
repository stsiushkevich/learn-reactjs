<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>

<br/>
<div class="ad-banner ad-content-banner ${cssClass}">
	<jsp:doBody/>
</div>
<br/>