<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  class NotificationList extends React.Component {
    constructor() {
      super();
      this.onChange = this.onChange.bind(this);
      this.state = {
        // "NotificationDataStore"  - некоторый глобальный источник данных
        notifications: NotificationDataStore.getNotifications()
      };
    }

    componentDidMount() {
      // Подписаться на изменения, добавив слушателя события
      NotificationDataStore.addChangeListener(this.onChange);
    }

    componentWillUnmount() {
      // Удалить слушателя
      NotificationDataStore.removeChangeListener(this.onChange);
    }

    onChange() {
      // Обновление состояния компонента каждый раз, когда источник данных изменился
      this.setState({
        notifications: NotificationDataStore.getNotifications()
      });
    }

    render() {
      return (
        &lt;div&gt;
          {this.state.notifications.map((notification) =&gt; (
            &lt;Notification key={notification.id} notification={notification} /&gt;
          ))}
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>