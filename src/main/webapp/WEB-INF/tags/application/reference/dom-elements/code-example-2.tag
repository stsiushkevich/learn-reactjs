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
  const dangerStyle = {
    color: 'black',
    backgroundColor: 'red',
  };

  function AlertComponent() {
    return &lt;h1 style={dangerStyle}&gt;Важное сообщение!&lt;/h1&gt;;
  }</code>
  </pre>
</cd:code-example-decorator>