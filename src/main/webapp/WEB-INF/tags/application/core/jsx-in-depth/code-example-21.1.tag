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
    // Больше нет необходимости оборачивать список элементов в дополнительный элемент!
    return [
      // Не забывайте про ключи "key" :)
      &lt;li key="A"&gt;Первый элемент&lt;/li&gt;,
      &lt;li key="B"&gt;Второй элемент&lt;/li&gt;,
      &lt;li key="C"&gt;Третий элемент&lt;/li&gt;,
    ];
  }</code>
  </pre>
</cd:code-example-decorator>