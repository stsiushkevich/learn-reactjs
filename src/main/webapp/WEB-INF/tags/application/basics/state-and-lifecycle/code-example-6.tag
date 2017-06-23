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
  <cd:hl>class Timer extends React.Component {</cd:hl>
    constructor(props) {
      super(props);
      <cd:hl>this.state = {value: 0};</cd:hl>
    }

    render() {
      const value = <cd:hl>this.state.value</cd:hl>
        return (&lt;div&gt;
          &lt;p&gt;Таймер:&lt;/p&gt;
          &lt;p&gt;
            &lt;span&gt;{`\${Math.round(value/INTERVAL/60/60)}`} : &lt;/span&gt;
            &lt;span&gt;{`\${Math.round(value/INTERVAL/60)}`} : &lt;/span&gt;
            &lt;span&gt;{`\${Math.round(value/INTERVAL)}`} . &lt;/span&gt;
            &lt;span&gt;{`\${value % INTERVAL}`}&lt;/span&gt;
          &lt;/p&gt;
        &lt;/div&gt;);
      }
  }</code>
    </pre>
</cd:code-example>