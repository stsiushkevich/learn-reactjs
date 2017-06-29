<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    function Welcome(props) {
      return &lt;h1&gt;Hello, {props.name}&lt;/h1&gt;;
    }

    function App() {
      return (
        &lt;div&gt;
          <span class="highlighted">&lt;Welcome name="Sara" /&gt;</span>
          <span class="highlighted">&lt;Welcome name="Cahal" /&gt;</span>
          <span class="highlighted">&lt;Welcome name="Edite" /&gt;</span>
        &lt;/div&gt;
      );
    }

    ReactDOM.render(
      &lt;App /&gt;,
      document.getElementById('root')
    );
    </code>
</pre>