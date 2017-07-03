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
  &lt;div&gt;
    Список:
    &lt;ol&gt;
      &lt;li&gt;Элемент 1&lt;/li&gt;
      &lt;li&gt;Элемент 2&lt;/li&gt;
      &lt;li&gt;Элемент 3&lt;/li&gt;
    &lt;/ol&gt;
  &lt;/div&gt;</code>
  </pre>
</cd:code-example>