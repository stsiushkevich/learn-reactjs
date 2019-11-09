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
  let filtered = filter(data, o => {
      return (startDate ? o.date >= startDate : true) &&
      (endDate ? o.date <= endDate : true) &&
      (clientName ? (clientName.length > 2 ? o.clientName.includes(clientName) : true) : true) &&
      (onlyMe ? o.holderName === USER : true)
  })</code>
  </pre>
</cd:code-example-decorator>