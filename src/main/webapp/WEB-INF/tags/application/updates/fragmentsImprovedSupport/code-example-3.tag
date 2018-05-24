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
    return (
      // Дополнительный элемент div :(
      &lt;div&gt;
        Какой-то текст.
        &lt;h2&gt;Первый заголовок &lt;/h2&gt;
        Еще текст.
        &lt;h2&gt;Второй заголовок &lt;/h2&gt;
        Еще больше текста.
      &lt;/div&gt;
    );
  }</code>
  </pre>
</cd:code-example-decorator>