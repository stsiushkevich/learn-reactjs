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
  render() {
    // React не создает новый div. Он отрисовывает потомок внутри `domNode`.
    // `domNode` - какой-нибудь валидный DOM узел, независимо от его местоположения в дереве DOM.
    return ReactDOM.createPortal(
      this.props.children,
      domNode,
    );
  }</code>
  </pre>
</cd:code-example>