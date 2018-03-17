<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    const element = (
        &lt;div&gt;
            &lt;h1>Hello!&lt;/h1&gt;
            &lt;h2>Good to see you here.&lt;/h2&gt;
        &lt;/div&gt;
    );
    </code>
</pre>
</cd:code-example-decorator>