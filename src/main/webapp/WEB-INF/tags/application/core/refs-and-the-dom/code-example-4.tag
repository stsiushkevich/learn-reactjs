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
  class AutoFocusTextInput extends React.Component {
    constructor(props) {
      super(props);
      <cd:hl>this.textInput = React.createRef();</cd:hl>
    }
  
    componentDidMount() {
      <cd:hl>this.textInput.current.focusTextInput();</cd:hl>
    }
  
    render() {
      return (
        <cd:hl>&lt;CustomTextInput ref={this.textInput} /&gt;</cd:hl>
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>