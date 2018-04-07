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
  export const themes = {
    light: {
      foreground: '#ffffff',
      background: '#222222',
    },
    dark: {
      foreground: '#000000',
      background: '#eeeeee',
    },
  };

  export const ThemeContext = React.createContext(
    themes.dark // значеине по умолчанию
  );</code>
  </pre>
</cd:code-example-decorator>