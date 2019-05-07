<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  // Данные с сервера могут иметь примерно следующий вид: [{id: 1, name: 'Вася'}, ...]
  const userList = users.map((user) =&gt;
    &lt;li key={<cd:hl>user.id</cd:hl>}&gt;
      {user.name}
    &lt;/li&gt;
  );</code>
    </pre>
</cd:code-example-decorator>