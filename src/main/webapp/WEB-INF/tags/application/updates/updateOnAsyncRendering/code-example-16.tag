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
      state = {
        externalData: null,
      };

      componentDidMount() {
        this._loadAsyncData(this.props.id);
      }

<cd:hl>      componentWillReceiveProps(nextProps) {
        if (nextProps.id !== this.props.id) {
          this.setState({externalData: null});
          this._loadAsyncData(nextProps.id);
        }
      }</cd:hl>

      componentWillUnmount() {
        if (this._asyncRequest) {
          this._asyncRequest.cancel();
        }
      }

      render() {
        if (this.state.externalData === null) {
          // Отображение состояния загрузки...
        } else {
          // Отображения UI с данными...
        }
      }

      _loadAsyncData(id) {
        this._asyncRequest = asyncLoadData(id).then(
          externalData => {
            this._asyncRequest = null;
            this.setState({externalData});
          }
        );
      }
    }</code>
  </pre>
</cd:code-example-decorator>