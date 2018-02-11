<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  const Fragment = React.Fragment;
  
  &lt;Fragment&gt;
    &lt;ChildA /&gt;
    &lt;ChildB /&gt;
    &lt;ChildC /&gt;
  &lt;/Fragment&gt;
  
  // Так тоже работает
  &lt;React.Fragment&gt;
    &lt;ChildA /&gt;
    &lt;ChildB /&gt;
    &lt;ChildC /&gt;
  &lt;/React.Fragment&gt;</code>
  </pre>
</cd:code-example-decorator>