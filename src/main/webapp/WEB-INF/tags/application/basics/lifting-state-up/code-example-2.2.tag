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
  class SpeedRadar extends React.Component {
    render() {
      const speed = this.state.speed;
      return (
      &lt;div>
        &lt;SpeedSetter unit='KPH'/>
        &lt;SpeedSetter unit='MPH'/>
      &lt;/div>
      );
    }
  }</code>
    </pre>
</cd:code-example-decorator>