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
    const element = &lt;h1&gt;Hello, world!&lt;/h1&gt;;
    ReactDOM.render(
      element,
      document.getElementById('root')
    );
    </code>
</pre>
</cd:code-example-decorator>
