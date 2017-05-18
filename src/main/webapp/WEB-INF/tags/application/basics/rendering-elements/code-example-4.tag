<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function tick() {
      const element = (
        &lt;div&gt;
          &lt;h1&gt;Hello, world!&lt;/h1&gt;
          &lt;h2&gt;It is {new Date().toLocaleTimeString()}.&lt;/h2&gt;
        &lt;/div&gt;
      );
      ReactDOM.render(
        element,
        document.getElementById('root')
      );
    }

    setInterval(tick, 1000);
    </code>
</pre>