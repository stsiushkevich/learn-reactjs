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
  
      this.inputRef = React.createRef();
    }
  
    render() {
      return &lt;input type="text" ref={this.inputRef} /&gt;;
    }
  
    componentDidMount() {
      this.inputRef.current.focus();
    }
  }</code>
  </pre>
</cd:code-example-decorator>