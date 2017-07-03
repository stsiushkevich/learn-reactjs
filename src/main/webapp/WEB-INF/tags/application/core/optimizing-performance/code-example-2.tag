<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
&lt;script src="https://unpkg.com/react@15/dist/react.min.js"&gt;&lt;/script&gt;
&lt;script src="https://unpkg.com/react-dom@15/dist/react-dom.min.js"&gt;&lt;/script&gt;</code>
  </pre>
</cd:code-example>