<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>

<%@ attribute name="categoryOf" required="true" rtexprvalue="true" %>

<div id="${id}" class="category-style-picker ${cssClass}">
    <wg:style-picker>
        <jsp:doBody/>
    </wg:style-picker>
    <input id="${categoryOf}CategoryBgColorNameHolder" type="text" name="bgColorName" class="form-control categoryBgColorName"/>
</div>