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
  &lt;Dialog
      text={text}
      title={title}
      icon={Danger}
      isOpen={isOpen}
      // buttons - это массив элементов вида:
      // [{ text: ‘OK’, color: ‘success’, outline: true, className: ‘ErrorDialog-OkBtn’ }, … любые кнопки]
      buttons={buttons}
      onClosed={onClosed}
      className={cn('ErrorDialog', className)}
   /&gt;</code>
  </pre>
</cd:code-example-decorator>