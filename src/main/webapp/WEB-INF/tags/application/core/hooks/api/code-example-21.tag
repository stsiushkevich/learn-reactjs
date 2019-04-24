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
  function useFriendStatus(friendID) {
    const [isOnline, setIsOnline] = useState(null);
  
    // ...
  
    <cd:hl>// Показать надпись в DevTools рядом с данным хуком</cd:hl>
    <cd:hl>// например "FriendStatus: Online"</cd:hl>
    <cd:hl>useDebugValue(isOnline ? 'Online' : 'Offline');</cd:hl>
  
    return isOnline;
  }</code>
  </pre>
</cd:code-example-decorator>