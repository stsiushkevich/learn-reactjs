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
  function BrickMenu() {
    return (
    &lt;brick-menu class="menu"&gt;
      &lt;brick-item selected&gt;Item 1&lt;/brick-item&gt;
      &lt;brick-item&gt;Item 2&lt;/brick-item&gt;
      &lt;brick-item&gt;Item 3&lt;/brick-item&gt;
      &lt;brick-item&gt;Item 4&lt;/brick-item&gt;
    &lt;/brick-menu&gt;
    );
  }</code>
  </pre>
</cd:code-example>