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
  // Контекст темы. Светлая тема по умолчанию.
  const ThemeContext = React.createContext('light');
  
  // Контекст Signed-in  пользователя
  const UserContext = React.createContext();
  
  class App extends React.Component {
    render() {
      const {signedInUser, theme} = this.props;
  
      // Компонент приложения, который предоставляет начальные значения контекста
      return (
        <cd:hl>&lt;ThemeContext.Provider value={theme}&gt;</cd:hl>
          <cd:hl>&lt;UserContext.Provider value={signedInUser}&gt;</cd:hl>
            &lt;Layout /&gt;
          <cd:hl>&lt;/UserContext.Provider&gt;</cd:hl>
        <cd:hl>&lt;/ThemeContext.Provider&gt;</cd:hl>
      );
    }
  }
  
  function Layout() {
    return (
      &lt;div&gt;
        &lt;Sidebar /&gt;
        &lt;Content /&gt;
      &lt;/div&gt;
    );
  }
  
  // Компонент может потреблять множество контекстов
  function Content() {
    return (
      <cd:hl>&lt;ThemeContext.Consumer&gt;</cd:hl>
        <cd:hl>{theme =&gt; (</cd:hl>
          <cd:hl>&lt;UserContext.Consumer&gt;</cd:hl>
            <cd:hl>{user =&gt; (</cd:hl>
              <cd:hl>&lt;ProfilePage user={user} theme={theme} /&gt;</cd:hl>
            <cd:hl>)}</cd:hl>
          <cd:hl>&lt;/UserContext.Consumer&gt;</cd:hl>
        <cd:hl>)}</cd:hl>
      <cd:hl>&lt;/ThemeContext.Consumer&gt;</cd:hl>
    );
  }</code>
  </pre>
</cd:code-example-decorator>