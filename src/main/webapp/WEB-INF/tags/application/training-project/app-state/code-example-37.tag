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
  <cd:hl>import directoryController from './controllers/DirectoryController'</cd:hl>
  import appointmentController from './controllers/AppointmentController'

  const ROUTING = {
     <cd:hl>[directoryController.getPath()]: directoryController,</cd:hl>
     [appointmentController.getPath()]: appointmentController
  }</code>
  </pre>
</cd:code-example-decorator>