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
  class CustomTextInput extends React.Component {
    constructor(props) {
      super(props);
  
      <cd:hl>this.textInput = null;</cd:hl>
  
      <cd:hl>this.setTextInputRef = element =&gt; {</cd:hl>
        <cd:hl>this.textInput = element;</cd:hl>
      <cd:hl>};</cd:hl>
  
      <cd:hl>this.focusTextInput = () =&gt; {</cd:hl>
        // Фокусировка на текстовом поле, используя нативный DOM API
        <cd:hl>if (this.textInput) this.textInput.focus();</cd:hl>
      <cd:hl>};</cd:hl>
    }
  
    componentDidMount() {
      // автофокус на input при монтировании
      <cd:hl>this.focusTextInput();</cd:hl>
    }
  
    render() {
      // Используйте коллбэк для атрибута `ref`, чтобы сохранить
      // ссылку на текстовый DOM-элемент input в свойстве экземпляра
      // (например this.textInput)
      return (
        &lt;div&gt;
          &lt;input
              type="text"
              <cd:hl>ref={this.setTextInputRef}</cd:hl>
          /&gt;
          &lt;input
              type="button"
              value="Focus the text input"
              <cd:hl>onClick={this.focusTextInput}</cd:hl>
          /&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>