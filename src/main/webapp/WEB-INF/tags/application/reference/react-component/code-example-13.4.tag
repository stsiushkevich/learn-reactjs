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
      // Обновим состояние, и последующая отрисовка отобразит аварийный UI.
      return { hasError: true };
    }
  
    componentDidCatch(error, info) {
      // Пример "componentStack":
      //   in ComponentThatThrows (created by App)
      //   in ErrorBoundary (created by App)
      //   in div (created by App)
      //   in App
      logComponentStackToMyService(info.componentStack);
    }
  
    render() {
      if (this.state.hasError) {
        // Вы можете отобразить любой аварийный UI
        return &lt;h1&gt;Произошла ошибка.&lt;/h1&gt;;
      }
  
      return this.props.children;
    }
  }</code>
  </pre>
</cd:code-example-decorator>