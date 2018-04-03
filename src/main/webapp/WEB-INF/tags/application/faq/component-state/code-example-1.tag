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
    // Обратите внимание: он будет вести себя не так, как ожидается
    this.setState({count: this.state.count + 1});
  }

  handleSomething() {
    // Пусть `this.state.count` начинается с 0.
    this.incrementCount();
    this.incrementCount();
    this.incrementCount();
    // Когда React перересует компонент, `this.state.count` будет равен 1, но вы ожидали 3.

    // Это произошло потому, что функция `incrementCount()` читает значение из `this.state.count`,
    // но React не обновляет `this.state.count` до тех пор, пока компонент не будет перерисован.
    // Таким образом `incrementCount()` читает `this.state.count` как 0 каждый раз и устанавливает его в 1.

    // Исправление этой проблемы будет описано ниже!
  }</code>
</pre>
</cd:code-example-decorator>
