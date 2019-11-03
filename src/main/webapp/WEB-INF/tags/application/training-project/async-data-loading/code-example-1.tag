<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="title" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator title="${title}" codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  https:/health-imperium/appointmens?page=0&pageSize=10&onlyMe=true&startDate=1560256200000</code>
  </pre>
</cd:code-example-decorator>