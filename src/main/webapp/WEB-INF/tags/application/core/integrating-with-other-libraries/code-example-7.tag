<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  render(){
    const isShowed = this.state.isDialogShowed;
    return &lt;Dialog <cd:hl>isShowed={isShowed}</cd:hl> title="Диалог"&gt;Привет, Мир!&lt;/Dialog&gt;
  }</code>
  </pre>
</cd:code-example-decorator>