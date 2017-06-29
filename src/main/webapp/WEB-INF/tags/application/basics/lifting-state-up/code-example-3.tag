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
  class SpeedSetter extends React.Component {
    constructor(props) {
      super(props);
      this.onSpeedChange = this.onSpeedChange.bind(this);
      <cd:hl>this.state = {speed: null};</cd:hl>
    }

    onSpeedChange(e) {
      <cd:hl>this.setState({speed: e.target.value});</cd:hl>
    }

    render() {
      <cd:hl>let speed = this.state.speed;</cd:hl></code>
    </pre>
</cd:code-example>