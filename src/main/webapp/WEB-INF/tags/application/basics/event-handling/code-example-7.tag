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
    onLog () {
      console.log('объект:', this);
    }

    render() {
      //Такой синтаксис гарантирует, что "this" привязан к onLog
      return (&lt;button <cd:hl>onClick={(e) =&gt; this.onLog(e)}</cd:hl>&gt;Лог&lt;/button&gt;);
    }
  }</code>
    </pre>
</cd:code-example-decorator>