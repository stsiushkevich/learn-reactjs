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
          &lt;Welcome name="Sara" /&gt;
          &lt;Welcome name="Cahal" /&gt;
          &lt;Welcome name="Edite" /&gt;
        &lt;/div&gt;
      );
    }

    ReactDOM.render(
      &lt;App /&gt;,
      document.getElementById('root')
    );
    </code>
</pre>