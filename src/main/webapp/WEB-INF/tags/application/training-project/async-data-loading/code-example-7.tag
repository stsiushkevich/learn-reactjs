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

  <cd:hl>function getSuccessResponse (data, extraBodyProps = {}, extraProps = {}) {</cd:hl>
     let body = { success: true, ...extraBodyProps }

     if (data) {
         body.data = data
     }

     let resp = {
         body,
         ...extraProps,
         statusCode: 200
     }

     // текстовое представление ответа
     resp.text = JSON.stringify(resp)

     return resp
  }

  <cd:hl>function getFailureResponse (code = 'error', message = 'Error', statusCode = 500) {</cd:hl>
     let resp = {
         body: {
             success: false,
             error: {
                 code,
                 message
             }
         },
         statusCode: statusCode
     }

     // текстовое представление ответа
     resp.text = JSON.stringify(resp)

     return resp
  }

  class MockServer {
     service (request) {
         return new Promise(resolve => {
             const { url, params } = request

             setTimeout(() => {
                 for (let path in ROUTING) {
                     if(url.includes(path)) {
                       const controller = ROUTING[path]

                       <cd:hl>if (controller) {</cd:hl>
                         <cd:hl>resolve(</cd:hl>
                           <cd:hl>getSuccessResponse(controller.handle(request))</cd:hl>
                         <cd:hl>)</cd:hl>
                       <cd:hl>}</cd:hl>

                       <cd:hl>else {</cd:hl>
                         <cd:hl>resolve(</cd:hl>
                           <cd:hl>getFailureResponse('resource.not.found', 'Resource is not found')</cd:hl>
                         <cd:hl>)</cd:hl>
                       <cd:hl>}</cd:hl>
                     }
                 }
             }, RESPONSE_DELAY)
         })
     }
  }

  export default new MockServer()</code>
  </pre>
</cd:code-example-decorator>