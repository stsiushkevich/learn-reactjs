<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    <span class="highlighted">function Welcome(props) {</span>
      return &lt;h1&gt;Hello, {props.name}&lt;/h1&gt;;
    }

    <span class="highlighted">const element = &lt;Welcome name="Sara" /&gt;;</span>
    ReactDOM.render(
      element,
      document.getElementById('root')
    );
    </code>
</pre>