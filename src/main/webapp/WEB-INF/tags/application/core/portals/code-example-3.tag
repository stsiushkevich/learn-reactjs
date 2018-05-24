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
    // React не создаёт новый div. Он отрисовывает потомок в `domNode`.
    // `domNode` - это всегда валидный DOM-узел, независимо от его места в DOM.
    return ReactDOM.createPortal(
      this.props.children,
      domNode,
    );
  }</code>
  </pre>
</cd:code-example-decorator>