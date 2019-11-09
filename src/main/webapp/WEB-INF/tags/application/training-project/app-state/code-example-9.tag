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
  // список
  this.props.appointment.list.error
  this.props.appointment.list.isFetching
  this.props.appointment.list.dataSource.data
  this.props.appointment.list.dataSource.filter
  this.props.appointment.list.dataSource.pagination
  ...

  // детали
  this.props.appointment.details.error
  this.props.appointment.details.isFetching
  this.props.appointment.details.data
  ...

  // форма
  this.props.appointment.form.error
  this.props.appointment.form.isFetching
  this.props.appointment.form.fields
  ...</code>
  </pre>
</cd:code-example-decorator>