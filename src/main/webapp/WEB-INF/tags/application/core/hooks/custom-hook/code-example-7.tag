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
  const friendList = [
    { id: 1, name: 'Phoebe' },
    { id: 2, name: 'Rachel' },
    { id: 3, name: 'Ross' },
  ];
  
  function ChatRecipientPicker() {
    <cd:hl>const [recipientID, setRecipientID] = useState(1);</cd:hl>
    <cd:hl>const isRecipientOnline = useFriendStatus(recipientID);</cd:hl>
  
    return (
      &lt;>
        <cd:hl>&lt;Circle color={isRecipientOnline ? 'green' : 'red'} /></cd:hl>
        &lt;select
                value={recipientID}
                onChange={e => setRecipientID(Number(e.target.value))}
        >
          {friendList.map(friend => (
            &lt;option key={friend.id} value={friend.id}>
              {friend.name}
            &lt;/option>
          ))}
        &lt;/select>
      &lt;/>
    );
  }</code>
  </pre>
</cd:code-example-decorator>