<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" lang="JavaScript">
    var errors = new Array();
    function getErrorMessage(err) {
        return errors[err];
    }
    <c:forEach var="err" items="${messages}">
    errors["${err.key}"] = "${err.value}";
    </c:forEach>
</script>


