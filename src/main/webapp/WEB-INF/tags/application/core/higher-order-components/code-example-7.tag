<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  function addErrorMessage(TargetComponent) {
    return class extends React.Component {
      showErrorMessage(text) {
        this.setState({errorMessage: {isShowed: true, text: text});
      }
      render() {
        // Обертывает исходный компонент в контейнер без изменения - правильно!
        return &lt;TargetComponent {...this.props} /&gt;;
      }
    }
  }</code>
  </pre>
</cd:code-example>