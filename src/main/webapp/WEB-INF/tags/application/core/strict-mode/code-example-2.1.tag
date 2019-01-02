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
      this.wrapper = React.createRef();
    }
    render() {
      return &lt;div ref={this.wrapper}&gt;{this.props.children}&lt;/div&gt;;
    }
  }</code>
  </pre>
</cd:code-example-decorator>