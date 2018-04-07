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
  // Контекст позволяет нам передавать значение глубоко в дерево компонентов
  // без его явной передачи через каждый компонент.
  // Создайте контекст для текущей темы (значение "light" по умолчанию).
  const ThemeContext = React.createContext('light');

  class App extends React.Component {
    render() {
      // Используйте Provider, чтобы передать текущую тему вглубь дерева.
      // Любой компонент может считать её, вне зависимости от того как глубоко она находится.
      // В данном примере, мы передаем "dark" как текущее значение.
      return (
        &lt;ThemeContext.Provider value="dark"&gt;
          &lt;Toolbar /&gt;
        &lt;/ThemeContext.Provider&gt;
      );
    }
  }

  // Промежуточному компоненту необязательно
  // передавать тему кому-либо далее явно.
  function Toolbar(props) {
    return (
      &lt;div&gt;
        &lt;ThemedButton /&gt;
      &lt;/div&gt;
    );
  }

  function ThemedButton(props) {
    // Используйте Consumer, чтобы считать текущий контекст темы.
    // React will find the closest theme Provider above and use its value.
    // In this example, the current theme is "dark".
    return (
      &lt;ThemeContext.Consumer&gt;
        {theme =&gt; &lt;Button {...props} theme={theme} /&gt;}
      &lt;/ThemeContext.Consumer&gt;
    );
  }</code>
  </pre>
</cd:code-example-decorator>