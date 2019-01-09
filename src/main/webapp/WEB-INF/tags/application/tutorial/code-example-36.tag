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
    const history = this.state.history;
    const current = history[history.length - 1];
    const winner = calculateWinner(current.squares);

    <cd:hl>const moves = history.map((step, move) => {</cd:hl>
      <cd:hl>const desc = move ?</cd:hl>
        <cd:hl>'Go to move #' + move :</cd:hl>
        <cd:hl>'Go to game start';</cd:hl>
      <cd:hl>return (</cd:hl>
        <cd:hl>&lt;li></cd:hl>
          <cd:hl>&lt;button onClick={() => this.jumpTo(move)}>{desc}&lt;/button></cd:hl>
        <cd:hl>&lt;/li></cd:hl>
      <cd:hl>);</cd:hl>
    <cd:hl>});</cd:hl>

    let status;
    if (winner) {
      status = 'Winner: ' + winner;
    } else {
      status = 'Next player: ' + (this.state.xIsNext ? 'X' : 'O');
    }

    return (
      &lt;div className="game">
        &lt;div className="game-board">
          &lt;Board
                  squares={current.squares}
                  onClick={(i) => this.handleClick(i)}
          />
        &lt;/div>
        &lt;div className="game-info">
          &lt;div>{status}&lt;/div>
          <cd:hl>&lt;ol>{moves}&lt;/ol></cd:hl>
        &lt;/div>
      &lt;/div>
    );
  }
    </code>
</pre>
</cd:code-example-decorator>