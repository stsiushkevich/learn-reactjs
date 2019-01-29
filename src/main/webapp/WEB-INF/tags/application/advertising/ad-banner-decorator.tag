<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="width" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="height" required="false" rtexprvalue="true" type="java.lang.String" %>

<br/>
<div style="width:${width};height:${height}" class="ad-banner ${cssClass}">
	<jsp:doBody/>
</div>
<br/>