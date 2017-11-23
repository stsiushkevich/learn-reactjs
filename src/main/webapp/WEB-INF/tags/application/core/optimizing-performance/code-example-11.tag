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
  class MyCounter extends React.Component {
    constructor(props) {
      super(props);
      this.state = {value: 0};
    }

    shouldComponentUpdate(nextProps, nextState) {
      if (this.props.style !== nextProps.style) return true;
      if (this.state.value !== nextState.value) return true;
      return false;
    }

    render() {
      return (
        &lt;button style={this.props.style}
          onClick={() =&gt; this.setState(state =&gt; ({value: state.value + 1}))}&gt;
          Число: {this.state.value}
        &lt;/button&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>