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
  // Вместо этого...
  const hoc = connect(notificationSelector)(addScrollSupport(OriginalComponent))

  // ... вы можете использовать утилиту композиции функций
  // compose(x, y, z) то же самое, что (...args) => x(y(z(...args)))
  const hoc = compose(
    // Оба аргумента - старшие компоненты
    connect(notificationSelector),
    addScrollSupport
  )
  const ResultComponent = hoc(OriginalComponent)</code>
  </pre>
</cd:code-example-decorator>