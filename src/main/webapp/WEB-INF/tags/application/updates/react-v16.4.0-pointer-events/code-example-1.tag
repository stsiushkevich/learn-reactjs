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
  static getDerivedStateFromProps(props, state) {
    if (props.value !== state.controlledValue) {
      return {
        // Так как метод срабатывает при изменениях и props, и state, локальные обновления
        // в контролируемом значении будут проигнорированы, так как версия props
        // всегда переопределяет его. Упс!
        controlledValue: props.value,
      };
    }
    return null;
  }</code>
  </pre>
</cd:code-example-decorator>