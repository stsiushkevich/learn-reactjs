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
  class EmailInput extends Component {
    state = { email: this.props.email };

    render() {
      return &lt;input onChange={this.handleChange} value={this.state.email} /&gt;;
    }

    handleChange = event =&gt; {
      this.setState({ email: event.target.value });
    };

    componentWillReceiveProps(nextProps) {
      // Это затрёт любое локальное обновление состояния!
      // Не делайте этого!
      this.setState({ email: nextProps.email });
    }
  }</code>
  </pre>
</cd:code-example-decorator>