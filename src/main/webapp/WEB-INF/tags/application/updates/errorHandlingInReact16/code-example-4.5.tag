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
  class ErrorCapturer extends React.Component {
    constructor(props) {
      super(props);
      this.state = { error: null };
    }
    
    onClick = () => {
      try {
        // Выполните что-то, что выбросит ошибку
      } catch (error) {
        this.setState({ error });
      }
    }
  
    render() {
      if (this.state.error) {
        return &lt;h1&gt;Ошибка перехвачена!.&lt;/h1&gt;
      }
      return &lt;div onClick={this.onClick}&gt;Нажать&lt;/div&gt;
    }
  }</code>
  </pre>
</cd:code-example>