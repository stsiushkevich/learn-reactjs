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
  componentDidMount() {
    ChatAPI.subscribeToFriendStatus(
      this.props.friend.id,
      this.handleStatusChange
    );
  }

  <cd:hl>componentDidUpdate(prevProps) {</cd:hl>
    <cd:hl>// Отписываемся от предыдущего friend.id</cd:hl>
    <cd:hl>ChatAPI.unsubscribeFromFriendStatus(</cd:hl>
      <cd:hl>prevProps.friend.id,</cd:hl>
      <cd:hl>this.handleStatusChange</cd:hl>
    <cd:hl>);</cd:hl>
    <cd:hl>// Подписываемся на следующий friend.id</cd:hl>
    <cd:hl>ChatAPI.subscribeToFriendStatus(</cd:hl>
      <cd:hl>this.props.friend.id,</cd:hl>
      <cd:hl>this.handleStatusChange</cd:hl>
    <cd:hl>);</cd:hl>
  <cd:hl>}</cd:hl>

  componentWillUnmount() {
    ChatAPI.unsubscribeFromFriendStatus(
      this.props.friend.id,
      this.handleStatusChange
    );
  }</code>
  </pre>
</cd:code-example-decorator>