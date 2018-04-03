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
  const INTERVAL = 100;
  let total = 0;

  function Timer(props) {
    const value = props.value;
    return (
      &lt;div&gt;
        &lt;p&gt;Таймер:&lt;/p&gt;
        &lt;p&gt;
          &lt;span&gt;{Math.round(value/INTERVAL/60/60)} : &lt;/span&gt;
          &lt;span&gt;{Math.round(value/INTERVAL/60)} : &lt;/span&gt;
          &lt;span&gt;{Math.round(value/INTERVAL)} . &lt;/span&gt;
          &lt;span&gt;{value % INTERVAL}&lt;/span&gt;
        &lt;/p&gt;
      &lt;/div&gt;
    );
  }

  function increment() {
    total++;
    ReactDOM.render(<cd:hl>&lt;Timer value={total}/&gt;</cd:hl>, document.getElementById('root'));
  }
  setInterval(increment, 1000/INTERVAL);</code>
    </pre>
</cd:code-example-decorator>