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
  class Game extends React.Component {
    <cd:hl>constructor(props) {</cd:hl>
      <cd:hl>super(props);</cd:hl>
      <cd:hl>this.state = {</cd:hl>
        <cd:hl>history: [{</cd:hl>
          <cd:hl>squares: Array(9).fill(null),</cd:hl>
        <cd:hl>}],</cd:hl>
        <cd:hl>xIsNext: true</cd:hl>
      <cd:hl>};</cd:hl>
    <cd:hl>}</cd:hl>
  
    render() {
      return (
        &lt;div className="game">
          &lt;div className="game-board">
            &lt;Board />
          &lt;/div>
          &lt;div className="game-info">
            &lt;div>{/* status */}&lt;/div>
            &lt;ol>{/* TODO */}&lt;/ol>
          &lt;/div>
        &lt;/div>
      );
    }
  }
    </code>
</pre>
</cd:code-example-decorator>