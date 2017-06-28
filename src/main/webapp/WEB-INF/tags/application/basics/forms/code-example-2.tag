<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  class LoginForm extends React.Component {
    constructor(props) {
      super(props);
      <cd:hl>this.state = {login: '', password: ''};</cd:hl>

      this.onLoginChange = this.onLoginChange.bind(this);
      this.onPasswordChange = this.onPasswordChange.bind(this);
      this.onSubmit = this.onSubmit.bind(this);
    }

    onSubmit(){
      alert(`\${this.state.login}, добро пожаловать!`);
      event.preventDefault();
    }

    <cd:hl>onPasswordChange(e){</cd:hl>
      <cd:hl>this.setState({password: e.target.value});</cd:hl>
    <cd:hl>}</cd:hl>

    <cd:hl>onLoginChange(e) {</cd:hl>
      <cd:hl>this.setState({login: e.target.value});</cd:hl>
    <cd:hl>}</cd:hl>

    render() {
      return (
        &lt;form onSubmit={this.onSubmit}&gt;
          &lt;p&gt;&lt;label&gt; Логин: &lt;input type="text" name="login" <cd:hl>value={this.state.login}</cd:hl>
                           <cd:hl>onChange={this.onLoginChange}</cd:hl>/&gt;&lt;/label&gt;&lt;/p&gt;
          &lt;p&gt;&lt;label&gt; Пароль: &lt;input type="password" name="password" <cd:hl>value={this.state.password}</cd:hl>
                            <cd:hl>onChange={this.onPasswordChange}</cd:hl>/&gt;&lt;/label&gt;&lt;/p&gt;
          &lt;p&gt;&lt;input type="submit" value="Submit" /&gt;&lt;/p&gt;
        &lt;/form&gt;
      );
    }
  }

  ReactDOM.render(&lt;LoginForm /&gt;,  document.getElementById('root'));</code>
    </pre>
</cd:code-example>