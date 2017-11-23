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
   // &lt;input ref={(node) => this.textInput = node} /&gt;
  const node = this.textInput;
  node.value = 'giraffe';
  ReactTestUtils.Simulate.change(node);
  ReactTestUtils.Simulate.keyDown(node, {key: "Enter", keyCode: 13, which: 13});</code>
  </pre>
</cd:code-example-decorator>