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
  // Данная функция принимает компонент...
  function addSubscription(WrappedComponent, selectData) {
    // ...и возвращает другой компонент...
    return class extends React.Component {
      constructor(props) {
        super(props);
        this.onChange = this.onChange.bind(this);
        this.state = {
          data: fetchData(NotificationDataStore, props)
        };
      }

      componentDidMount() {
        // ...который позаботится о подписке...
        NotificationDataStore.addChangeListener(this.onChange);
      }

      componentWillUnmount() {
        NotificationDataStore.removeChangeListener(this.onChange);
      }

      onChange() {
        this.setState({
          data: fetchData(NotificationDataStore, this.props)
        });
      }

      render() {
        // ... и отрисует обёрнутый компонент с актуальными данными!
        // Обратите внимание, что мы передаем сквозь компонент дополнительные свойства
        return &lt;WrappedComponent data={this.state.data} {...this.props} /&gt;;
      }
    };
  }</code>
  </pre>
</cd:code-example-decorator>