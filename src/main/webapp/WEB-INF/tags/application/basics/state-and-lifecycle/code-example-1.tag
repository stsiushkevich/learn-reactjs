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

        function increment() {
          total++;
          const element = (
            &lt;div&gt;
              &lt;p&gt;Таймер:&lt;/p&gt;
              &lt;p&gt;
                &lt;span&gt;{`${Math.round(total/INTERVAL/60/60)}`} : &lt;/span&gt;
                &lt;span&gt;{`${Math.round(total/INTERVAL/60)}`} : &lt;/span&gt;
                &lt;span&gt;{`${Math.round(total/INTERVAL)}`} . &lt;/span&gt;
                &lt;span&gt;{`${total % INTERVAL}`}&lt;/span&gt;
              &lt;/p&gt;
            &lt;/div&gt;
          );
          <span class="hl">ReactDOM.render(element, document.getElementById('root'));</span>
        }

        setInterval(increment, 1000/INTERVAL);
        </code>
    </pre>
</app:code-example>