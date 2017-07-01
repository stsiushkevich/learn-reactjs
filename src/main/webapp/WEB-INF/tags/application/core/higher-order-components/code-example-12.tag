<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  // connect это функция, которая возвращает другую функцию
  const hoc = connect(notificationListSelector, notificationListActions);
  // Возвращаемая функция - старший компонент, который возвращает компонент,
  // который является подключаемым к хранилищу данных Redux
  const ConnectedToReduxStoreNotificationList = hoc(NotificationList);</code>
  </pre>
</cd:code-example>