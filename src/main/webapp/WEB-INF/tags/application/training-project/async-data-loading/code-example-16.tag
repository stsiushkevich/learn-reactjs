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
  export default class BaseError extends Error {
     constructor ({code, message, status}) {
         super()

         this.code = code
         this.message = message
         this.status = status
     }
  }

  export default class WebError extends BaseError {}

  export default class ServerError extends WebError {}</code>
  </pre>
</cd:code-example-decorator>