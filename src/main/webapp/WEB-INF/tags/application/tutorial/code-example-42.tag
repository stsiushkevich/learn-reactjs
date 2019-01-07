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
    // данный метод неизменён
  }

  <cd:hl>jumpTo(step) {</cd:hl>
    <cd:hl>this.setState({</cd:hl>
      <cd:hl>stepNumber: step,</cd:hl>
      <cd:hl>xIsNext: (step % 2) === 0,</cd:hl>
    <cd:hl>});</cd:hl>
  <cd:hl>}</cd:hl>

  render() {
    // данный метод неизменён
  }
    </code>
</pre>
</cd:code-example-decorator>