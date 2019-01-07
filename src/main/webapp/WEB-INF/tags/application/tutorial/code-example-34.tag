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
  handleClick(i) {
    <cd:hl>const history = this.state.history;</cd:hl>
    <cd:hl>const current = history[history.length - 1];</cd:hl>
    <cd:hl>const squares = current.squares.slice();</cd:hl>
    if (calculateWinner(squares) || squares[i]) {
      return;
    }
    squares[i] = this.state.xIsNext ? 'X' : 'O';
    this.setState({
      <cd:hl>history: history.concat([{</cd:hl>
        <cd:hl>squares: squares,</cd:hl>
      <cd:hl>}]),</cd:hl>
      xIsNext: !this.state.xIsNext,
    });
  }
    </code>
</pre>
</cd:code-example-decorator>