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
  response = {
      body: {
          success: false,
          error: {
                 code: 'custom.error.code', // кастомный текстовый код ошибки
                 message: 'Custom error message' // кастомный текст ошибки
          }
      },
      statusCode: 500, // или любой другой код ошибки
      text: 'текстовое представление ответа'
  }</code>
  </pre>
</cd:code-example-decorator>