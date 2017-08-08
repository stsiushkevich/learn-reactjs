<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@attribute name="id" required="true" rtexprvalue="true"%>
<%@attribute name="data" required="true" rtexprvalue="true"%>

<input type="hidden" id="${id}" value="${data}"/>