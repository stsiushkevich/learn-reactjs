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
        <span class="hl">class Timer extends React.Component {</span>
          constructor(props) {
            super(props);
            <span class="hl">this.state = {value: 0};</span>
          }

          render() {
            const value = <span class="hl">this.state.value</span>
              return (&lt;div&gt;
                &lt;p&gt;Таймер:&lt;/p&gt;
                &lt;p&gt;
                  &lt;span&gt;{`${Math.round(value/INTERVAL/60/60)}`} : &lt;/span&gt;
                  &lt;span&gt;{`${Math.round(value/INTERVAL/60)}`} : &lt;/span&gt;
                  &lt;span&gt;{`${Math.round(value/INTERVAL)}`} . &lt;/span&gt;
                  &lt;span&gt;{`${value % INTERVAL}`}&lt;/span&gt;
                &lt;/p&gt;
              &lt;/div&gt;);
            }
        }
        </code>
    </pre>
</app:code-example>