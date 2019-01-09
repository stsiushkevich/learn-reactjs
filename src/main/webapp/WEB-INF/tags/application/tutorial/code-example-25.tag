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
    constructor(props) {
      super(props);
      this.state = {
        squares: Array(9).fill(null),
        <cd:hl>xIsNext: true</cd:hl>
      };
    }
  
    handleClick(i) {
      <cd:hl>const squares = this.state.squares.slice();</cd:hl>
      <cd:hl>squares[i] = this.state.xIsNext ? 'X' : 'O';</cd:hl>
      <cd:hl>this.setState({</cd:hl>
        <cd:hl>squares: squares,</cd:hl>
        <cd:hl>xIsNext: !this.state.xIsNext,</cd:hl>
      <cd:hl>});</cd:hl>
    }
  
    renderSquare(i) {
      return (
        &lt;Square
            value={this.state.squares[i]}
            onClick={() => this.handleClick(i)}
        />
      );
    }
  
    render() {
      <cd:hl>const status = 'Следующий игрок: ' + (this.state.xIsNext ? 'X' : 'O');</cd:hl>
  
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