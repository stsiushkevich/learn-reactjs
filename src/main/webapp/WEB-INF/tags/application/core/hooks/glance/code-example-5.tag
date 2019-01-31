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
  function FriendStatusWithCounter(props) {
    const [count, setCount] = useState(0);
    <cd:hl>useEffect(() => {</cd:hl>
      document.title = `Вы кликнули \${count} раз`;
    });
  
    const [isOnline, setIsOnline] = useState(null);
    <cd:hl>useEffect(() => {</cd:hl>
      ChatAPI.subscribeToFriendStatus(props.friend.id, handleStatusChange);
      return () => {
        ChatAPI.unsubscribeFromFriendStatus(props.friend.id, handleStatusChange);
      };
    });
  
    function handleStatusChange(status) {
      setIsOnline(status.isOnline);
    }
    // ...</code>
  </pre>
</cd:code-example-decorator>