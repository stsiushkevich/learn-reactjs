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
  class FriendStatus extends React.Component {
    constructor(props) {
      super(props);
      this.state = { isOnline: null };
      this.handleStatusChange = this.handleStatusChange.bind(this);
    }

    <cd:hl>componentDidMount() {</cd:hl>
      <cd:hl>// Код подписки</cd:hl>
      <cd:hl>ChatAPI.subscribeToFriendStatus(</cd:hl>
        <cd:hl>this.props.friend.id,</cd:hl>
        <cd:hl>this.handleStatusChange</cd:hl>
      <cd:hl>);</cd:hl>
    <cd:hl>}</cd:hl>

    <cd:hl>componentWillUnmount() {</cd:hl>
      <cd:hl>// Код отписки</cd:hl>
      <cd:hl>ChatAPI.unsubscribeFromFriendStatus(</cd:hl>
        <cd:hl>this.props.friend.id,</cd:hl>
        <cd:hl>this.handleStatusChange</cd:hl>
      <cd:hl>);</cd:hl>
    <cd:hl>}</cd:hl>

    <cd:hl>handleStatusChange(status) {</cd:hl>
      <cd:hl>this.setState({</cd:hl>
        <cd:hl>isOnline: status.isOnline</cd:hl>
      <cd:hl>});</cd:hl>
    <cd:hl>}</cd:hl>

    render() {
      if (this.state.isOnline === null) {
        return 'Загрузка...';
      }
      return this.state.isOnline ? 'Онлайн' : 'Офлайн';
    }
  }</code>
  </pre>
</cd:code-example-decorator>