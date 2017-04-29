<%@ tag pageEncoding="UTF-8" %>

<%@taglib prefix="wgForm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="id" rtexprvalue="true" required="false" %>
<%@ attribute name="modelName" rtexprvalue="true" required="true" %>
<%@ attribute name="fileFiledName" rtexprvalue="true" required="true" %>
<%@ attribute name="parentFiledName" rtexprvalue="true" required="false" %>

<style>
    .glyphicon-refresh-animate {
        -animation: spin .7s infinite linear;
        -webkit-animation: spin2 .7s infinite linear;
    }

    @-webkit-keyframes spin2 {
        from { -webkit-transform: rotate(0deg);}
        to { -webkit-transform: rotate(360deg);}
    }

    @keyframes spin {
        from { transform: scale(1) rotate(0deg);}
        to { transform: scale(1) rotate(360deg);}
    }

    .uploadingFile {
        display: none;
    }

</style>

<label id="${id}" class="uploadBtn btn btn-primary docSearchBtn">
    <wgForm:form commandName="${modelName}" enctype="multipart/form-data" method="post">
        <input type="file" name="${fileFiledName}" id="${fileFiledName}" value="Add File">
        <c:if test="${not empty parentFiledName}">
            <input type="hidden" name="${parentFiledName}" id="${parentFiledName}">
        </c:if>
    </wgForm:form>
    <div class="addFile">
        <span>Add File</span>
    </div>
    <div class="uploadingFile">
        <span class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></span>
        <span>Loading...</span>
    </div>
</label>