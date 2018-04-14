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
  class Button extends React.Component {
    componentDidMount() {
      // this.props.theme - текущее значение контекста
    }
  
    componentDidUpdate(prevProps, prevState) {
      // prevProps.theme - предыдущее значение контекста
      // this.props.theme - новое значение контекста
    }
  
    render() {
      const {theme, children} = this.props;
      return (
        &lt;button className={theme ? 'dark' : 'light'}&gt;
          {children}
        &lt;/button&gt;
        );
    }
  }
  
  export default props =&gt; (
    &lt;ThemeContext.Consumer&gt;
      {theme =&gt; &lt;Button {...props} theme={theme} /&gt;}
    &lt;/ThemeContext.Consumer&gt;
  );</code>
  </pre>
</cd:code-example-decorator>