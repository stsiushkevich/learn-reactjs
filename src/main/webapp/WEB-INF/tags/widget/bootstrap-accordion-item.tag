<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="isExpanded" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="parentId" required="true" rtexprvalue="true" %>

<div class="panel panel-default ${cssClass}">
	<div class="panel-heading" role="tab" id="heading${id}">
		<h4 class="panel-title">
			<a role="button" data-toggle="collapse"
			   data-parent="#${parentId}" href="#${id}"
			   <c:if test="${isExpanded}">aria-expanded="true"</c:if>
			   aria-controls="${id}">
				${title}
			</a>
		</h4>
	</div>
	<div id="${id}" class="panel-collapse collapse <c:if test="${isExpanded}">in</c:if>" role="tabpanel" aria-labelledby="heading${id}">
		<div class="panel-body">
			<jsp:doBody/>
		</div>
	</div>
</div>
