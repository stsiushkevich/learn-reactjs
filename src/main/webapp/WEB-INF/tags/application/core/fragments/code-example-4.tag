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
  &lt;table&gt;
    &lt;tr&gt;
      &lt;div&gt;
        &lt;td&gt;Hello&lt;/td&gt;
        &lt;td&gt;World&lt;/td&gt;
      &lt;/div&gt;
    &lt;/tr&gt;
  &lt;/table&gt;
  </code>
  </pre>
</cd:code-example-decorator>