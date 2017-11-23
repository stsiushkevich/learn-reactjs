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
  const PropTypes = require('prop-types');

  class CancelButton extends React.Component {
    render() {
      style = {background: <cd:hl>this.context.color</cd:hl>};
      return (
        &lt;button style={style}&gt;{this.props.children}&lt;/button&gt;
      );
    }
  }

  <cd:hl>CancelButton.contextTypes = {</cd:hl>
    <cd:hl>color: PropTypes.string</cd:hl>
  <cd:hl>};</cd:hl>

  class Alert extends React.Component {
    render() {
      return (
        &lt;div&gt;
          &lt;p&gt;{this.props.text}&lt;/p&gt;
      &lt;div&gt;
         <cd:hl>&lt;CancelButton&gt;Cancel&lt;/CancelButton&gt;</cd:hl>
      &lt;/div&gt;
        &lt;/div&gt;
      );
    }
  }

  class AlertList extends React.Component {
    <cd:hl>getChildContext() {</cd:hl>
      <cd:hl>return {color: "gray"};</cd:hl>
    <cd:hl>}</cd:hl>

    render() {
      const color = "gray";
      const items = this.props.alerts.map((alert) =&gt;
        &lt;Alert text={alert.text} color={color} /&gt;
      );
      return &lt;p&gt;{items}&lt;/p&gt;;
    }
  }

  <cd:hl>AlertList.childContextTypes = {</cd:hl>
    <cd:hl>color: PropTypes.string</cd:hl>
  <cd:hl>};</cd:hl></code>
  </pre>
</cd:code-example-decorator>