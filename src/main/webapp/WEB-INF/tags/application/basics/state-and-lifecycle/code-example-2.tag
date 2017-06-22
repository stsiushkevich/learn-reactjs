<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<app:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
        const INTERVAL = 90;
        let total = 0;

        function Timer(props) {
          const value = props.value;
          return (&lt;div&gt;
              &lt;p&gt;Таймер:&lt;/p&gt;
              &lt;p&gt;
                &lt;span&gt;{`${Math.round(value/INTERVAL/60/60)}`} : &lt;/span&gt;
                &lt;span&gt;{`${Math.round(value/INTERVAL/60)}`} : &lt;/span&gt;
                &lt;span&gt;{`${Math.round(value/INTERVAL)}`} . &lt;/span&gt;
                &lt;span&gt;{`${value % INTERVAL}`}&lt;/span&gt;
              &lt;/p&gt;      &lt;/div&gt;);
        }

        function increment() {
          total++;
          ReactDOM.render(<span class="hl">&lt;Timer value={total}/&gt;</span>, document.getElementById('root'));
        }
        setInterval(increment, 1000/INTERVAL);
        </code>
    </pre>
</app:code-example>