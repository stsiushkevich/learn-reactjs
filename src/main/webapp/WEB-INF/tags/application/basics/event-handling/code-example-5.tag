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
  class Conditioner extends React.Component {
    constructor(props) {
      super(props);
      this.state = {temperature: 0};

      // Привязка необходима, чтобы сделать this доступным в коллбэке
      this.onIncrease = this.onIncrease.bind(this);
      this.onDecrease = this.onDecrease.bind(this);
    }

    onIncrease(){
      this.setState(prevState =&gt; ({
        temperature: prevState.temperature + 1
      }))
    }

    onDecrease(){
      this.setState(prevState =&gt; ({
        temperature: prevState.temperature - 1
      }))
    }

    render() {
      return (&lt;p&gt;
          &lt;h2&gt;Текущая температура: {this.state.temperature}&lt;/h2&gt;
          &lt;button onClick={this.onDecrease}&gt;-&lt;/button&gt;
          &lt;button onClick={this.onIncrease}&gt;+&lt;/button&gt;
        &lt;/p&gt;);
    }
  }</code>
    </pre>
</cd:code-example>