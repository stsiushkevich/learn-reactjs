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
  class MessageBox extends React.Component {
    render() {
      return &lt;div&gt;{this.props.message}&lt;/div&gt;;
    }
  }

  ReactDOM.render(
    &lt;MessageBox message="Привет, мир!" /&gt;,
    document.getElementById('root')
  );</code>
  </pre>
</cd:code-example-decorator>