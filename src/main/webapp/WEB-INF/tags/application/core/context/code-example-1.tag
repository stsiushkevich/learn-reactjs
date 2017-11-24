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
  class CancelButton extends React.Component {
    render() {
      style = {background: this.props.color};
      return (
        &lt;button style={style}&gt;{this.props.children}&lt;/button&gt;
      );
    }
  }

  class Alert extends React.Component {
    render() {
      return (
        &lt;div&gt;
          &lt;p&gt;{this.props.text}&lt;/p&gt;
    &lt;div&gt;
            &lt;CancelButton color={this.props.color}&gt;Cancel&lt;/CancelButton&gt;
    &lt;/div&gt;
        &lt;/div&gt;
      );
    }
  }

  class AlertList extends React.Component {
    render() {
      const color = "gray";
      const items = this.props.alerts.map((alert) =&gt;
        &lt;Alert text={alert.text} color={color} /&gt;
      );
      return &lt;p&gt;{items}&lt;/p&gt;;
    }
  }</code>
  </pre>
</cd:code-example-decorator>