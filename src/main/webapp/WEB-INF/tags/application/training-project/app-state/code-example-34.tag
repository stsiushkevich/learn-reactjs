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
  const appointmentStatuses = [
    { id: 0, title: 'Завершён' },
    { id: 1, title: 'Ожидается' },
    { id: 2, title: 'Пропущен' },
    { id: 3, title: 'Отменён' },
    { id: 4, title: 'Перенесён' },
    { id: 5, title: 'Активен' }
  ]

  export function getAppointmentStatuses () {
    return appointmentStatuses
  }</code>
  </pre>
</cd:code-example-decorator>