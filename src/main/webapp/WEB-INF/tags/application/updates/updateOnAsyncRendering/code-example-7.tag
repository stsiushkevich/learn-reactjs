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
    // До
    class ExampleComponent extends React.Component {
<cd:hl>      componentWillMount() {
        this.setState({
          subscribedValue: this.props.dataSource.value,
        });

        // Это небезопасно! Может привести к утечке памяти!
        this.props.dataSource.subscribe(
          this.handleSubscriptionChange
        );
      }

      componentWillUnmount() {
        this.props.dataSource.unsubscribe(
          this.handleSubscriptionChange
        );
      }</cd:hl>

      handleSubscriptionChange = dataSource => {
        this.setState({
          subscribedValue: dataSource.value,
        });
      };
    }</code>
  </pre>
</cd:code-example-decorator>