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
    <cd:hl>const [isOnline, setIsOnline] = useState(null);</cd:hl>

    <cd:hl>function handleStatusChange(status) {</cd:hl>
      <cd:hl>setIsOnline(status.isOnline);</cd:hl>
    <cd:hl>}</cd:hl>

    <cd:hl>useEffect(() => {</cd:hl>
      <cd:hl>ChatAPI.subscribeToFriendStatus(props.friend.id, handleStatusChange);</cd:hl>
      <cd:hl>return () => {</cd:hl>
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