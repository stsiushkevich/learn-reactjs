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
    <cd:hl>const history = this.state.history;</cd:hl>
    <cd:hl>const current = history[history.length - 1];</cd:hl>
    <cd:hl>const winner = calculateWinner(current.squares);</cd:hl>

    <cd:hl>let status;</cd:hl>
    <cd:hl>if (winner) {</cd:hl>
      <cd:hl>status = 'Победитель: ' + winner;</cd:hl>
    <cd:hl>} else {</cd:hl>
      <cd:hl>status = 'Следующий игрок: ' + (this.state.xIsNext ? 'X' : 'O');</cd:hl>
    <cd:hl>}</cd:hl>

    return (
      &lt;div className="game">
        &lt;div className="game-board">
          <cd:hl>&lt;Board</cd:hl>
              <cd:hl>squares={current.squares}</cd:hl>
              <cd:hl>onClick={(i) => this.handleClick(i)}</cd:hl>
          <cd:hl>/></cd:hl>

        &lt;/div>
        &lt;div className="game-info">
          <cd:hl>&lt;div>{status}&lt;/div></cd:hl>
          &lt;ol>{/* TODO */}&lt;/ol>
        &lt;/div>
      &lt;/div>
    );
  }
    </code>
</pre>
</cd:code-example-decorator>