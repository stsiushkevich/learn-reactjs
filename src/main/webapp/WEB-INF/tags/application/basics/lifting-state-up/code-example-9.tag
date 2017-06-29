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
    constructor(props){
      super(props);
      this.onSpeedInKphChange = this.onSpeedInKphChange.bind(this);
      this.onSpeedInMphChange = this.onSpeedInMphChange.bind(this);
      <cd:hl>this.state = {speed: 0, unit: 'KPH'};</cd:hl>
    }

    MAX_SPEED_IN_CITY_IN_KPH = 60;

    onSpeedInKphChange(speed) {
      <cd:hl>this.setState({unit: 'KPH', speed});</cd:hl>
    }

    onSpeedInMphChange(speed) {
      <cd:hl>this.setState({unit: 'MPH', speed});</cd:hl>
    }

    render() {
      <cd:hl>const unit = this.state.unit;</cd:hl>
      <cd:hl>const speed = this.state.speed;</cd:hl>
      <cd:hl>const kph = unit === 'MPH' ? сonvertSpeed(speed, convertToKph) : speed;</cd:hl>
      <cd:hl>const mph = unit === 'KPH' ? сonvertSpeed(speed, convertToMph) : speed;</cd:hl>

      return (
        &lt;div&gt;
          &lt;SpeedSetter unit="KPH" <cd:hl>speed={kph}</cd:hl> <cd:hl>onSpeedChange={this.onSpeedInKphChange}</cd:hl>/&gt;
          &lt;SpeedSetter unit="MPH" <cd:hl>speed={mph}</cd:hl> <cd:hl>onSpeedChange={this.onSpeedInMphChange}</cd:hl>/&gt;
          &lt;SpeedDetector <cd:hl>speed={kph}</cd:hl> unit="KPH" maxSpeed={this.MAX_SPEED_IN_CITY_IN_KPH}/&gt;
        &lt;/div&gt;
      );
    }
  }</code>
    </pre>
</cd:code-example>