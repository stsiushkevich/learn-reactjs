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
  const transitionStyle = {
    WebkitTransition: 'all', // первая буква должна быть заглавной
    msTransition: 'all' // 'ms' - только этот префикс в нижнем регистре
  };

  function MyComponent() {
    return &lt;div style={transitionStyle}&gt;Это будет работать на разных браузерах&lt;/div&gt;;
  }</code>
  </pre>
</cd:code-example-decorator>