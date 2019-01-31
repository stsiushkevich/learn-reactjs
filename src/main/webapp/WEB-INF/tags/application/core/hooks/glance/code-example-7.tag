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
  function FriendStatus(props) {
    <cd:hl>const isOnline = useFriendStatus(props.friend.id);</cd:hl>
  
    if (isOnline === null) {
      return 'Загрузка...';
    }
    return isOnline ? 'Онлайн' : 'Офлайн';
  }</code>
  </pre>
</cd:code-example-decorator>