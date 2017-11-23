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
  class NotificationDetails extends React.Component {
    constructor(props) {
      super(props);
      this.onChange = this.onChange.bind(this);
      this.state = {
        notification: NotificationDataStore.getNotification(props.id)
      };
    }

    componentDidMount() {
      NotificationDataStore.addChangeListener(this.onChange);
    }

    componentWillUnmount() {
      NotificationDataStore.removeChangeListener(this.onChange);
    }

    onChange() {
      this.setState({
        notification: NotificationDataStore.getNotification(this.props.id)
      });
    }

    render() {
    const notification = this.state.notification
      return (&lt;div&gt;
      &lt;DetailsItem title="From" text={notification.from}/&gt;
      &lt;DetailsItem title="Date" text={notification.date}/&gt;
      // ...
    &lt;/div&gt;);
    }
  }</code>
  </pre>
</cd:code-example-decorator>