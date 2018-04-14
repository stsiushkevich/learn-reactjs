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
  class FancyButton extends React.Component {
    focus() {
      // ...
    }
  
    // ...
  }
  
  // Используйте контекст, чтобы передать текущую "theme" в FancyButton.
  // Используйте forwardRef, чтобы с тем же успехом передавать ссылки ref в FancyButton.
  export default React.forwardRef((props, ref) =&gt; (
    &lt;ThemeContext.Consumer&gt;
      {theme =&gt; (
        &lt;FancyButton {...props} theme={theme} ref={ref} /&gt;
      )}
    &lt;/ThemeContext.Consumer&gt;
  ));</code>
  </pre>
</cd:code-example-decorator>