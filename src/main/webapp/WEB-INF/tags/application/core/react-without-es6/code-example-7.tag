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
  class Trigger extends React.Component {
    constructor(props) {
      super(props);
      this.state = {isOn: false};
      // Данная строка важна!
      this.onTrigger = this.onTrigger.bind(this);
    }

    onTrigger() {
      this.setState({isOn: !this.state.isOn});
    }

    render() {
      // Так как `this.onTrigger` привязан, мы можем использовать его как обработчик события
      return (
        &lt;button onClick={this.onTrigger}&gt;this.state.isOn ? 'On' : 'Off'&lt;/button&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>