<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  class Logger extends React.Component {
    //Такой синтаксис гарантирует, что "this" привязан к onLog
    //Внимание! это экспериментальный синтаксис!
    <cd:hl>onLog = () =&gt; {</cd:hl>
      <cd:hl>console.log('объект:', this);</cd:hl>
    <cd:hl>}</cd:hl>

    render() {
      return (&lt;button onClick={this.onLog}&gt;Лог&lt;/button&gt;);
    }
  }</code>
    </pre>
</cd:code-example-decorator>