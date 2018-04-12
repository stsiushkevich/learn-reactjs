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
  const ThemeContext = React.createContext('light');
  
  // Эта функция принимает компонент...
  export function withTheme(Component) {
    // ... возвращает другой компонент...
    return function ThemedComponent(props) {
      // ... и отрисовывает обернутый компонент с темой из контекста!
      // Обратите внимание, что мы с таким же успехом можем передавать
      // любое дополнительное свойство
      return (
        &lt;ThemeContext.Consumer&gt;
          {theme =&gt; &lt;Component {...props} theme={theme} /&gt;}
        &lt;/ThemeContext.Consumer&gt;
      );
    };
  }</code>
  </pre>
</cd:code-example-decorator>