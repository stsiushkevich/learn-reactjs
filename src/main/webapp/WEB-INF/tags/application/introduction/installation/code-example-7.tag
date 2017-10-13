<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example>
    <pre class="prettyprint">
        <code class="language-javascript">
    &lt;script <cd:hl>crossorigin</cd:hl> src="..."&gt;&lt;/script&gt;
        </code>
</pre>
</cd:code-example>