<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  class MyTextField extends React.Component {
    constructor(props) {
      super(props);
      this.onTextFieldFocus = this.onTextFieldFocus.bind(this);
    }

    onTextFieldFocus() {
      <cd:hl>// Явная фокусировка на текстовом поле, используя нативные DOM API</cd:hl>
      <cd:hl>this.textField.focus();</cd:hl>
    }

    render() {
    // Используйте функцию обратного вызова атрибута `ref`, чтобы сохранить
          // ссылку на текстовый input в поле экземпляра компонента
          // (например, this.textInput).
      return (
        &lt;p&gt;
          &lt;input type="text"
            <cd:hl>ref={(input) =&gt; { this.textField = input; }} /&gt;</cd:hl>
          &lt;input type="button" value="Фокус на текстовом поле" onClick={this.onTextFieldFocus}/&gt;
        &lt;/p&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example>