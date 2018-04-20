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
  function CustomTextInput(props) {
    // textInput должен быть объявлен здесь, чтобы ref мог ссылаться на него
    <cd:hl>let textInput = React.createRef();</cd:hl>
  
    function handleClick() {
      <cd:hl>textInput.current.focus();</cd:hl>
    }
  
    return (
      &lt;div&gt;
        &lt;input
            type="text"
            <cd:hl>ref={textInput} /&gt;</cd:hl>
  
        &lt;input
            type="button"
            value="Focus the text input"
            onClick={handleClick}
        /&gt;
      &lt;/div&gt;
    );
  }</code>
  </pre>
</cd:code-example-decorator>