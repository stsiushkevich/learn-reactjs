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
  function withTheme(Component) {
    return function ThemedComponent(props) {
      return (
        &lt;ThemeContext.Consumer&gt;
          {theme =&gt; &lt;Component {...props} theme={theme} /&gt;}
        &lt;/ThemeContext.Consumer&gt;
      );
    };
  }</code>
  </pre>
</cd:code-example-decorator>