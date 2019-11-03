<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  export const ACTION_TYPES = {
     CLEAN_APPOINTMENT_LIST_ERROR: 'CLEAN_APPOINTMENT_LIST_ERROR',
     CLEAN_APPOINTMENT_LIST: 'CLEAN_APPOINTMENT_LIST',
     CLEAN_APPOINTMENT_LIST_FILTER: 'CLEAN_APPOINTMENT_LIST_FILTER',
     CHANGE_APPOINTMENT_LIST_FILTER: 'CHANGE_APPOINTMENT_LIST_FILTER',
     CHANGE_APPOINTMENT_LIST_FILTER_FIELD: 'CHANGE_APPOINTMENT_LIST_FILTER_FIELD',
     LOAD_APPOINTMENT_LIST_REQUEST: 'LOAD_APPOINTMENT_LIST_REQUEST',
     LOAD_APPOINTMENT_LIST_SUCCESS: 'LOAD_APPOINTMENT_LIST_SUCCESS',
     LOAD_APPOINTMENT_LIST_FAILURE: 'LOAD_APPOINTMENT_LIST_FAILURE'
  }</code>
  </pre>
</cd:code-example-decorator>