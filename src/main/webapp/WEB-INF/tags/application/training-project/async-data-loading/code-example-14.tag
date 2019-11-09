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
  function onSuccess(response) {
   // используем возможность автопарсинга superagent
   const { body, statusCode: status } = response.body

   // отсечём лишние данные из ответа сервера
   if ((status === 200 || status === 201) && body.success !== false) {
     return body
   }

   throw new ServerError({ status, ...body.error })
  }</code>
  </pre>
</cd:code-example-decorator>