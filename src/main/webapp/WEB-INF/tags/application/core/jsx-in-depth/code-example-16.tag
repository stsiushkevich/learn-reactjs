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
  function SuccessMessage() {
    return &lt;Message type="success" header="Поздравляем!" text="Вы успешно зарегистрированы"/&gt;;
  }

  function SuccessMessage() {
    const props = {type: 'success', header: 'Поздравляем!', text: 'Вы успешно зарегистрированы'};
    return <cd:hl>&lt;Message {...props} /&gt;;</cd:hl>
  }</code>
  </pre>
</cd:code-example-decorator>