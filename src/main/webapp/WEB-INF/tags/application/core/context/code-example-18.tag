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
  import FancyButton from './fancy-button';
  
  const ref = React.createRef();
  
  // Наша ссылка ref будет указывать на компонент FancyButton,
  // а не на ThemeContext.Consumer, который его оборачивает.
  // Это означает, что мы можем вызывать FancyButton методы как ref.current.focus()
  &lt;FancyButton ref={ref} onClick={handleClick}&gt;
    Click me!
  &lt;/FancyButton&gt;;</code>
  </pre>
</cd:code-example-decorator>