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
  // подключение генераторов действий к компоненту-контейнеру
  function mapDispatchToProps(dispatch) {
     return {
         actions: {
             ...bindActionCreators(appointmentListActions, dispatch),

             <cd:hl>statuses: bindActionCreators(appointmentStatusListActions, dispatch)</cd:hl>
         }
     }
  }</code>
  </pre>
</cd:code-example-decorator>