<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  useState('Вася')           // 1. Считываем переменную состояния name (аргумент будет игнорирован)
  // useEffect(persistForm)  // 🔴 Вызов хука пропущен!
  useState('Пупкин')         // 🔴 2. (был 3-м). Неудача, при попытке считать переменную состояния surname
  useEffect(updateTitle)     // 🔴 3. (был 4-м). Неудача, при попытке заменить эффект</code>
  </pre>
</cd:code-example-decorator>