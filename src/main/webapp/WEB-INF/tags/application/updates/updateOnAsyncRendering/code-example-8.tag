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
    // После
    class ExampleComponent extends React.Component {
<cd:hl>      state = {
        subscribedValue: this.props.dataSource.value,
      };

      componentDidMount() {
        // Слушателей событий можно безопасно добавлять только после монтирования,
        // Таким образом, они не будут приводить к утечкам, если монтирование будет прервано или из-за ошибок.
        this.props.dataSource.subscribe(
          this.handleSubscriptionChange
        );

        // Внешние значения могут изменяться между отрисовкой и монтированием.
        // В некоторых случаях может быть важно обработать такой случай.
        if (
          this.state.subscribedValue !==
          this.props.dataSource.value
        ) {
          this.setState({
            subscribedValue: this.props.dataSource.value,
          });
        }
      }</cd:hl>

      componentWillUnmount() {
        this.props.dataSource.unsubscribe(
          this.handleSubscriptionChange
        );
      }

      handleSubscriptionChange = dataSource => {
        this.setState({
          subscribedValue: dataSource.value,
        });
      };
    }</code>
  </pre>
</cd:code-example-decorator>