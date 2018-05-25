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
  &lt;script crossorigin src="https://unpkg.com/react@16/umd/react.production.min.js"&gt;&lt;/script&gt;
  &lt;script crossorigin src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"&gt;&lt;/script&gt;</code>
  </pre>
</cd:code-example-decorator>