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
	  function ThemedComponent({forwardedRef, ...rest}) {
	    return (
	      &lt;ThemeContext.Consumer&gt;
	        {theme =&gt; (
	          // Назначаем пользовательское свойство "forwardedRef" как ref
	          &lt;Component
					          {...rest}
					          ref={forwardedRef}
					          theme={theme}
	          /&gt;
	
	        )}
	      &lt;/ThemeContext.Consumer&gt;
	    );
	  }

	  // Обратите внимание на второй параметр "ref", предоставленный React.forwardRef.
	  // Мы можем передать его компоненту ThemedComponent как обычное свойство, например "forwardedRef".
	  // Затем он может быть назначен целевому компоненту.
	  return React.forwardRef((props, ref) =&gt; (
	    &lt;ThemedComponent {...props} forwardedRef={ref} /&gt;
	  ));
	}
	
	const fancyButtonRef = React.createRef();

	// fancyButtonRef теперь будет указывать на FancyButton
	&lt;FancyThemedButton
					label="Click me!"
					onClick={handleClick}
					ref={fancyButtonRef}
	/&gt;;</code>
  </pre>
</cd:code-example-decorator>