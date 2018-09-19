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
    state = {
      externalData: null,
    };

<cd:hl>   componentDidMount() {
      this._asyncRequest = asyncLoadData().then(
        externalData => {
          this._asyncRequest = null;
          this.setState({externalData});
        }
      );
    }</cd:hl>

    componentWillUnmount() {
      if (this._asyncRequest) {
        this._asyncRequest.cancel();
      }
    }

    render() {
      if (this.state.externalData === null) {
        // Отопражаем лоудер (картинку-гифку) ...
      } else {
        // Отображаем UI, с данными ...
      }
    }
  }</code>
  </pre>
</cd:code-example-decorator>