<%@ tag pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ attribute name="content" required="true" rtexprvalue="true"%>

<script type="application/javascript"><c:out value="${content}" escapeXml="false" default=""/></script>