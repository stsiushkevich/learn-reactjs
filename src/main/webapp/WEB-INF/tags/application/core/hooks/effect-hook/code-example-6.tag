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
  import React, { useState, useEffect } from 'react';

  function FriendStatus(props) {
    const [isOnline, setIsOnline] = useState(null);

    function handleStatusChange(status) {
      setIsOnline(status.isOnline);
    }

    <cd:hl>useEffect(() => {</cd:hl>
      <cd:hl>// Код подписки</cd:hl>
      <cd:hl>ChatAPI.subscribeToFriendStatus(props.friend.id, handleStatusChange);</cd:hl>
      <cd:hl>// Указываем как производить очистку после этого эффекта:</cd:hl>
      <cd:hl>return function cleanup() {</cd:hl>
        <cd:hl>// Код отписки</cd:hl>
        <cd:hl>ChatAPI.unsubscribeFromFriendStatus(props.friend.id, handleStatusChange);</cd:hl>
      <cd:hl>};</cd:hl>
    <cd:hl>});</cd:hl>

    if (isOnline === null) {
      return 'Загрузка...';
    }
    return isOnline ? 'Онлайн' : 'Офлайн';
  }</code>
  </pre>
</cd:code-example-decorator>