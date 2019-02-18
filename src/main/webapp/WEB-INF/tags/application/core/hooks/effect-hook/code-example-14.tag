<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  // Монтирование со свойствами { friend: { id: 100 } }
  ChatAPI.subscribeToFriendStatus(100, handleStatusChange);     // запускаем первый эффект

  // Обновление со свойствами { friend: { id: 200 } } props
  ChatAPI.unsubscribeFromFriendStatus(100, handleStatusChange); // очищаем предыдущий эффект
  ChatAPI.subscribeToFriendStatus(200, handleStatusChange);     // запускаем следующий эффект

  // Обновление со свойствами { friend: { id: 300 } } props
  ChatAPI.unsubscribeFromFriendStatus(200, handleStatusChange); // очищаем предыдущий эффект
  ChatAPI.subscribeToFriendStatus(300, handleStatusChange);     // запускаем следующий эффект

  // Демонтирование
  ChatAPI.unsubscribeFromFriendStatus(300, handleStatusChange); // очищаем последний эффект</code>
  </pre>
</cd:code-example-decorator>