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
  render() {
    const isSent = this.state.isSent;
    return (
      &lt;p&gt;
        <cd:hl>&lt;h3&gt;Ваше сообщение {isSent ? 'успешно' : 'не'} отправлено&lt;/h3&gt;</cd:hl>
      &lt;/p&gt;
    );
  }</code>
    </pre>
</cd:code-example-decorator>