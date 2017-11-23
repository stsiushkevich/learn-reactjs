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
  //...
  componentDidCatch(error, info) {

    /* Пример информации о стеке:
       in ComponentThatThrows (created by App)
       in ErrorBoundary (created by App)
       in div (created by App)
       in App
    */
    logComponentStackToMyService(info.componentStack);
  }
  //...</code>
  </pre>
</cd:code-example-decorator>