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
  class LanguageForm extends React.Component {
    constructor(props) {
      super(props);
      this.state = {language: 'JavaScript'};

      this.onSelectChange = this.onSelectChange.bind(this);
      this.onSubmit = this.onSubmit.bind(this);
    }

    <cd:hl>onSelectChange(event) {</cd:hl>
      <cd:hl>this.setState({language: event.target.value});</cd:hl>
    <cd:hl>}</cd:hl>

    onSubmit(event) {
      alert(`Вы выбрали язык: \${this.state.language}`);
      event.preventDefault();
    }

    render() {
      return (
        &lt;form onSubmit={this.onSubmit}&gt;
          &lt;label&gt;
            Выберите язык программирования:
            <cd:hl>&lt;select value={this.state.language} onChange={this.onSelectChange}&gt;</cd:hl>
              &lt;option value="C++"&gt;C++&lt;/option&gt;
              &lt;option value="Java"&gt;Java&lt;/option&gt;
              &lt;option value="C#"&gt;C#&lt;/option&gt;
              &lt;option value="JavaScript"&gt;JavaScript&lt;/option&gt;
              &lt;option value="Scala"&gt;Scala&lt;/option&gt;
            &lt;/select&gt;
          &lt;/label&gt;
          &lt;input type="submit" value="Submit" /&gt;
        &lt;/form&gt;
      );
    }
  }

  ReactDOM.render(&lt;LanguageForm /&gt;,  document.getElementById('root'));</code>
    </pre>
</cd:code-example-decorator>