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
  import BaseService from './BaseService'

  export class AppointmentService extends BaseService {
     find ({ filter }) {
         return super.request({
             url: '/appointments',
             params: { ...filter }
         })
     }

  /*
     findById (appointmentId) {
         return super.request({
             url: `/appointments/\${appointmentId}`
         })
     }

     count () {
         return super.request({
             url: '/appointments/count'
         })
     }
  */
  }

  export default new AppointmentService()</code>
  </pre>
</cd:code-example-decorator>