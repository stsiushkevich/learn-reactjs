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
  // Вместо...
  CustomComponent.staticMethod = staticMethod;
  export default CustomComponent;

  // ...экпортировать метод отдельно...
  export { staticMethod };

  // ...и в потребляющем модуле импортировать оба
  import CustomComponent, { staticMethod } from './CustomComponent.js';</code>
  </pre>
</cd:code-example-decorator>