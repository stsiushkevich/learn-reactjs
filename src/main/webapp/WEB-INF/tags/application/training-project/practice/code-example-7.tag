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
  export function login ({ username, password }) {
      const user = // найти пользователя
      
      if (user) {
          return getSuccessResponse(user, { success: true })
      }
      
      return getFailureResponse(
          'bad.credentials',
          'Пользователя с такими данными не найдено'
      )
  }</code>
  </pre>
</cd:code-example-decorator>