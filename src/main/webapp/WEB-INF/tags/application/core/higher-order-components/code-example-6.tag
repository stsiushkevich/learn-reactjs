<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  function addErrorMessage(TargetComponent) {
    TargetComponent.prototype.showErrorMessage(text) {
      //...
    }
    // Тот факт, что мы возвращаем оригинальный входной
    // компонент - признак того, что он был изменен
    return TargetComponent;
  }

  // Может показывать сообщения об ошибках
  const ComponentWithErrorMesage = addErrorMessage(TargetComponent);</code>
  </pre>
</cd:code-example>