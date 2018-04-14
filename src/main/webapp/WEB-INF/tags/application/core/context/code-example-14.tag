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
  
  function ThemedButton(props) {
    return (
      <cd:hl>&lt;ThemeContext.Consumer&gt;</cd:hl>
            <cd:hl>{theme =&gt; &lt;button className={theme} {...props} /&gt;}</cd:hl>
      <cd:hl>&lt;/ThemeContext.Consumer&gt;</cd:hl>
    );
  }</code>
  </pre>
</cd:code-example-decorator>