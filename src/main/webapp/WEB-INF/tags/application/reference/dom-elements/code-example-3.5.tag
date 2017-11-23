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
  // This:
  &lt;div style={{ height: 10 }}&gt;
    Hello World!
  &lt;/div&gt;;

  // Becomes:
  &lt;div style="height: 10px;"&gt;
    Hello World!
  &lt;/div&gt;</code>
  </pre>
</cd:code-example-decorator>