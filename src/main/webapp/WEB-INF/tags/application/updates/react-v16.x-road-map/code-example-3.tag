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
  // Два способа включения:

  // 1. Часть приложения (не окончательный API)
  &lt;React.unstable_ConcurrentMode&gt;
    &lt;Something /&gt;
  &lt;/React.unstable_ConcurrentMode&gt;

  // 2. Всё приложение (не окончательный API)
  ReactDOM.unstable_createRoot(domNode).render(&lt;App /&gt;);</code>
  </pre>
</cd:code-example-decorator>