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
        const squares = this.state.squares.slice();
        <cd:hl>if (calculateWinner(squares) || squares[i]) {</cd:hl>
          <cd:hl>return;</cd:hl>
        <cd:hl>}</cd:hl>
        squares[i] = this.state.xIsNext ? 'X' : 'O';
        this.setState({
          squares: squares,
          xIsNext: !this.state.xIsNext,
        });
    }
    </code>
</pre>
</cd:code-example-decorator>