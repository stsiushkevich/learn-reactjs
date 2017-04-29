<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="chooseTargetName" required="true" rtexprvalue="true"%>

<div class="grid-chose-rows-viewer ${cssClass}" id="${id}" name="${name}">
    <label class="choose-target-name">${chooseTargetName}</label>
    <div class="chose-rows-pnl"></div>
</div>
