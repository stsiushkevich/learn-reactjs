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
  class HelloWorld extends React.Component {
    render() {
      return (&lt;p&gt;Привет, {this.props.name}!&lt;/p&gt;);
    }
  }

  // Определяет значения свойств по умолчанию
  HelloWorld.defaultProps = {
    name: 'Вася'
  };

  // Отрисует "Привет, Вася!":
  ReactDOM.render(&lt;HelloWorld /&gt;, document.getElementById('example'));</code>
  </pre>
</cd:code-example-decorator>