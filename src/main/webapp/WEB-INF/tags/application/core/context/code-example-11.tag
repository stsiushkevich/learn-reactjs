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
  import ThemeTogglerButton from './theme-toggler-button';
  
  class App extends React.Component {
    constructor(props) {
      super(props);
  
      this.toggleTheme = () =&gt; {
        this.setState(state =&gt; ({
          theme:
            state.theme === themes.dark
              ? themes.light
              : themes.dark,
        }));
      };
  
      // Состояние также содержит обновляющую функцию, поэтому она
      // будет передана в поставщик контекста
      this.state = {
        theme: themes.light,
        <cd:hl>toggleTheme: this.toggleTheme</cd:hl>
      };
    }
  
    render() {
      // Состояние целиком передается в поставщик
      return (
        <cd:hl>&lt;ThemeContext.Provider value={this.state}&gt;</cd:hl>
          &lt;Content /&gt;
        &lt;/ThemeContext.Provider&gt;
      );
    }
  }
  
  function Content() {
    return (
      &lt;div&gt;
        &lt;ThemeTogglerButton /&gt;
      &lt;/div&gt;
    );
  }
  
  ReactDOM.render(&lt;App /&gt;, document.root);</code>
  </pre>
</cd:code-example-decorator>