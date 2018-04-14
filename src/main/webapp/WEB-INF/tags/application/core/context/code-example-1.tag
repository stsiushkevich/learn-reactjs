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
  class App extends React.Component {
    render() {
      return &lt;Toolbar theme="dark" /&gt;;
    }
  }

  function Toolbar(props) {
    // Компонент Toolbar должен принимать дополнитеольное свойство "theme"
    // и передавать его в компонент ThemedButton. Это может стать настоящей головной болью
    // если каждая отдельная кнопка в приложении нуждается в значении свойства theme,
    // потому что оно должно быть передано через все компоненты.
    return (
      &lt;div&gt;
        &lt;ThemedButton theme={props.theme} /&gt;
      &lt;/div&gt;
    );
  }

  function ThemedButton(props) {
    return &lt;Button theme={props.theme} /&gt;;
  }</code>
  </pre>
</cd:code-example-decorator>