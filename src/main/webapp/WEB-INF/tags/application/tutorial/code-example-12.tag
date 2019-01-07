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
      <cd:hl>constructor(props) {</cd:hl>
        <cd:hl>super(props);</cd:hl>
        <cd:hl>this.state = {</cd:hl>
          <cd:hl>squares: Array(9).fill(null)</cd:hl>
        <cd:hl>};</cd:hl>
      <cd:hl>}</cd:hl>
    
      renderSquare(i) {
        return &lt;Square value={i} />;
      }
    
      render() {
        const status = 'Next player: X';
    
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