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
  
  function ThemedButton(props) {
    return (
      &lt;ThemeContext.Consumer&gt;
        {theme =&gt; (
          &lt;button
            {...props}
            style={{backgroundColor: theme.background}}
          /&gt;
        )}
      &lt;/ThemeContext.Consumer&gt;
    );
  }
  
  export default ThemedButton;</code>
  </pre>
</cd:code-example-decorator>