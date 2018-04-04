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
	
	class ThemeProvider extends React.Component {
	  state = {theme: 'light'};
	
	  render() {
	    return (
	      &lt;ThemeContext.Provider value={this.state.theme}&gt;
	        {this.props.children}
	      &lt;/ThemeContext.Provider&gt;
	    );
	  }
	}
	
	class ThemedButton extends React.Component {
	  render() {
	    return (
	      &lt;ThemeContext.Consumer&gt;
	        {theme =&gt; &lt;Button theme={theme} /&gt;}
	      &lt;/ThemeContext.Consumer&gt;
	    );
	  }
	}</code>
  </pre>
</cd:code-example-decorator>