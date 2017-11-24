<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  class SpeedSetter extends React.Component {
    constructor(props) {
      super(props);
      this.onChange = this.onChange.bind(this);
    }

    onChange(e) {
      <cd:hl>this.props.onSpeedChange(e.target.value);</cd:hl>
    }

    render() {
      <cd:hl>const speed = this.props.speed;</cd:hl>
      const unit = this.props.unit;
      return (
        &lt;p&gt;
          &lt;span&gt;Введите скорость в "{UNIT[unit]}": &lt;/span&gt;
          &lt;input value={speed} onChange={this.onChange} /&gt;
        &lt;/p&gt;
      );
    }
  }</code>
    </pre>
</cd:code-example-decorator>