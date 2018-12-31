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
  class ErrorBoundary extends React.Component {
    constructor(props) {
      super(props);
      this.state = { hasError: false };
    }

    static getDerivedStateFromError(error) {
      // Обновление состояния, чтобы при последующей отрисовке показать аварийный UI.
      return { hasError: true };
    }

    componentDidCatch(error, info) {
      // Вы можете прологировать ошибку с помощью сервиса отчета об ошибках
      logErrorToMyService(error, info);
    }

    render() {
      if (this.state.hasError) {
        // Вы можете отрисовать любой резервный UI
        return &lt;h1&gt;Возникли ошибки.&lt;/h1&gt;;
      }
      return this.props.children;
    }
  }</code>
  </pre>
</cd:code-example-decorator>