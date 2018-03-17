<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    function getGreeting(user) {
      if (user) {
        return &lt;h1&gt;Hello, {formatName(user)}!&lt;/h1&gt;;
      }
      return &lt;h1&gt;Hello, Stranger.&lt;/h1&gt;;
    }
    </code>
</pre>
</cd:code-example-decorator>