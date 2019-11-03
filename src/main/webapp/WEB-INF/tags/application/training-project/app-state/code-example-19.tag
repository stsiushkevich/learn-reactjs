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
  import keyMirror from 'key-mirror'

  export const ACTION_TYPES = keyMirror({
       CLEAN_APPOINTMENT_LIST_ERROR: null,
       CLEAN_APPOINTMENT_LIST: null,
       CLEAN_APPOINTMENT_LIST_FILTER: null,
       CHANGE_APPOINTMENT_LIST_FILTER: null,
       CHANGE_APPOINTMENT_LIST_FILTER_FIELD: null,
       LOAD_APPOINTMENT_LIST_REQUEST: null,
       LOAD_APPOINTMENT_LIST_SUCCESS: null,
       LOAD_APPOINTMENT_LIST_FAILURE: null
  })</code>
  </pre>
</cd:code-example-decorator>