<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    &lt;li>Петя: выполнил 9 задач&lt;/li>
    &lt;li>Лёня: выполнил 8 задач&lt;/li>
    &lt;li>Вася: выполнил 5 задач&lt;/li>
    </code>
</pre>
</cd:code-example-decorator>