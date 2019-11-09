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
  import UrlPattern from 'url-pattern'

  export default class BaseController {
      getPath () { return '' }

      getHandlers () { return [] }

      handle (request) {
          const { url, params } = request
          const handlers = this.getHandlers()

          for (let i = 0; i < handlers.length; i++) {
              const { path, handler } = handlers[i]

              const pattern = new UrlPattern(this.getPath() + path)
              const vars = pattern.match(url)

              if (vars) return handler(vars, params)
          }

          return null;
      }
  }</code>
  </pre>
</cd:code-example-decorator>