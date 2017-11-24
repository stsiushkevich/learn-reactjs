<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  class MessageForm extends React.Component {
    constructor(props) {
      super(props);
      <cd:hl>this.state = {email: '', message: 'Текст сообщения'};</cd:hl>

      this.onEmailChange = this.onEmailChange.bind(this);
      this.onMessageChange = this.onMessageChange.bind(this);
      this.onSubmit = this.onSubmit.bind(this);
    }

    onSubmit(){
      alert(`Сообщение успешно отправлено получателю "\${this.state.email}"`);
      event.preventDefault();
    }

    <cd:hl>onMessageChange(e){</cd:hl>
      <cd:hl>this.setState({message: e.target.value});</cd:hl>
    <cd:hl>}</cd:hl>

    <cd:hl>onEmailChange(e) {</cd:hl>
      <cd:hl>this.setState({email: e.target.value});</cd:hl>
    <cd:hl>}</cd:hl>

    render() {
      return (
        &lt;form onSubmit={this.onSubmit}&gt;
          &lt;p&gt;&lt;label&gt; email получателя: &lt;input type="text" name="email" value={this.state.email}
                           onChange={this.onEmailChange}/&gt;&lt;/label&gt;&lt;/p&gt;
          &lt;p&gt;&lt;label&gt;Текст сообщения: <cd:hl>&lt;textarea type="text" name="message" value={this.state.message}
            onChange={this.onMessageChange}/&gt;</cd:hl>&lt;/label&gt;&lt;/p&gt;
          &lt;p&gt;&lt;input type="submit" value="Submit" /&gt;&lt;/p&gt;
        &lt;/form&gt;
      );
    }
  }

  ReactDOM.render(&lt;MessageForm /&gt;,  document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>