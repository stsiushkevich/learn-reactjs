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
  class MyClass extends React.Component {
    static contextType = MyContext;

    componentDidMount() {
      let value = this.context;
      /* выполните сторонний эффект при монтировании, используя значение MyContext */
    }

    componentDidUpdate() {
      let value = this.context;
      /* ... */
    }

    componentWillUnmount() {
      let value = this.context;
      /* ... */
    }

    render() {
      let value = this.context;
      /* отрисуйте что-либо, основанное на значении MyContext */
    }
  }</code>
  </pre>
</cd:code-example-decorator>