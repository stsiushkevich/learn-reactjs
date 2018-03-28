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
  // Если вам действительно по какой-то причине необходим HOC, вы можете без труда
  // создать его, используя обычный компонент со свойством render
  function withMouse(Component) {
    return class extends React.Component {
      render() {
        return (
          &lt;Mouse render={mouse =&gt; (
            &lt;Component {...this.props} mouse={mouse} /&gt;
          )}/&gt;
        );
      }
    }
  }</code>
  </pre>
</cd:code-example-decorator>