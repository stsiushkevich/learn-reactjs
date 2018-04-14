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
  import {ThemeContext} from './theme-context';
  
  function ThemeTogglerButton() {
    // Компонент ThemeTogglerButton принимает не только тему,
    // но и функцию toggleTheme из контекста
    return (
      &lt;ThemeContext.Consumer&gt;
        {({theme, toggleTheme}) =&gt; (
          &lt;button
              onClick={toggleTheme}
              style={{backgroundColor: theme.background}}&gt;
            Toggle Theme
          &lt;/button&gt;
        )}
      &lt;/ThemeContext.Consumer&gt;
    );
  }
  
  export default ThemeTogglerButton;</code>
  </pre>
</cd:code-example-decorator>