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
  <cd:hl>const FancyButton = React.forwardRef((props, ref) =&gt; (</cd:hl>
    <cd:hl>&lt;button ref={ref} className="FancyButton"&gt;</cd:hl>
      {props.children}
    &lt;/button&gt;
  ));

  // Теперь вы можете получить ссылку ref напрямую и передать ее DOM кнопке button:
  const myRef = React.createRef();
  &lt;FancyButton ref={myRef}&gt;Click me!&lt;/FancyButton&gt;;</code>
  </pre>
</cd:code-example-decorator>