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
  function TextField({ inputRef, ...rest }) {
    return &lt;input ref={inputRef} {...rest} /&gt;;
  }

  // Оберните TextField в старший компонент
  const FocusedTextField = addFocus(TextField);

  // Внутри метода render компонента...
  &lt;FocusedTextField
    inputRef={(input) =&gt; {
      // Этот коллбэк передается как обычное свойство
      this.inputElement = input
    }}
  /&gt;

  // Теперь вы можете вызывать необходимые методы
  this.inputElement.focus();</code>
  </pre>
</cd:code-example>