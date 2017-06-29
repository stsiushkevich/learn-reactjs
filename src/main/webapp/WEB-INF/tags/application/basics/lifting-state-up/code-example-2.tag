<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  class SpeedRadar extends React.Component {
    MAX_SPEED_COUNTRY = 60;

    constructor(props) {
      super(props);
      this.onSpeedChange = this.onSpeedChange.bind(this);
      this.state = {speed: null};
    }

    onSpeedChange(e) {
      this.setState({speed: e.target.value});
    }

    render() {
      const speed = this.state.speed;
      return (
      &lt;div&gt;
        &lt;div&gt;Введите скорость в км/ч:&lt;/div&gt;
        &lt;input value={speed} onChange={this.onSpeedChange.bind(this)}/&gt;
        &lt;SpeedDetector speed={parseFloat(speed)} maxSpeed={this.MAX_SPEED_COUNTRY}/&gt;
      &lt;/div&gt;
      );
    }
  }</code>
    </pre>
</cd:code-example>