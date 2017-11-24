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
  class PersonForm extends React.Component {
    constructor(props) {
      super(props);
      this.state = {sex: 'female', firstName: '', lastname: '', email: '', phone: ''};
      this.onInputChange = this.onInputChange.bind(this);
    }

    onInputChange(event) {
      <cd:hl>const name = event.target.name;</cd:hl>
      <cd:hl>this.setState({[name]: value});</cd:hl>
    }

    render() {
      return (
        &lt;form&gt;
          &lt;label&gt;First Name: &lt;input <cd:hl>name="firstName"</cd:hl>  type="text"
                               value={this.state.firstName} onChange={this.onInputChange}/&gt;&lt;/label&gt;
          &lt;label&gt; Last Name: &lt;input <cd:hl>name="lastName"</cd:hl>  type="text"
                               value={this.state.lastName} onChange={this.onInputChange}/&gt;&lt;/label&gt;
          &lt;label&gt; Email: &lt;input <cd:hl>name="email"</cd:hl>  type="email"
                               value={this.state.email} onChange={this.onInputChange}/&gt;&lt;/label&gt;
          &lt;label&gt; Phone: &lt;input <cd:hl>name="phone"</cd:hl>  type="tel"
                               value={this.state.phone} onChange={this.onInputChange}/&gt;&lt;/label&gt;
          &lt;label&gt; Sex: &lt;select <cd:hl>name="sex"</cd:hl>  value={this.state.sex} onChange={this.onInputChange}&gt;
              &lt;option value="male"&gt;Male&lt;/option&gt;
              &lt;option value="female"&gt;Female&lt;/option&gt;
            &lt;/select&gt;
          &lt;/label&gt;
        &lt;/form&gt;
      );
    }
  }

  ReactDOM.render(&lt;PersonForm /&gt;,  document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>