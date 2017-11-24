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
  render() {
    // Теперь не нужно оборачивать список элементов в дополнительный элемент!
    return [
      // Не забывайте про ключи :)
      &lt;li key="A"&gt;First item&lt;/li&gt;,
      &lt;li key="B"&gt;Second item&lt;/li&gt;,
      &lt;li key="C"&gt;Third item&lt;/li&gt;,
    ];
  }</code>
  </pre>
</cd:code-example-decorator>