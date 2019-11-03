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

  class AppointmentController extends BaseController {
      getPath () {
          return '/appointments'
      }

      getHandlers () {
          return [
              {
                  path: '',
                  handler: (vars, params) => {
                      return mock.getAppointments({...vars, ...params})
                  }
              },
              /* {
                  path: '/:appointmentId',
                  handler: (vars, params) => {
                      return mock.getAppointmentDetails({...vars, ...params})
                  }
              },
              {
                  path: '/count',
                  handler: (vars, params) => {
                      return mock.getAppointmentCount({...vars, ...params})
                  }
              }, */
          ]
      }
  }

  export default new AppointmentController()</code>
  </pre>
</cd:code-example-decorator>