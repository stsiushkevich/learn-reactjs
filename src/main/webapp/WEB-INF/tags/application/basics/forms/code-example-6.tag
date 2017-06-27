<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  &lt;select&gt;
    &lt;option value="C++"&gt;C++&lt;/option&gt;
    &lt;option value="Java"&gt;Java&lt;/option&gt;
    &lt;option value="C#"&gt;C#&lt;/option&gt;
    &lt;option selected value="JavaScript"&gt;JavaScript&lt;/option&gt;
    &lt;option value="Scala"&gt;Scala&lt;/option&gt;
  &lt;/select&gt;</code>
    </pre>
</cd:code-example>