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
      // создание ссылки для хранения DOM элемента textInput
      <cd:hl>this.textInput = React.createRef();</cd:hl>
      this.focusTextInput = this.focusTextInput.bind(this);
    }
  
    focusTextInput() {
      // Явная фокусировка на текстовом поле, используя нативный DOM API
      // Обратите внимание: мы осуществляем доступ к
      // свойству current, чтобы получить DOM узел
      <cd:hl>this.textInput.current.focus();</cd:hl>
    }
  
    render() {
      // Мы говорим React, что хотим ассоциировать атрибут ref элемента &lt;input&gt;
      // с `textInput`, который мы создали в конструктооре
      return (
        &lt;div&gt;
          &lt;input
              type="text"
              <cd:hl>ref={this.textInput} /&gt;</cd:hl>
  
          &lt;input
              type="button"
              value="Focus the text input"
              onClick={this.focusTextInput}
          /&gt;
        &lt;/div&gt;
      );
    }
  }</code>
  </pre>
</cd:code-example-decorator>