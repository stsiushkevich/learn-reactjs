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
  import mockServer from '../lib/mock/MockServer'
  import ServerError from '../lib/errors/ServerError'

  export default class BaseService {
   request(opts) {
     return mockServer.service({
       method: 'GET',
       url: null,
       body: null,
       params: null,
       ...opts
     })
   }
  }</code>
  </pre>
</cd:code-example-decorator>