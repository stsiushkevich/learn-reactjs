<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
  render() {
      <cd:hl>const winner = calculateWinner(this.state.squares);</cd:hl>
      <cd:hl>let status;</cd:hl>
      <cd:hl>if (winner) {</cd:hl>
        <cd:hl>status = 'Победитель: ' + winner;</cd:hl>
      <cd:hl>} else {</cd:hl>
        <cd:hl>status = 'Следующий игрок: ' + (this.state.xIsNext ? 'X' : 'O');</cd:hl>
      <cd:hl>}</cd:hl>

      return (
        // остальное без изменений
    </code>
</pre>
</cd:code-example-decorator>