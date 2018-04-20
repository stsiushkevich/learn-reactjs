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
  class MyComponent extends React.Component {
    constructor(props) {
      super(props);
      <cd:hl>this.myRef = React.createRef();</cd:hl>
    }
    render() {
      <cd:hl>return &lt;div ref={this.myRef} /&gt;;</cd:hl>
    }
  }</code>
  </pre>
</cd:code-example-decorator>