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
    buttonRef = React.createRef();
  
    focus() {
      this.buttonRef.current.focus();
    }
  
    render() {
      const {label, theme, ...rest} = this.props;
      return (
        &lt;button {...rest} className={`\${theme}-button`} ref={this.buttonRef}&gt;
          {label}
        &lt;/button&gt;
      );
    }
  }
  
  const FancyThemedButton = withTheme(FancyButton);

  // Мы можем отрисовать FancyThemedButton как если бы он был FancyButton
  // Он будет автоматически получать текущую "theme",
  // Также HOC будет передавать наши другие свойства.
  &lt;FancyThemedButton label="Click me!" onClick={handleClick} /&gt;;</code>
  </pre>
</cd:code-example-decorator>