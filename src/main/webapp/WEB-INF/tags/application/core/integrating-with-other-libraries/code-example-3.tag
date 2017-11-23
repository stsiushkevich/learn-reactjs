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
  class App extends React.Component {
    constructor(props){
      super(props);
      this.showDialog = this.showDialog.bind(this);
      this.state = {isDialogShowed: false};
    }

    showDialog(){
  this.setState({isDialogShowed: true});
    }

    render(){
      return (
      &lt;div&gt;
          &lt;button onClick={this.showDialog}&gt;Показать диалог&lt;/button&gt;
          <cd:hl>{this.state.isDialogShowed ? &lt;Dialog title="Диалог"&gt;Привет, Мир!&lt;/Dialog&gt; : null}</cd:hl>
      &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>