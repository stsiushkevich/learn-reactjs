<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>
<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
<pre class="prettyprint">
    <code class="language-javascript">
    function Welcome(props) {
      return &lt;h1&gt;Hello, {props.name}&lt;/h1&gt;;
    }

    function App() {
      return (
        &lt;div&gt;
          <cd:hl>&lt;Welcome name="Sara" /&gt;</cd:hl>
          <cd:hl>&lt;Welcome name="Cahal" /&gt;</cd:hl>
          <cd:hl>&lt;Welcome name="Edite" /&gt;</cd:hl>
        &lt;/div&gt;
      );
    }

    ReactDOM.render(
      &lt;App /&gt;,
      document.getElementById('root')
    );
    </code>
</pre>
</cd:code-example-decorator>