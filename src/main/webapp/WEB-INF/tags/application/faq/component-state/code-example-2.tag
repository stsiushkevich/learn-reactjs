<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  incrementCount() {
    this.setState((prevState) => {
      // Важно: считывайте `prevState` вместо `this.state` во время обновления.
      return {count: prevState.count + 1}
    });
  }

  handleSomething() {
    // Предположим `this.state.count` начинается с 0.
    this.incrementCount();
    this.incrementCount();
    this.incrementCount();

    // Если вы сейчас считаете значение `this.state.count`,
    // оно по прежнему будет равно 0.
    // Но когда React переотрисует компонент, оно будет равно 3.
  }</code>
</pre>
</cd:code-example-decorator>
