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
  // максимальная разрешённая скорость в населённом пункте
  const MAX_SPEED_IN_CITY = 60
  
  class SpeedRadar extends React.Component {
    constructor(props) {
      super(props);
      this.onChangeSpeed = this.onChangeSpeed.bind(this);
      this.state = {speed: null};
    }

    onChangeSpeed(e) {
      this.setState({speed: e.target.value});
    }

    render() {
      const speed = this.state.speed;
      return (
      &lt;div&gt;
        &lt;div&gt;Введите скорость в км/ч:&lt;/div&gt;
        &lt;input value={speed} onChange={this.onChangeSpeed.bind(this)}/&gt;
        &lt;SpeedDetector speed={parseFloat(speed)} maxSpeed={MAX_SPEED_IN_CITY}/&gt;
      &lt;/div&gt;
      );
    }
  }</code>
    </pre>
</cd:code-example-decorator>