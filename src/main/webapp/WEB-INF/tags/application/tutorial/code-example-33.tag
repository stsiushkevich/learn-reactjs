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
  <cd:hl>render() {</cd:hl>
    <cd:hl>return (</cd:hl>
      <cd:hl>&lt;div></cd:hl>
        <cd:hl>&lt;div className="board-row"></cd:hl>
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
    </code>
</pre>
</cd:code-example-decorator>