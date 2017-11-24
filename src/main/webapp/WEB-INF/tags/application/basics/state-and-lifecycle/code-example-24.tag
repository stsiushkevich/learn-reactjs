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
  function Application() {
    return (
      &lt;p&gt;
        &lt;Timer/&gt;
        &lt;Timer/&gt;
        &lt;Timer/&gt;
      &lt;/p&gt;
    );
  }

  ReactDOM.render(&lt;Application/&gt;, document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>