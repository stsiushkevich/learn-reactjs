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
  const FancyButton = React.forwardRef((props, ref) =&gt; (
    &lt;button ref={ref} className="FancyButton"&gt;
      {props.children}
    &lt;/button&gt;
  ));
  
  // You can now get a ref directly to the DOM button:
  // Сейчас вы можете получить ref напрямую в DOM button:
  const ref = React.createRef();
  &lt;FancyButton ref={ref}&gt;Click me!&lt;/FancyButton&gt;;</code>
  </pre>
</cd:code-example-decorator>