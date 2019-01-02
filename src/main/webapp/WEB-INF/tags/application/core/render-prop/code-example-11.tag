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
  class MouseTracker extends React.Component {
    renderTheCat(mouse) {
      // Определённый как член класса, `this.renderTheCat` всегда ссылается на
      // ту же самую функцию, когда мы используем ее в render
      return &lt;Cat mouse={mouse} /&gt;;
    }

    render() {
      return (
        &lt;div&gt;
          &lt;h1&gt;Переместите мышь!&lt;/h1&gt;
          &lt;Mouse render={this.renderTheCat} /&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>