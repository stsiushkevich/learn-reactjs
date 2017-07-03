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
  class MessageBox extends React.Component {
    render() {
      return React.createElement('div', null, this.props.message);
    }
  }

  ReactDOM.render(
    React.createElement(MessageBox, {message: 'Привет, мир!'}, null),
    document.getElementById('root')
  );</code>
  </pre>
</cd:code-example>