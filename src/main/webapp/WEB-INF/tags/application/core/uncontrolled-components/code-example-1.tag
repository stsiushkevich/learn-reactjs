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
  class SearchUserForm extends React.Component {
    constructor(props) {
      super(props);
      this.onSubmit = this.onSubmit.bind(this);
    }

    onSubmit(event) {
      alert(`Имя пользователя: \${<cd:hl>this.nameTextField.value</cd:hl>}`);
      event.preventDefault();
    }

    render() {
      return (
        &lt;form onSubmit={this.onSubmit}&gt;
          &lt;label&gt;Имя пользователя:
      &lt;input <cd:hl>ref={(el) =&gt; this.nameTextField = el}</cd:hl> name="name" type="text"/&gt;&lt;/label&gt;
          &lt;input type="submit" value="Submit" /&gt;
        &lt;/form&gt;
      );
    }
  }

  ReactDOM.render(&lt;SearchUserForm /&gt;,  document.getElementById('root'));</code>
  </pre>
</cd:code-example-decorator>