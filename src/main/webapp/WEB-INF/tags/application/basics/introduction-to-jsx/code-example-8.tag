<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<pre class="prettyprint">
    <code class="language-javascript">
    const title = response.potentiallyMaliciousInput;
    // Это безопасно:
    const element = &lt;h1&gt;{title}&lt;/h1&gt;;
    </code>
</pre>