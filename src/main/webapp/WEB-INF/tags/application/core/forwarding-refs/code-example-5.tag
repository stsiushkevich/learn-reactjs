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
  import FancyButton from './FancyButton';
  
  <cd:hl>const ref = React.createRef();</cd:hl>

  // Компонент FancyButton, который мы импортировали, является
  // старшим компонентом LogProps. Даже если отрисованный результат
  // будет прежним, наша ссылка ref будет указывать на LogProps,
  // вместо вложенного компонента FancyButton! Это означает, что мы не
  // можем вызвать, например ref.current.focus()
  &lt;FancyButton
          label="Click Me"
          handleClick={handleClick}
          <cd:hl>ref={ref}</cd:hl>
  /&gt;;</code>
  </pre>
</cd:code-example-decorator>