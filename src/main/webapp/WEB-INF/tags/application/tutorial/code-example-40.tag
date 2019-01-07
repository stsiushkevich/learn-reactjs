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
     const moves = history.map((step, move) => {
      const desc = move ?
        'Перейти на ход #' + move :
        'Перейти в начало игры';
      return (
        <cd:hl>&lt;li key={move}></cd:hl>
          &lt;button onClick={() => this.jumpTo(move)}>{desc}&lt;/button>
        &lt;/li>
      );
    });
    </code>
</pre>
</cd:code-example-decorator>