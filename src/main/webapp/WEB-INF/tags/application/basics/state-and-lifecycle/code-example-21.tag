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
  &lt;p&gt;
    &lt;span&gt;{Math.round(value/INTERVAL/60/60)} : &lt;/span&gt;
    &lt;span&gt;{Math.round(value/INTERVAL/60)} : &lt;/span&gt;
    &lt;span&gt;{Math.round(value/INTERVAL)} . &lt;/span&gt;
    &lt;span&gt;{value % INTERVAL}&lt;/span&gt;
  &lt;/p&gt;</code>
    </pre>
</cd:code-example>