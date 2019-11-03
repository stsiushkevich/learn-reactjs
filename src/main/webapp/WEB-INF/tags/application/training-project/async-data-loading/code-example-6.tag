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
  import * as mock from './MockData'
  import appointmentController from './controllers/AppointmentController'

  const RESPONSE_DELAY = 1000

  const ROUTING = {
     [appointmentController.getPath()]: appointmentController
  }

  class MockServer {
     service (request) {
         return new Promise((resolve) => {
             const { url, params } = request

             setTimeout(() => {
                 for (let path in ROUTING) {
                     if(url.includes(path)) {
                       const controller = ROUTING[path]

                       if (controller) {
                         resolve(
                           controller.handle(request)
                         )
                       }

                       else {
                         reject(
                           new Error('Resource is not found')
                         )
                       }
                     }
                 }
             }, RESPONSE_DELAY)
         })
     }
  }

  export default new MockServer()</code>
  </pre>
</cd:code-example-decorator>