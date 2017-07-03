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
  function MyTextField(props) {
    <cd:hl>// textField должен быть определен здесь, чтобы коллбэк мог на него ссылаться</cd:hl>
    <cd:hl>let textField = null;</cd:hl>

    function onTextFieldFocus() {
      <cd:hl>textField.focus();</cd:hl>
    }

    return (
      &lt;p&gt;
        &lt;input
          type="text"
          <cd:hl>ref={(field) =&gt; { textField = field; }}</cd:hl> /&gt;
        &lt;input type="button"
          value="Фокус на текстовом поле"
          onClick={onTextFieldFocus} /&gt;
      &lt;/p&gt;
    );
  }</code>
  </pre>
</cd:code-example>