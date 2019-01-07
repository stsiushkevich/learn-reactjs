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
  class Board extends React.Component {
    handleClick(i) {
      const squares = this.state.squares.slice();
      if (calculateWinner(squares) || squares[i]) {
        return;
      }
      squares[i] = this.state.xIsNext ? 'X' : 'O';
      this.setState({
        squares: squares,
        xIsNext: !this.state.xIsNext,
      });
    }
  
    renderSquare(i) {
      return (
        &lt;Square
            <cd:hl>value={this.props.squares[i]}</cd:hl>
            <cd:hl>onClick={() => this.props.onClick(i)}</cd:hl>
        />
      );
    }
  
    render() {
      const winner = calculateWinner(this.state.squares);
      let status;
      if (winner) {
        status = 'Победитель: ' + winner;
      } else {
        status = 'Следующий игрок: ' + (this.state.xIsNext ? 'X' : 'O');
      }
  
      return (
        &lt;div>
          &lt;div className="status">{status}&lt;/div>
          &lt;div className="board-row">
            {this.renderSquare(0)}
            {this.renderSquare(1)}
            {this.renderSquare(2)}
          &lt;/div>
          &lt;div className="board-row">
            {this.renderSquare(3)}
            {this.renderSquare(4)}
            {this.renderSquare(5)}
          &lt;/div>
          &lt;div className="board-row">
            {this.renderSquare(6)}
            {this.renderSquare(7)}
            {this.renderSquare(8)}
          &lt;/div>
        &lt;/div>
      );
    }
  }
    </code>
</pre>
</cd:code-example-decorator>