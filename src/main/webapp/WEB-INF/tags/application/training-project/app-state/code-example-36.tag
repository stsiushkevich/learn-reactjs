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
  import * as mock from '../MockData'
  import BaseController from './BaseController'

  class DirectoryController extends BaseController {
      getPath () {
          return '/directory'
      }

      getHandlers () {
          return [
              {
                  path: '/appointment-statuses',
                  handler: (vars, params) => {
                      return mock.getAppointmentStatuses()
                  }
              }
          ]
      }
  }

  export default new DirectoryController ()</code>
  </pre>
</cd:code-example-decorator>