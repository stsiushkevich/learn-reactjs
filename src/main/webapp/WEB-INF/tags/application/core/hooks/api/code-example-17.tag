<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  function TextInputWithFocusButton() {
    const inputEl = useRef(null);
    
    const onButtonClick = () => {
      // `current` указывает на монтированный элемент текстового поля ввода
      inputEl.current.focus();
    };
    
    return (
      &lt;>
        &lt;input ref={inputEl} type="text" />
        &lt;button onClick={onButtonClick}>Фокус&lt;/button>
      &lt;/>
    );
  }</code>
  </pre>
</cd:code-example-decorator>