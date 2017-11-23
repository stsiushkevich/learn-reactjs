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
  function Console(props) {
    const errors = props.errors;
    return (
      &lt;p&gt;
        &lt;h3&gt;Attention!&lt;/h3&gt;
        {errors.length &gt; 0 &&
          &lt;p&gt;You have &lt;b&gt;{errors.length}&lt;/b&gt; errors.&lt;/p&gt;
        }
      &lt;/p&gt;
    );
  }

  const errors = [
  'Failed to load resource: net::ERR_INSECURE_RESPONSE',
  'TypeError: e is undefined',
  'Uncaught ReferenceError: calculate is not defined'
  ];
  ReactDOM.render(&lt;Console errors={errors} /&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>