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
  class FileInput extends React.Component {
    constructor(props) {
      super(props);
      this.handleSubmit = this.handleSubmit.bind(this);
    }
    handleSubmit(event) {
      event.preventDefault();
      alert(`Selected file - \${this.fileInput.files[0].name}`);
    }
  
    render() {
      return (
        &lt;form onSubmit={this.handleSubmit}&gt;
          &lt;label&gt;
            Upload file:
            &lt;input
                    type="file"
                    ref={input =&gt; {
                this.fileInput = input;
              }}
            /&gt;
          &lt;/label&gt;
          &lt;br /&gt;
          &lt;button type="submit"&gt;Submit&lt;/button&gt;
        &lt;/form&gt;
      );
    }
  }
  
  ReactDOM.render(
    &lt;FileInput /&gt;,
    document.getElementById('root')
  );</code>
  </pre>
</cd:code-example-decorator>