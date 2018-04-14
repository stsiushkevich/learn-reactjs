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
  import {ThemeContext, themes} from './theme-context';
  import ThemedButton from './themed-button';
  
  // Промежуточный компонент, который использует ThemedButton
  function Toolbar(props) {
    return (
      &lt;ThemedButton onClick={props.changeTheme}&gt;
        Change Theme
      &lt;/ThemedButton&gt;
    );
  }
  
  class App extends React.Component {
    constructor(props) {
      super(props);
      this.state = {
        theme: themes.light,
      };
  
      this.toggleTheme = () =&gt; {
        this.setState(state =&gt; ({
          const { light, dark } = themes
          theme: state.theme === dark ? light : dark
        }));
      };
    }
  
    render() {
      // Кнопка ThemedButton внутри ThemeProvider
      // использует тему из состояния, в то время как снаружи
      // использует тему по умолчанию: dark
      return (
        &lt;Page&gt;
          &lt;ThemeContext.Provider value={this.state.theme}&gt;
            &lt;Toolbar changeTheme={this.toggleTheme} /&gt;
          &lt;/ThemeContext.Provider&gt;
          &lt;Section&gt;
            &lt;ThemedButton /&gt;
          &lt;/Section&gt;
        &lt;/Page&gt;
      );
    }
  }
  
  ReactDOM.render(&lt;App /&gt;, document.root);</code>
  </pre>
</cd:code-example-decorator>