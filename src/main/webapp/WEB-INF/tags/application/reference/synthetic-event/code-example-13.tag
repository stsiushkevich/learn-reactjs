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
  boolean altKey
  number button
  number buttons
  number clientX
  number clientY
  boolean ctrlKey
  boolean getModifierState(key)
  boolean metaKey
  number pageX
  number pageY
  DOMEventTarget relatedTarget
  number screenX
  number screenY
  boolean shiftKey</code>
  </pre>
</cd:code-example-decorator>