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
  { type: 'ADD_TODO', text: 'Оплатить налоги' }
  { type: 'TOGGLE_TODO', index: 1 }
  { type: 'SET_VISIBILITY_FILTER', filter: 'SHOW_ALL' }</code>
  </pre>
</cd:code-example-decorator>