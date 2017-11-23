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
  &lt;ul&gt;
    &lt;li key="1"&gt;Один&lt;/li&gt;
    &lt;li key="2"&gt;Два&lt;/li&gt;
  &lt;/ul&gt;

  &lt;ul&gt;
    &lt;li key="0"&gt;Ноль&lt;/li&gt;
    &lt;li key="1"&gt;Один&lt;/li&gt;
    &lt;li key="2"&gt;Два&lt;/li&gt;
  &lt;/ul&gt;</code>
  </pre>
</cd:code-example-decorator>