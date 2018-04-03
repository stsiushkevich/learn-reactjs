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
  const INTERVAL = 100;
  let total = 0;

  function increment() {
    total++;
    const element = (
      &lt;div&gt;
        &lt;p&gt;Таймер:&lt;/p&gt;
        &lt;p&gt;
        &lt;span&gt;{Math.round(total/INTERVAL/60/60)} : &lt;/span&gt;
        &lt;span&gt;{Math.round(total/INTERVAL/60)} : &lt;/span&gt;
        &lt;span&gt;{Math.round(total/INTERVAL)} . &lt;/span&gt;
        &lt;span&gt;{total % INTERVAL}&lt;/span&gt;
        &lt;/p&gt;
      &lt;/div&gt;
    );
    <cd:hl>ReactDOM.render(element, document.getElementById('root'));</cd:hl>
  }

  setInterval(increment, 1000/INTERVAL);</code>
  </pre>
</cd:code-example-decorator>